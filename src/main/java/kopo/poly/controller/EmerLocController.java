package kopo.poly.controller;

import kopo.poly.dto.EmerLocRowDTO;
import kopo.poly.service.IEmerLocService;
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
public class EmerLocController {

    @Resource(name = "EmerLocService")
    private IEmerLocService emerLocService;

    @ResponseBody
    @GetMapping(value = "/getEmerLoc")
    public List<EmerLocRowDTO> getLoc() throws Exception {
        log.info(this.getClass().getName() + "getEmerLoc START");

        List<EmerLocRowDTO> eList = emerLocService.getLoc();
        log.info("첫번째 확인 : " + eList.get(0).getDutyName());
        log.info(" 확인 : " + eList.get(0).getLatitude());
        log.info(" 확인 : " + eList.get(0).getLongitude());
        log.info(this.getClass().getName() + "getEmerLoc END");

        return eList;

    }

    @GetMapping(value = "EmerLoc")
    public String EmerLoc() {
        log.info(this.getClass().getName() + "EmerLoc success");
        return "Emer/EmerLoc";
    }
}
//s
