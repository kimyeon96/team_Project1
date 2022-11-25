package kopo.poly.service.Impl;

import kopo.poly.dto.AmbRowDTO;
import kopo.poly.service.IAmbService;
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
@Service("AmbService")
public class AmbService implements IAmbService {

    @Override
    public List<AmbRowDTO> getAmb() throws Exception {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/AmblInfoInqireService/getAmblListInfoInqire"); /*URL*/
        urlBuilder.append("?" + URLEncoder.encode("serviceKey", "UTF-8") + "=Ue8dY6yKz%2BndKBNELR5ZWw%2ByA5dK2XzufXqTjOUcJqMsNhR8gyBPZ3G8xyyLbYGRya5OHkJVU3nFI5wSM3aARA%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo", "UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows", "UTF-8") + "=" + URLEncoder.encode("100", "UTF-8")); /*한 페이지 결과 수*/
        urlBuilder.append("&" + URLEncoder.encode("QN", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*기관명*/
        urlBuilder.append("&" + URLEncoder.encode("Q0", "UTF-8") + "=" + URLEncoder.encode("서울특별시", "UTF-8")); /*주소(시도)*/
        urlBuilder.append("&" + URLEncoder.encode("Q1", "UTF-8") + "=" + URLEncoder.encode("", "UTF-8")); /*주소(시군구)*/


        Document documentInfo = null;
        documentInfo = (Document) DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(urlBuilder.toString());
        documentInfo.getDocumentElement().normalize();

        Element root = documentInfo.getDocumentElement();
        NodeList nList = root.getElementsByTagName("items").item(0).getChildNodes();
//        log.info("nList size : " + nList.getLength());


        List<AmbRowDTO> eList = new ArrayList<AmbRowDTO>();
        for (int i = 0; i < nList.getLength(); i++) {
            AmbRowDTO nDTO = new AmbRowDTO();
            Node nNode = nList.item(i);
            Element eElement = (Element) nNode;
            nDTO.setDutyName(tagValue.getTagValue("dutyName",eElement));
            nDTO.setDutyAddr(tagValue.getTagValue("dutyAddr",eElement));
            nDTO.setCarSeq(tagValue.getTagValue("carSeq",eElement));
            nDTO.setOnrTel(tagValue.getTagValue("onrTel",eElement));

            log.info(i + "번째 ================");
            log.info("dutyName : " + nDTO.getDutyName());
            log.info("dutyAddr : " + nDTO.getDutyAddr());
            log.info("carSeq : " + nDTO.getCarSeq());
            log.info("onrTel : " + nDTO.getOnrTel());
            log.info("======================");

            eList.add(nDTO);
        }
        log.info(this.getClass().getName() + ".callAmbApi End!!");
        return eList;

    }


}
