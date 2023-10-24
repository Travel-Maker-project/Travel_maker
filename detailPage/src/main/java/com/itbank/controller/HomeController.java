package com.itbank.controller;



import com.itbank.model.TravelDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itbank.service.TravelService;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class HomeController {
	
	@Autowired private TravelService travelService;
	
	
	@GetMapping("/")
	public String home() {
		return "home";
	}

	@GetMapping("/view/{idx}")
	public ModelAndView view (@PathVariable("idx") int idx){
		ModelAndView mav = new ModelAndView("view");

		TravelDTO dto = travelService.selectOneByIdx(idx);
		mav.addObject("dto", dto);
		return mav;

	}

}
