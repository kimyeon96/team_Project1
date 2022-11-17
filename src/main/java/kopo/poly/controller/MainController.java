package kopo.poly.controller;

import com.fasterxml.jackson.dataformat.xml.XmlMapper;
import kopo.poly.dto.ConDTO;
import kopo.poly.dto.XmlDTO;
import kopo.poly.service.IConService;
import kopo.poly.service.Impl.ConService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;


@Slf4j
@RequestMapping(value = "/main")
@RestController
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

    @GetMapping(value = "/EmerSearch3")
    public String EmerSearch3(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + "EmerSearch3 start!");

        List<ConDTO> SearchCon = conService.getSearchCon(); //getSearchCon의 리턴 값을 DTO로 넣어주는거

        model.addAttribute(""); /*모델은 controller에서 jsp로 값 넘길때*/

        List<String> s = new ArrayList<>();
        for (int i=1; i < 13; i++) {
            String hos = "hos"+i;
            String E = request.getParameter(hos);
            if (E != null) {
                s.add(E);
            };
        }

        for(int i=0; i<s.size(); i++){
            log.info(s.get(i));
        }

        /*ConService.함수(s)*/

        /*service로 가는 코드*//*
        List<SearchDTO> set hostname = SearchService.getSearch*/
        return "menu/test";
    }

    @GetMapping(value = "test001")
    public XmlDTO insertUser(HttpServletRequest request, ModelMap model) throws Exception {

        log.info(this.getClass().getName() + ".insertUserInfo start!");

        XmlMapper xmlMapper = new XmlMapper();

        File file = new File("Test.xml");

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
