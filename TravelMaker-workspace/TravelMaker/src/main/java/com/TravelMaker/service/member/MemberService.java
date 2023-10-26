package com.TravelMaker.service.member;

import com.TravelMaker.model.TravelMaker_MemberDTO;
import com.TravelMaker.repository.member.MemberDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired private MemberDAO memberDAO;


    public int join(TravelMaker_MemberDTO dto) {
        return memberDAO.insertMember(dto);
    }
}
