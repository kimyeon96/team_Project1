package kopo.poly.controller;

import kopo.poly.dto.EmerDTO;
import kopo.poly.dto.EmerRowDTO;
import kopo.poly.service.IEmerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Slf4j
@RequestMapping(value = "Emer")
@RestController
public class EmerController {

    @Resource(name = "EmerService")
    private IEmerService emerService;

    @GetMapping(value = "getEmer")
    public List<EmerRowDTO> getEmer(HttpServletRequest request, Model model) throws Exception{
        log.info(this.getClass().getName() +"getEmer START");

        List<EmerRowDTO> eList = emerService.getEmer();
        log.info("첫번째 확인 : " + eList.get(0).getDutyName());
        log.info(this.getClass().getName() +"getEmer END");


        return eList;

    }
}