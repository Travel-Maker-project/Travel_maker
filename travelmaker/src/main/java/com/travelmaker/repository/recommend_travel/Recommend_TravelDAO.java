package com.travelmaker.repository.recommend_travel;

import java.util.List;

import com.travelmaker.model.recommend_travel.Recommend_TravelDTO;

public interface Recommend_TravelDAO {

	List<Recommend_TravelDTO> selectRandom(String value);

}
