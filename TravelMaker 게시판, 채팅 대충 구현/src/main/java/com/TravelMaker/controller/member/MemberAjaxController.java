package com.TravelMaker.controller.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TravelMaker.component.MailComponent;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Random;

@RestController
@RequestMapping("/ajax")
public class MemberAjaxController {

    @Autowired private MailComponent mailComponent;

    private Random ran = new Random();

    // 1) 이메일로 임의의 인증번호를 보낸다.
    @GetMapping("/sendAuthNumber")
    public String sendAuthNumber(String email, HttpSession session){
        String authNumber = (ran.nextInt(899999) + 100000) + "";

        HashMap<String, String> param = new HashMap<>();
        param.put("receiver", email);
        param.put("subject", "[Travel Maker] 가입 인증 번호");
        param.put("content", authNumber);

        int row = mailComponent.sendMimeMessage(param);

        String msg;
        if(row != 1 ){
            msg = "인증번호 발송에 실패 했습니다.";
        }
        else {
            msg = "인증번호가 발송되었습니다.";
            session.setAttribute("authNumber", authNumber);
            session.setMaxInactiveInterval(600);
        }
        return msg;
    }

    // 2) 사용자가 확인용으로 입력한 인증번호와 세션에 저장된 인증번호를 비교하여 일치여부를 반환한다.
    @GetMapping("/checkAuthNumber/{userNumber}")
    public String checkAuthNumber(@PathVariable("userNumber")
                                      String userNumber, HttpSession session) {
        String sessionNumber = (String) session.getAttribute("authNumber");
        String result = userNumber.equals(sessionNumber) ? "1" : "0";
        return result;
    }
}
