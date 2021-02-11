package kr.co.semosi.admin.main.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.semosi.admin.customer.model.vo.QnA;
import kr.co.semosi.admin.job.model.vo.AdminOffer;
import kr.co.semosi.admin.job.model.vo.AdminSearch;
import kr.co.semosi.admin.main.model.service.AdminMainService;

@Controller
public class AdminMainController {

    @Resource(name="adminMainService")
    private AdminMainService maService;
    
    @RequestMapping(value="/main.sms")
    public ModelAndView mainBoardList(ModelAndView mav){
	List<AdminOffer> OfferList = maService.selectOfferMainList();
	List<AdminSearch> SearchList = maService.selectSearchMainList();
	List<QnA> QnAList = maService.selectInquiryMainList();
	
	mav.addObject("OfferList",OfferList);
	mav.addObject("SearchList",SearchList);
	mav.addObject("QnAList", QnAList);
	mav.setViewName("admin/admin_main");
	return mav;
    }
    
}
