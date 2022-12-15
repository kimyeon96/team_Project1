package kopo.poly.service.Impl;

import kopo.poly.dto.EmerLocRowDTO;
import kopo.poly.service.IEmerLocService;
import kopo.poly.util.tagValue;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilderFactory;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;


@Slf4j
@Service("EmerLocService")
public class EmerLocService implements IEmerLocService {

    @Override
    public List<EmerLocRowDTO> getLoc() throws Exception {

        //url 호출
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEgytLcinfoInqire"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=Ue8dY6yKz%2BndKBNELR5ZWw%2ByA5dK2XzufXqTjOUcJqMsNhR8gyBPZ3G8xyyLbYGRya5OHkJVU3nFI5wSM3aARA%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("WGS84_LON", "UTF-8") + "=" + URLEncoder.encode("126.842280", "UTF-8")); /*병원경도*/
        urlBuilder.append("&" + URLEncoder.encode("WGS84_LAT", "UTF-8") + "=" + URLEncoder.encode("37.550000", "UTF-8")); /*병원위도*/
        //urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("1000", "UTF-8")); /*목록 건수*/


        Document documentInfo = null;
        documentInfo = (Document) DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(urlBuilder.toString());
        documentInfo.getDocumentElement().normalize();

        Element root = documentInfo.getDocumentElement();
        NodeList nList = root.getElementsByTagName("items").item(0).getChildNodes();
        log.info("nList size : " + nList.getLength());


        List<EmerLocRowDTO> eList = new ArrayList<EmerLocRowDTO>();

        for (int i = 0; i < nList.getLength(); i++) {
            EmerLocRowDTO eDTO = new EmerLocRowDTO();
            Node nNode = nList.item(i);
            Element eElement = (Element) nNode;
            eDTO.setDutyName(tagValue.getTagValue("dutyName", eElement));
            eDTO.setLatitude(tagValue.getTagValue("latitude", eElement));
            eDTO.setLongitude(tagValue.getTagValue("longitude", eElement));

            log.info(i + "번째 ================");
            log.info("dutyName : " + eDTO.getDutyName());
            log.info("lat : " + eDTO.getLatitude());
            log.info("lon : " + eDTO.getLongitude());
            log.info("======================");

            eList.add(eDTO);
        }
        log.info(this.getClass().getName() + ".callLocApi End!!");

        return eList;
    }
//s
}