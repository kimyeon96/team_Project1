package kopo.poly.service.Impl;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class News {
    public static void main(String[] args) throws Exception {

        int page = 5;

        for(int j =1; j < page; j++) {
            String url = "https://news.naver.com/main/list.naver?mode=LS2D&mid=shm&sid1=102&sid2=255";
            Document doc = Jsoup.connect(url).get();
            Elements elements = doc.getElementsByAttributeValue("class" , "list_body newsflash_body");

            Element element = elements.get(0);
            Elements photoElements = element.getElementsByAttributeValue("class","photo");

            for(int i=0; i<photoElements.size(); i++) {
                Element articleElement = photoElements.get(i);
                Elements aElements = articleElement.select("a");
                Element aElement  = aElements.get(0);

                String articleUrl = aElement.attr("href"); //  기사 링크

                Element imgElement = aElement.select("img").get(0);
                String imgUrl = imgElement.attr("src"); // 사진 링크
                String title = imgElement.attr("alt"); // 기사 제목

                Document subDoc = Jsoup.connect(articleUrl).get();
                Element contentElement = subDoc.getElementById("articleBodyContents");
                String content = contentElement.text(); // 기사 내용

                System.out.println(title);
                System.out.println(content);
                System.out.println();
            }
            System.out.println(j + "page 크롤링 종료 ");


        }

    }
}