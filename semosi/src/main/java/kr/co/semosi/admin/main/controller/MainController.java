package kr.co.semosi.admin.main.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.semosi.admin.main.model.service.MainService;

@Controller
public class MainController {

    @Resource(name="mainService")
    private MainService maService;
    
  //  @RequestMapping("/main.sms")
    public void mainBoardList(){
	maService.selectJobOfferList();
	maService.selectJobSearchList();
	maService.selectQnAList();
    }
    
}
