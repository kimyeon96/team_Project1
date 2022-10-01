package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.annotation.Resource;

@Slf4j
@Controller
public class HospitalController {
    @Resource(name = "HospitalService")
    @GetMapping(value = "/hospital")
    public String hospital() {
    throws Exception {

            log.info(this.getClass().getName() + "hostpital start");


        }
    }
}