package kopo.poly.service.Impl;


import kopo.poly.dto.ConDTO;
import kopo.poly.service.IConService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.*;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;



@Slf4j
@Service("ConService")
public class ConService implements IConService {

    @Value("${hospital.api.key}")
    private String apiKey;

    @Override
    public List<ConDTO> getSearchCon(List<String> general, String cityParam, String districtParam, String HptorClnParam, String CODE_MSTParam, String dayParam, String hosnameParam, String pageNoParam, String ordParam, String numOfRowsParam) throws Exception {

        log.info("ConService start!");
        //<자바에서 웹으로 요청하는 방법>
        //1. URL 세팅(요청주소 + 파라미터들 세팅)

        //↓ 긴 문자열을 더하는 상황이 발생할 경우 StringBuilder 사용. 아래가 긴 문자열을 더해준다. StringBuilder클래스의 객체이기 때문에 문자열을 더할 때 새로운 객체를 생성하는 것이 아니라 기존의 데이터에 더하는 방식을 사용하기 때문. 그 덕에 속도가 빠르고 부하가 적다.
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlMdcncListInfoInqire"); /*URL*/

        /*Service Key*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + apiKey);

        /*주소(시도)*/
        urlBuilder.append("&" + URLEncoder.encode("Q0", "UTF-8") + "=" + URLEncoder.encode(cityParam, "UTF-8"));

        /*주소(시군구)*/
        urlBuilder.append("&" + URLEncoder.encode("Q1", "UTF-8") + "=" + URLEncoder.encode(districtParam, "UTF-8"));
        log.info(cityParam);
        log.info(districtParam);

        //URLEncoder.encode : 한글은 URLEncoding 작업을 해줘야 URL에서 정상적으로 전달이 됨
        urlBuilder.append("&" + URLEncoder.encode("QZ", "UTF-8") + "=" + URLEncoder.encode(HptorClnParam, "UTF-8")); //CODE_MST의'H000' 참조(B:병원, C:의원)
        urlBuilder.append("&" + URLEncoder.encode("QD", "UTF-8") + "=" + URLEncoder.encode(CODE_MSTParam, "UTF-8")); //CODE_MST의'D000' 참조(D001~D029)
        urlBuilder.append("&" + URLEncoder.encode("QT", "UTF-8") + "=" + URLEncoder.encode(dayParam, "UTF-8")); //월~일요일(1~7), 공휴일(8)
        urlBuilder.append("&" + URLEncoder.encode("QN", "UTF-8") + "=" + URLEncoder.encode(hosnameParam, "UTF-8")); //기관명
        urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode(pageNoParam, "UTF-8")); //페이지 번호
        urlBuilder.append("&" + URLEncoder.encode("ORD", "UTF-8") + "=" + URLEncoder.encode(ordParam, "UTF-8")); //순서
        /*        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); //목록 건수*/

        log.info("getSearchCon START !");

        //2. URL 객체 생성(urlBuilder을 이용해서)
        URL url = new URL(urlBuilder.toString()); // urlBuilder, 더해진 주소에 문자열로 반환한 객체
        // URL클래스: 문자열 spec(%로 시작하는 형식지정 문자열)이 지정하는 자원에 대한 URL 객체 생성, 파라미터로 들어가는 urlBuilder: 사용자가 URL을 선택하거나 만들수 있도록 하는 URL 편집기를 시작한다. 이 클래스는 상속될 수 없다.

        //3. URL 을 이용해서 connection 가져오기
        HttpURLConnection conn = (HttpURLConnection) url.openConnection(); // 위에 선언한 url이란 URL타입 객체(인스턴스)를 다른 클래스의 객체로 바꾸어서 더 다양한 메소드를 사용. 그때 이용되는 메소드 openConnection()
        // - java.net.HttpURLConnection 클래스는 .
        // URLConnection을 구현한 클래스 (java.net 클래스에서 제공하는 URL 요청을 위한 클래스)

        //4. request의 요청방식(method)랑 header 설정
        conn.setRequestMethod("GET");//요청방식 설정: 요청 메서드 종류:GET // GET - 웹 서버로부터 리소스를 가져온다.
        conn.setRequestProperty("Content-type", "application/json");

        //5. 커넥션에서 inputStream 가져옴 -> BufferdReader로 변환
        //응답코드에 따른 처리(conn.getInputStream())
        if (conn.getResponseCode() < 200 || conn.getResponseCode() >  300) {
            log.error(" Error : " + conn.getResponseMessage());
            return null;
        }

        BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));

        //6. 5에서 가져온 스트림으로 데이터 한줄씩 읽기(누적시키기)
        //그 rd를 한줄씩 읽어서 line에 누적해서 넣기
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }
        log.info("## xml result = " + sb.toString());


        //7. 사용한 자원(스트림, 커넥션) 정리 : rd 자원 반납, 웹사이트랑 연결도 끊기
        rd.close();
        conn.disconnect();

        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        DocumentBuilder builder = factory.newDocumentBuilder();

        //sb 객체의 투스트링 리턴값을 참조할 필요없이 StringReader로 생성, 그걸 초기화, 그 결과(리턴)값을 또 InputSource로 초기화 생성 한걸 파싱
        //빌더를 통해 sb 문자열을 (함수 리턴값을) 파싱해 Document 객체로 가져온다.
        Document document = builder.parse(new InputSource(new StringReader(sb.toString())));
        //XML 문자열 덩어리 중 <dutyAddr> 태그의 내용을 가져온다.
        NodeList nodelist = document.getElementsByTagName("dutyName");
        // 가져온 태그 목록을 NodeList 객체에 담았는데 *하나의 XML 태그가 하나의 Node 객체*에 매핑되기 때문입니다.
        NodeList addr = document.getElementsByTagName("dutyAddr");
        NodeList divNam = document.getElementsByTagName("dutyDivNam");
        NodeList div = document.getElementsByTagName("dutyDiv");
        NodeList tel = document.getElementsByTagName("dutyTel1");
        NodeList mapimg = document.getElementsByTagName("dutyMapimg");
        NodeList emcls = document.getElementsByTagName("dutyEmcls");
        NodeList emclsName = document.getElementsByTagName("dutyEmclsName");
        NodeList hpid = document.getElementsByTagName("hpid");

        List<ConDTO> results = new ArrayList<>();
        for (int i = 0; i < nodelist.getLength(); i++) {
            ConDTO result = new ConDTO();
            result.setHosnameParam(nodelist.item(i).getChildNodes().item(0).getNodeValue());
            result.setCityParam(addr.item(i).getChildNodes().item(0).getNodeValue());
            result.setHptorClnParam(divNam.item(i).getChildNodes().item(0).getNodeValue());
            result.setTelParam(tel.item(i).getChildNodes().item(0).getNodeValue());
            result.setEmclsNameParam(emclsName.item(i).getChildNodes().item(0).getNodeValue());
            result.setHpidParam(hpid.item(i).getChildNodes().item(0).getNodeValue());
            results.add(result);
            log.info(String.format("No. #%d %s %s", i, result.getHosnameParam(), result.getCityParam()));
        }

        for (int i = 0; i < addr.getLength(); i++) {
            ConDTO result = new ConDTO();
            results.add(result);
            log.info(String.format("No. #%d", i) + result.toString());
        }

        return results;
    }
}
