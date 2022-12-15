package kopo.poly.controller;

import kopo.poly.dto.AmbRowDTO;
import kopo.poly.dto.EmerRowDTO;
import kopo.poly.service.IAmbService;
import kopo.poly.service.IEmerService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Slf4j
@RequestMapping(value = "Amb")
@Controller
public class AmbController {
    @Resource(name = "AmbService")
    private IAmbService ambService;

    @ResponseBody
    @GetMapping(value = "/getAmb")
    public List<AmbRowDTO> getAmb() throws Exception {
        log.info(this.getClass().getName() + "getAmb START");

        List<AmbRowDTO> eList = ambService.getAmb();
        log.info("첫번째 확인 : " + eList.get(0).getDutyName());
        log.info(this.getClass().getName() + "getAmb END");

        return eList;

    }

    @GetMapping(value = "AmbInfo")
    public String AmbInfo() {
        log.info(this.getClass().getName() + "AmbInfo success");
        return "Amb/AmbInfo";
    }
}
//s

