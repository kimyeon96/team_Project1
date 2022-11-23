package kopo.poly.controller;

import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlProperty;
import com.fasterxml.jackson.dataformat.xml.annotation.JacksonXmlRootElement;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@JacksonXmlRootElement(localName = "xmember")
public class MemberXml {
    @JacksonXmlProperty(isAttribute = true) private String HPID;
    @JacksonXmlProperty private Integer pageNo;
    @JacksonXmlProperty private Integer numOfRows;
}
