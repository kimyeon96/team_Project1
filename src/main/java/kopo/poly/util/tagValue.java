package kopo.poly.util;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class tagValue {
    public static String getTagValue(String tag, Element eElement) {
        NodeList nList = null;
        Node nValue = null;
        try {
            nList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
            nValue = (Node) nList.item(0);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (nValue == null)
            return null;
        return nValue.getNodeValue();
    }
}