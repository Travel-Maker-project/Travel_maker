package com.travelmaker.controller.recommend_travel;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/recommend_travel")
public class Recommend_TravelController {
	
	@GetMapping("/recommend_travel_main")
	public void recommend_travel_main() {}
}
