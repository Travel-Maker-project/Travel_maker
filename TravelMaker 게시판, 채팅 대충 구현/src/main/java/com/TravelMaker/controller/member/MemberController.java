package com.TravelMaker.controller.member;

import com.TravelMaker.model.TravelMaker_MemberDTO;
import com.TravelMaker.service.member.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Member")
public class MemberController {

    @Autowired private MemberService memberService;

    @GetMapping("/join")
    public void join(){}

    @PostMapping("/join")
    public String join (TravelMaker_MemberDTO dto){
        int row = memberService.join(dto);
        System.out.println(row != 0 ? "가입성공" : "가입실패");
        return "redirect:/";
    }

}
