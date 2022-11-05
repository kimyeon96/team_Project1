package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SearchDTO {

    public String HPID;
    public String pageNo;
    public String numOfRows;
    public String setHosName;

    public void setHosName(String hosName) {
    }

    public void setHosTel3(String hosTel) {
    }

    public void setEK(String ek) {
    }

    public String getHosName() {
        return "";
    }
}