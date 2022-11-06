package kopo.poly.controller;

import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.io.BufferedReader;
import java.io.IOException;


public class ApiExplorerC {
    public static void main(String[] args) throws IOException {
        StringBuilder urlBuilder = new StringBuilder("http://apis.data.go.kr/B552657/HsptlAsembySearchService/getHsptlBassInfoInqire"); /*URL*/

        urlBuilder.append("?" + URLEncoder.encode("serviceKey","UTF-8") + "=7Zq8vD1J3swTyNa%2F00rDCrxp8pzBRc8hqkooc1KVq%2Fwtt0LlAb%2FyvjwDFUMwcK9jkgcKPI9jTAhG6oiaSV1%2BSA%3D%3D"); /*Service Key*/
        urlBuilder.append("&" + URLEncoder.encode("HPID","UTF-8") + "=" + URLEncoder.encode("A0000028", "UTF-8")); /*기관ID*/
        urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지 번호*/
        urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*목록 건수*/

        URL url = new URL(urlBuilder.toString()); //위의 urlBuilder를 하나로 합쳐서 url 이라는 변수에 저장

        HttpURLConnection conn = (HttpURLConnection) url.openConnection();

        conn.setRequestMethod("GET"); //데이터를 받아오는 형식을 정함(GET or POST)

        conn.setRequestProperty("Content-type", "application/json");

        System.out.println("Response code: " + conn.getResponseCode()); //응답 (Response code)를 보여주는 부분

        BufferedReader rd;
        if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
            rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
        } else {
            rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
        }

        StringBuilder sb = new StringBuilder(); //stringBuilder인 sb를 생성
        String line; //문자열 line 생성
        while ((line = rd.readLine()) != null) { //만약 rd로부터 받아온 readLine이 0이 아니면 sb에 line 값을 계속 추가
            sb.append(line);
        }
        rd.close();
        conn.disconnect();
        System.out.println(sb.toString()); // 공공 데이터에서 받은 데이터들을 전시해주는 코드
    }
}
