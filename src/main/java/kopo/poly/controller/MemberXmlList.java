package kopo.poly.controller;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlElementWrapper;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlRootElement;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Data
@JacksonXmlRootElement(localName = "xmemberlist")
public class MemberXmlList {

    @JacksonXmlProperty(localName = "xmember")
    @JacksonXmlElementWrapper(useWrapping = false)
    List<MemberXml> members = new ArrayList<>();

}
