package com.travelmaker.controller.recommend_travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.travelmaker.model.recommend_travel.Recommend_TravelDTO;
import com.travelmaker.service.recommend_travel.Recommend_TravelService;

@RestController
@RequestMapping("/ajax")
public class Recommend_TravelAjaxController {
	
	@Autowired private Recommend_TravelService recommend_travelService;
	
	@GetMapping("/location")
	public List<Recommend_TravelDTO> SelectRandom(String value) {
		List<Recommend_TravelDTO> list = recommend_travelService.selectRandom(value);
		return list;
	}
}
