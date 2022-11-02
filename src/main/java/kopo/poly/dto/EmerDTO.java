package kopo.poly.dto;


import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class EmerDTO {

    private List<EmerRowDTO>  EmerRow;
}