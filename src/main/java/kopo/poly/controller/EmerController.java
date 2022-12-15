package kopo.poly.controller;

import kopo.poly.dto.EmerRowDTO;
import kopo.poly.service.IEmerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

import java.util.List;


@Slf4j
@RequestMapping(value = "Emer")
@Controller
public class EmerController {

    @Resource(name = "EmerService")
    private IEmerService emerService;

    @ResponseBody
    @GetMapping(value = "/getEmer")
    public List<EmerRowDTO> getEmer() throws Exception {
        log.info(this.getClass().getName() + "getEmer START");

        List<EmerRowDTO> eList = emerService.getEmer();
        log.info("첫번째 확인 : " + eList.get(0).getDutyName());
        log.info(this.getClass().getName() + "getEmer END");

        return eList;

    }

    @GetMapping(value = "EmerInfo")
    public String EmerInfo() {
        log.info(this.getClass().getName() + "EmerInfo success");
        return "Emer/EmerInfo";
    }
}
//s


