package kopo.poly.service.impl;

import kopo.poly.service.ITestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.awt.*;
import java.util.ArrayList;
import java.util.Map;

@Service
public class TestService implements ITestService {

    public static String getTagValue(String tag, Element eElement) {

        //결과를 저장할 result 변수 선언
        String result = "";

        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();

        result = nlList.item(0).getTextContent();

        return result;
    }

    // tag값의 정보를 가져오는 함수
    public static String getTagValue(String tag, String childTag, Element eElement) {

        //결과를 저장할 result 변수 선언
        String result = "";

        NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();

        for(int i = 0; i < eElement.getElementsByTagName(childTag).getLength(); i++) {

            //result += nlList.item(i).getFirstChild().getTextContent() + " ";
            result += nlList.item(i).getChildNodes().item(0).getTextContent() + " ";
        }

        return result;
    }

    public static void main(String[] args) {

        // 본인이 받은 api키를 추가
        String key = "";

        try{
            // parsing할 url 지정(API 키 포함해서)
            String url = "http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire?serviceKey"+key+"=Ue8dY6yKz%2BndKBNELR5ZWw%2ByA5dK2XzufXqTjOUcJqMsNhR8gyBPZ3G8xyyLbYGRya5OHkJVU3nFI5wSM3aARA%3D%3D";

            DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
            Document doc = dBuilder.parse(url);

            // 제일 첫번째 태그
            doc.getDocumentElement().normalize();

            // 파싱할 tag
            NodeList nList = doc.getElementsByTagName("items");

            for(int temp = 0; temp < nList.getLength(); temp++){
                Node nNode = nList.item(temp);

                Element eElement = (Element) nNode;

                System.out.println("병원이름 : " + getTagValue("dutyName", eElement));
                System.out.println("응급실 전화번호: " + getTagValue("dutyTel3", eElement));
                System.out.println("가용뱡상 : " + getTagValue("hvec", eElement));

            }

        } catch (Exception e){
            e.printStackTrace();
        }
    }

}
