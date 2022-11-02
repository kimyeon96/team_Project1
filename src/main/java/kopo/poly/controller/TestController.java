package kopo.poly.controller;

import kopo.poly.dto.EmerDTO;
import kopo.poly.service.IEmerService;
import kopo.poly.service.ITestService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
@Slf4j
@RequestMapping(value = "Test")
@RestController
public class TestController {

    public static String url= "http://apis.data.go.kr/B552657/ErmctInfoInqireService/getEmrrmRltmUsefulSckbdInfoInqire";
//
//        @GetMapping("url")
//        public String getUrl

}