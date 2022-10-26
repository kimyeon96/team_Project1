package kopo.poly.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;



@Slf4j
@Controller
public class Emer {
    @GetMapping(value = "emer/emer")
    public String emer(ModelMap model)throws Exception{
        log.info(this.getClass().getName() + "start!");
        log.info(this.getClass().getName() + "end!");

        return "emer/emer";
    }

}