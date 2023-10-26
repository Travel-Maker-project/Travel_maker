package com.TravelMaker.repository.member;

import com.TravelMaker.model.TravelMaker_MemberDTO;
import org.springframework.stereotype.Repository;

@Repository
public interface MemberDAO {


    int insertMember(TravelMaker_MemberDTO dto);
}
