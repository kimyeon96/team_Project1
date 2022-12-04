package kopo.poly.controller;

import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import kopo.poly.dto.ConDTO;
import kopo.poly.dto.XmlDTO;
import kopo.poly.service.IConService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.List;


@Slf4j
@Controller
public class MainController {
    /*@Autowired()*/

    @Resource(name = "ConService")
    private IConService conService; // => 컨트롤러에서 Service 호출을 위한 객체를
    // '인터페이스'로 메모리에 생성

    @GetMapping(value = "/Main")
    public String Main(HttpServletRequest request, ModelMap model)
            throws Exception {

        log.info(this.getClass().getName() + "Main start!");

        return "/main/Main";
    }

    @GetMapping(value = "/about")
    public String about() throws Exception {
        log.info(this.getClass().getName() + "about start!");

        return "/main/about";
    }

/*    @GetMapping("/EmerSearch")
    public String ConService(HttpServletRequest request, ModelMap model)
            throws Exception{
        log.info(this.getClass().getName() + ".EmerSearch start!");



        return "/menu/EmerSearch";
    }*/

/*    @PostMapping(value = "searchCondition")
    public String SearchCondition(ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".searchCondition start!");



        return "";
    }*/


    @GetMapping(value = "/EmerSearch2")
    public String EmerSearch2(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + "EmerSearch2 start!");

        /*service로 가는 코드*//*
        List<SearchDTO> set hostname = SearchService.getSearch*/
        return "/menu/EmerSearch2";
    }
/*    @Value("${hospital.api.key}")
    private String apiKey;*/

//  @RequestBody jsp(어떤 요청에 대해서 데이터로 보내줌)에서 ajax로 받음 @GetMapping() 경로 리턴타입으로 보내줌
    @GetMapping(value = "/EmerSearch3")
    public String EmerSearch3(HttpServletRequest request, ModelMap model) throws Exception {
        log.info( "EmerSearch3 start!");
        log.info("## model : " + model.toString());

        String cityParam = request.getParameter("city");
        String districtParam = request.getParameter("district");
        String HptorClnParam = request.getParameter("HptorCln");
        String CODE_MSTParam = request.getParameter("CODE_MST");
        String dayParam = request.getParameter("day");
        String hosnameParam = request.getParameter("hosname");
        String pageNoParam = request.getParameter("pageNo");
        String ordParam = request.getParameter("ord");
        String numOfRowsParam = request.getParameter("numOfRows");
        String telParam = request.getParameter("tel");
        log.info(cityParam);
        log.info(districtParam);
        log.info(HptorClnParam);
        log.info(CODE_MSTParam);
        log.info(dayParam);
        log.info(hosnameParam);
        log.info(pageNoParam);
        log.info(ordParam);

        List<ConDTO> conList = conService.getSearchCon(null, cityParam, districtParam, HptorClnParam, CODE_MSTParam, dayParam, hosnameParam, pageNoParam, ordParam, numOfRowsParam, telParam); //getSearchCon의 리턴 값을 DTO로 넣어주는거

        model.addAttribute("conList",conList);
        return "menu/test";
    }

    @GetMapping(value = "test001")
    public XmlDTO insertUser(HttpServletRequest request, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".insertUserInfo start!");

        XmlMapper xmlMapper = new XmlMapper();

        FileInputStream file = new FileInputStream("Test.xml");

        BufferedReader br = new BufferedReader(new InputStreamReader(file));

        XmlDTO pDTO = xmlMapper.readValue(file, XmlDTO.class);

        return pDTO;
    }

}
