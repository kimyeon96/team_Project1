package kopo.poly.service.Impl;


import kopo.poly.dto.ConDTO;
import kopo.poly.service.IConService;
import kopo.poly.util.tagValue;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import javax.xml.bind.Element;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;


@Slf4j
@Service("ConService")
public class ConService implements IConService {

    @Value("${hospital.api.key}")
    private String apiKey;

/*    @Override
    public ConDTO getCon(ConDTO cDTO) throws Exception {
        return null;
    }*/

    @Override
    public List<ConDTO> getSearchCon(List<String> general2) throws Exception {

        log.info("ConService start!");
        //<자바에서 웹으로 요청하는 방법>
        //1. URL 세팅(요청주소 + 파라미터들 세팅)

        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlMdcncListInfoInqire"); /*URL*/
//↓ 긴 문자열을 더하는 상황이 발생할 경우 StringBuilder 사용. 아래가 긴 문자열을 더해준다. StringBuilder클래스의 객체이기 때문에 문자열을 더할 때 새로운 객체를 생성하는 것이 아니라 기존의 데이터에 더하는 방식을 사용하기 때문. 그 덕에 속도가 빠르고 부하가 적다.

        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=7Zq8vD1J3swTyNa%2F00rDCrxp8pzBRc8hqkooc1KVq%2Fwtt0LlAb%2FyvjwDFUMwcK9jkgcKPI9jTAhG6oiaSV1%2BSA%3D%3D");
/*Service Key*/
/*
        urlBuilder.append("&" + URLEncoder.encode("returnType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); */
/*xml 또는 json*/

        urlBuilder.append("&" + URLEncoder.encode("Q0","UTF-8") + "=" + URLEncoder.encode("seoul", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("Q0","UTF-8") + "=" + URLEncoder.encode("busan", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("Q0","UTF-8") + "=" + URLEncoder.encode("daegu", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("Q0","UTF-8") + "=" + URLEncoder.encode("incheon", "UTF-8"));
/*주소(시도)*/

        urlBuilder.append("&" + URLEncoder.encode("Q1","UTF-8") + "=" + URLEncoder.encode("gangseo", "UTF-8"));
        log.info("click gangseo");
        urlBuilder.append("&" + URLEncoder.encode("Q1","UTF-8") + "=" + URLEncoder.encode("gwanack", "UTF-8"));
        log.info("gwanack");
        urlBuilder.append("&" + URLEncoder.encode("Q1","UTF-8") + "=" + URLEncoder.encode("gumcheon", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("Q1","UTF-8") + "=" + URLEncoder.encode("guro", "UTF-8"));
        urlBuilder.append("&" + URLEncoder.encode("Q1","UTF-8") + "=" + URLEncoder.encode("noone", "UTF-8"));
/*주소(시군구)*/


//URLEncoder.encode : 한글은 URLEncoding 작업을 해줘야 URL에서 정상적으로 전달이 됨

        log.info("getSearchCon START !");

        //2. URL 객체 생성(urlBuilder을 이용해서)
        URL url = new URL(urlBuilder.toString()); // urlBuilder, 더해진 주소에 문자열로 반환한 객체
        // URL클래스: 문자열 spec(%로 시작하는 형식지정 문자열)이 지정하는 자원에 대한 URL 객체 생성, 파라미터로 들어가는 urlBuilder: 사용자가 URL을 선택하거나 만들수 있도록 하는 URL 편집기를 시작한다. 이 클래스는 상속될 수 없다.

        //3. URL 을 이용해서 connection 가져오기
        HttpURLConnection conn = (HttpURLConnection) url.openConnection(); // 위에 선언한 url이란 URL타입 객체(인스턴스)를 다른 클래스의 객체로 바꾸어서 더 다양한 메소드를 사용. 그때 이용되는 메소드 openConnection()
        // - java.net.HttpURLConnection 클래스는 URLConnection을 구현한 클래스 (java.net 클래스에서 제공하는 URL 요청을 위한 클래스)

        //4. request의 요청방식(method)랑 header 설정
        conn.setRequestMethod("GET");//요청방식 설정: 요청 메서드 종류:GET // GET - 웹 서버로부터 리소스를 가져온다.
        conn.setRequestProperty("Content-type", "application/json");

        //conn.getResponseCode() : connection을 이용해서 응답코드(response code) 확인 가능
        System.out.println("Response code: " + conn.getResponseCode());

        //5. 커넥션에서 inputStream 가져옴 -> BufferdReader로 변환
        //응답코드에 따른 처리(conn.getInputStream())
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }

        //6. 5에서 가져온 스트림으로 데이터 한줄씩 읽기(누적시키기)
        //그 rd를 한줄씩 읽어서 line에 누적해서 넣기
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }



/*
        String xml = NetworkUtil.getUrlXML(IConService.apiURL + apiParam);
*/

        //7. 사용한 자원(스트림, 커넥션) 정리 : rd 자원 반납, 웹사이트랑 연결도 끊기
        rd.close();
        conn.disconnect();

        //8. 6에서 누적한 결과 확인
        System.out.println(sb.toString());

        Document documentInfo = null;
        documentInfo = (Document) DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(urlBuilder.toString());
        documentInfo.getDocumentElement().normalize();

        org.w3c.dom.Element root = documentInfo.getDocumentElement();
        NodeList mList = root.getElementsByTagName("items").item(0).getChildNodes();
        ConService.log.info("mList size : " + mList.getLength());

        List<ConDTO> sList = new ArrayList<ConDTO>();
        for (int i=0; i<mList.getLength(); i++) {
            ConDTO sDTO = new ConDTO();
            org.w3c.dom.Node mNode = mList.item(i);
            Element eElement = (Element) mNode;
            sDTO.setHosName(tagValue.getTagValue("HosName", (org.w3c.dom.Element) eElement));
/*            sDTO.setHosTel3(tagValue.getTagValue("hosTel", (org.w3c.dom.Element) eElement));
            sDTO.setEK(tagValue.getTagValue("EK", (org.w3c.dom.Element) eElement));*/

            ConService.log.info(i + "번째 ============================");
            ConService.log.info("HosName : " + sDTO.getHosName());
            ConService.log.info("HosTel3");
            ConService.log.info("EK");
            ConService.log.info("============================");

            sList.add(sDTO);

        }

        ConService.log.info(this.getClass().getName() + ".callEmerSearchAPI start!");
        return sList;
    }
}
