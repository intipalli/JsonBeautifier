package com.json;



import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UiController {

	@RequestMapping("/JsonValidatorAndFormatter")
	public ModelAndView getUiPage(ModelAndView mav,HttpServletRequest request){
		
		mav.setViewName("jsonValidatorAndFormatter");
		return mav;
		
	}
}
