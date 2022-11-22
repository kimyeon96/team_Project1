package kopo.poly.controller;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import kopo.poly.dto.ConDTO;
import kopo.poly.dto.XmlDTO;
import kopo.poly.service.IConService;
import kopo.poly.service.Impl.ConService;
import kopo.poly.util.CmmUtil;
import kopo.poly.util.NetworkUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.xml.ws.Response;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
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

    @GetMapping(value = "/EmerSearch3")
    public String EmerSearch3(HttpServletRequest request, ModelMap model) throws Exception {
        log.info( "EmerSearch3 start!");
        log.info("## request: " + request.toString());
        log.info("## model : " + model.toString());

        List<String> general = new ArrayList<>(Arrays.asList(request.getParameterValues("hos1")));

        for(String a : general)
        log.info(a);



        /*List<String> general = ConService.getSearchCon(general);*/


        /*임시 이어서 request.getParameter()*/
/*        model.addAttribute("hos1", hos1);*/

        /*List<ConDTO> SearchCon = conService.getSearchCon(); //getSearchCon의 리턴 값을 DTO로 넣어주는거*/

/*        String apiParam = "?normal=" + normal + "&appid=" + apiKey;
        String apiParam2 = "?infant=" + infant + "&appid=" + apiKey;
        String apiParam3 = "?pressure=" + pressure + "&appid=" + apiKey;
        String apiParam4 = "?normalIsolation=" + normalIsolation + "&appid=" + apiKey;
        String apiParam5 = "?emerUseOnlyICU=" + emerUseOnlyICU + "&appid=" + apiKey;
        String apiParam6 = "?internalMedicineICU=" + internalMedicineICU + "&appid=" + apiKey;
        String apiParam7 = "?sergeryICU=" + sergeryICU + "&appid=" + apiKey;
        String apiParam8 = "?neonatalICU=" + neonatalICU + "&appid=" + apiKey;
        String apiParam9 = "?pediatricsICU=" + pediatricsICU + "&appid=" + apiKey;
        String apiParam10 = "?neurology=" + neurology + "&appid=" + apiKey;
        String apiParam11 = "?neuroSergery=" + neuroSergery + "&appid=" + apiKey;
        String apiParam12 = "?burnICU=" + burnICU + "&appid=" + apiKey;
        log.info("apiParam " + apiParam);

        String xml = NetworkUtil.getUrlXML(IConService.apiURL + apiParam);*/

        /*model.addAttribute(""); *//*모델은 controller에서 jsp로 값 넘길때*/

        /*List<String> s = new ArrayList<>();
        for (int i=1; i < 13; i++) {
            String hos = "hos"+i;
            String E = request.getParameter(hos);
            if (E != null) {
                s.add(E);
            };
        }

        for(int i=0; i<s.size(); i++){
            log.info(s.get(i));
        }*/

        /*ConService.함수(s)*/

        /*service로 가는 코드*//*
        List<SearchDTO> set hostname = SearchService.getSearch*/
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
/*    @GetMapping("/EmerSearch2")
    public ModelAndView EmerSearch2 ()
    {
        ModelAndView model = new ModelAndView("main");

        model.addObject("testvalue", "안녕!");

        return model;
    }*/
}
