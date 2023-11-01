package com.TravelMaker.service.lodge;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TravelMaker.model.LodgeDTO;
import com.TravelMaker.model.Lodge_Room_TypeDTO;
import com.TravelMaker.repository.lodge.LodgeDAO;

@Service
public class LodgeService {

	@Autowired private LodgeDAO lodgeDAO;
	
	public List<LodgeDTO> selectedList(HashMap<String, Object> map) {
		
		return  lodgeDAO.selectedList(map);
	}

	public List<LodgeDTO> randomList() {
		
		return lodgeDAO.randomList();
	}

	public List<Lodge_Room_TypeDTO> getRoomList(int idx) {
		return lodgeDAO.getRoomList(idx);
	}

	public Lodge_Room_TypeDTO getOneRoom(int idx) {
		
		return lodgeDAO.getOneRoom(idx);
	}
	
	
}
