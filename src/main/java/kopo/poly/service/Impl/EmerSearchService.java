package kopo.poly.service.Impl;


import kopo.poly.dto.SearchDTO;
import kopo.poly.service.IEmerSearchService;
import kopo.poly.util.tagValue;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;

import javax.xml.bind.Element;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.soap.Node;
import java.io.BufferedReader;
import java.io.InputStreamReader;

import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Service("EmerSearchService")
public class EmerSearchService implements IEmerSearchService {
    @Override
    public List<SearchDTO> EmerSearch() throws Exception {

        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire");
/*URL*/

        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=7Zq8vD1J3swTyNa%2F00rDCrxp8pzBRc8hqkooc1KVq%2Fwtt0LlAb%2FyvjwDFUMwcK9jkgcKPI9jTAhG6oiaSV1%2BSA%3D%3D");
/*Service Key*/

        urlBuilder.append("&" + URLEncoder.encode("STAGE1","UTF-8") + "=" + URLEncoder.encode("city", "UTF-8"));
/*주소(시도)*/

        urlBuilder.append("&" + URLEncoder.encode("STAGE2","UTF-8") + "=" + URLEncoder.encode("district", "UTF-8"));
/*주소(시군구)*/

        URL url = new URL(urlBuilder.toString());

        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("GET");
        conn.setRequestProperty("Content-type", "application/json");
        System.out.println("Response code: " + conn.getResponseCode());
        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }
        StringBuilder sb = new StringBuilder();
        String line;
        while ((line = rd.readLine()) != null) {
            sb.append(line);
        }

        rd.close();
        conn.disconnect();
        System.out.println(sb.toString());

        Document documentInfo = null;
        documentInfo = (Document) DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(urlBuilder.toString());
        documentInfo.getDocumentElement().normalize();

        org.w3c.dom.Element root = documentInfo.getDocumentElement();
        NodeList mList = root.getElementsByTagName("items").item(0).getChildNodes();
        log.info("mList size : " + mList.getLength());

        List<SearchDTO> sList = new ArrayList<SearchDTO>();
        for (int i=0; i<mList.getLength(); i++) {
            SearchDTO sDTO = new SearchDTO();
            org.w3c.dom.Node mNode = mList.item(i);
            Element eElement = (Element) mNode;
            sDTO.setHosName(tagValue.getTagValue("HosName", (org.w3c.dom.Element) eElement));
            sDTO.setHosTel3(tagValue.getTagValue("hosTel", (org.w3c.dom.Element) eElement));
            sDTO.setEK(tagValue.getTagValue("EK", (org.w3c.dom.Element) eElement));

            log.info(i + "번째 ============================");
            log.info("HosName : " + sDTO.getHosName());
            log.info("HosTel3");
            log.info("EK");
            log.info("============================");

            sList.add(sDTO);

        }
        log.info(this.getClass().getName() + ".callEmerSearchAPI start!");
        return sList;
    }
}
