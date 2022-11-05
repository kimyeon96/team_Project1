package kopo.poly.controller;

import com.sun.org.apache.xpath.internal.operations.Mod;
import kopo.poly.dto.SearchDTO;
import kopo.poly.service.IEmerSearchService;
import kopo.poly.service.Impl.EmerSearchService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Slf4j
@RequestMapping(value = "/main")
@Controller
public class MainController {

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

    @GetMapping("/EmerSearch")
    public String EmerSearchService(HttpServletRequest request, ModelMap model)
            throws Exception{
        log.info(this.getClass().getName() + ".EmerSearch start!");



        return "/menu/EmerSearch";
    }

    @PostMapping(value = "searchCondition")
    public String SearchCondition(ModelMap model) throws Exception {
        log.info(this.getClass().getName() + ".searchCondition start!");



        return "";
    }

    @Resource(name = "SearchService")
    @GetMapping(value = "/EmerSearch2")
    public String EmerSearch2(HttpServletRequest request, ModelMap model) throws Exception {
        log.info(this.getClass().getName() + "EmerSearch2 start!");

        /*service로 가는 코드*//*
        List<SearchDTO> set hostname = SearchService.getSearch*/

        return "/menu/EmerSearch2";
    }

/*    @PostMapping(value = "searchCondition")
    public String*/
}
