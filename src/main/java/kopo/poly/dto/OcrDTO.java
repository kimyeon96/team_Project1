package kopo.poly.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.web.bind.annotation.GetMapping;

@Getter
@Setter
public class OcrDTO {
    private String filePath;
    private String fileName;
    private String textfromImage;

    private String org_file_name;
    private String ext;
    private String reg_id;
    private String chg_id;



}