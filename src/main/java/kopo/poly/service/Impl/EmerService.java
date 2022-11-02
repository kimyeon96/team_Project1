package kopo.poly.service.impl;

import com.fasterxml.jackson.databind.ObjectMapper;
import kopo.poly.dto.EmerDTO;
import kopo.poly.dto.EmerRowDTO;
import kopo.poly.service.IEmerService;
import kopo.poly.util.CmmUtil;
import kopo.poly.util.tagValue;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;


import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.*;


@Slf4j
@Service("EmerService")
public class EmerService implements IEmerService {
    @Override
    public List<EmerRowDTO> getEmer() throws Exception {

        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=Ue8dY6yKz%2BndKBNELR5ZWw%2ByA5dK2XzufXqTjOUcJqMsNhR8gyBPZ3G8xyyLbYGRya5OHkJVU3nFI5wSM3aARA%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("STAGE1", "UTF-8") + "=" + URLEncoder.encode("서울특별시", "UTF-8")); /*주소(시도)*/
//        urlBuilder.append("&" + URLEncoder.encode("STAGE2", "UTF-8") + "=" + URLEncoder.encode("강남구", "UTF-8")); /*주소(시군구)*/
//        urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*목록 건수*/

        Document documentInfo = null;
        documentInfo = (Document) DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(urlBuilder.toString());
        documentInfo.getDocumentElement().normalize();

        Element root = documentInfo.getDocumentElement();
        NodeList nList = root.getElementsByTagName("items").item(0).getChildNodes();
        log.info("nList size : " + nList.getLength());


        List<EmerRowDTO> eList = new ArrayList<EmerRowDTO>();
        for(int i=0; i<nList.getLength(); i++) {
            EmerRowDTO eDTO = new EmerRowDTO();
            Node nNode = nList.item(i);
            Element eElement = (Element) nNode;
            eDTO.setDutyName(tagValue.getTagValue("dutyName", eElement));
            eDTO.setDutyTel3(tagValue.getTagValue("dutyTel3", eElement));
            eDTO.setHvec(tagValue.getTagValue("hvec", eElement));

            log.info(i + "번째 ======================");
            log.info("dutyName : " + eDTO.getDutyName());
            log.info("dutyTel3 : " + eDTO.getDutyTel3());
            log.info("dutyHvec : " + eDTO.getHvec());
            log.info("======================");

            eList.add(eDTO);
        }
        log.info(this.getClass().getName() + ".callEmerApi End!!");
        return eList;
    }
}