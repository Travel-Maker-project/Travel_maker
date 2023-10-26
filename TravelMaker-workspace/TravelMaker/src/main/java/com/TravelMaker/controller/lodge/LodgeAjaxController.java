package com.TravelMaker.controller.lodge;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TravelMaker.model.LodgeDTO;
import com.TravelMaker.service.lodge.LodgeService;

@RestController
@RequestMapping("/lodge")
public class LodgeAjaxController {
	
	@Autowired LodgeService lodgeService;
	
	@PostMapping("/getSelectedList")
	public void getList(@RequestBody LodgeDTO LodgeFilter ){
		HashMap<String, Object> map = new HashMap<String, Object>();
		List<String> Arealist = LodgeFilter.getAreaArr();
		List<String> Typelist = LodgeFilter.getTypeArr();
		map.put("Arealist",Arealist);
		map.put("Typelist",Typelist);
		
		
		List<LodgeDTO> list =  lodgeService.selectedList(map);
		
		
		
		
	}
}
