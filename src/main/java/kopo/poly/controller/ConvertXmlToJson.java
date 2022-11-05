package kopo.poly.controller;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.XML;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Locale;

@Controller
public class ConvertXmlToJson {

    public static void main(String[] args) throws JSONException {

        String xmlStr =
                "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                        "<note>\n" +
                        "<to>Tove</to>\n" +
                        "<from>Jani</from>\n" +
                        "<heading>Reminder</heading>\n" +
                        "<body>Don't forget me this weekend!</body>\n" +
                        "</note>";

        JSONObject json = XML.toJSONObject(xmlStr);
        String jsonStr = json.toString(4);
        System.out.println(jsonStr);
    }
}
