package com.travelmaker.service.recommend_travel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.travelmaker.model.recommend_travel.Recommend_TravelDTO;
import com.travelmaker.repository.recommend_travel.Recommend_TravelDAO;

@Service
public class Recommend_TravelService {

	@Autowired private Recommend_TravelDAO recommend_travelDAO;

	public List<Recommend_TravelDTO> selectRandom(String value) {
		List<Recommend_TravelDTO> dto = recommend_travelDAO.selectRandom(value);
		return dto;
	}
}
