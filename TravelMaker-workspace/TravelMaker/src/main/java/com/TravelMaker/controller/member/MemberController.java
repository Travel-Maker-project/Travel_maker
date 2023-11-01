package com.TravelMaker.controller.member;

import com.TravelMaker.model.TravelMaker_MemberDTO;
import com.TravelMaker.service.GoogleService;
import com.TravelMaker.service.KaKaoService;
import com.TravelMaker.service.member.MemberService;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/Member")
public class MemberController {
    @Autowired 
    private MemberService memberService;
    @Autowired 
    private KaKaoService kaKaoService;
    @Autowired
    private GoogleService googleService;

    //이용 약관창 이동
    @GetMapping("/term")
    public String terms() {return"/Member/terms";}
    //일반 회원가입창 이동
    @GetMapping("/join")
    public void join(){}
    //회원가입 받기
    @PostMapping("/join")
    public String join (TravelMaker_MemberDTO dto){
        int row = memberService.join(dto);
        System.out.println(row != 0 ? "가입성공" : "가입실패");
        return "redirect:/";
    }
    
    //
    
    
    /**
     *
     *@apiNote
     * 카카오 회원가입
     * */
    @GetMapping("/KaKaoJoin")
    public ModelAndView KakaoJoin(@RequestParam(value="code",required=false) String code) throws IOException {
    	ModelAndView mav = new ModelAndView("/Member/join");
    	String token = "";
    	token = kaKaoService.getToken(code);
    	
		HashMap<String, String> userInfo = kaKaoService.getUserInfo(token);
		mav.addObject("code",code);
		mav.addObject("userInfo",userInfo);
		
		TravelMaker_MemberDTO dto = new TravelMaker_MemberDTO();
		dto.setTravelMaker_Member_UserId( userInfo.get("id"));
		dto.setTravelMaker_Member_UserPw( userInfo.get("id"));
		dto.setTravelMaker_Member_Gender( userInfo.get("gender"));
		dto.setTravelMaker_Member_EncodingProfileImg( userInfo.get("profile_image"));
		dto.setTravelMaker_Member_UserNickName( userInfo.get("nickname"));
		dto.setTravelMaker_Member_Birth( userInfo.get("birthday"));
		dto.setTravelMaker_Member_UserNickName( userInfo.get("nickname"));
		dto.setIsKakao("yes");
		mav.addObject("dto",dto);
		
		return mav;
		
    }
    
    @GetMapping("/KaKaoLogin")
    public ModelAndView KakaoLogin(@RequestParam(value="code",required=false) String code,
    		HttpServletRequest request, HttpSession session) throws IOException {
    	ModelAndView mav = new ModelAndView();
    	String token = "";
    	token = kaKaoService.getToken(code);
    	HashMap<String, String> userInfo = kaKaoService.getUserInfo(token);
    	TravelMaker_MemberDTO dto = new TravelMaker_MemberDTO();
    	
    	dto.setTravelMaker_Member_UserId(userInfo.get("id"));
    	dto.setTravelMaker_Member_UserPw(userInfo.get("id"));
    	TravelMaker_MemberDTO user = memberService.checkUser(dto);
    	if(user != null) {
    		session.setAttribute("user", user);
    		session.setAttribute("token", token);
    		if(user.getTravelMaker_Member_Coupon()!=0) {
    			
    			session.setAttribute("hasCoupon", 1);
    		}else {
    			
    			session.setAttribute("hasCoupon",0);
    		}
    		mav.setViewName("index");
    	}
    	
    	return mav;
    }
    
    @GetMapping("/Welcome-LoginAPI")
    public String WelcomeLogin(){
    	return "Welcome-LoginAPI";
    }
    @GetMapping("/GoogleLogin")
    public ModelAndView GoogleLogin(@RequestParam(value="code",required=false) String code) {
    	ModelAndView mav = new ModelAndView("Member/join");
    	HashMap<String, String> userInfo = googleService.getToken(code);
    	mav.addObject("userInfo",userInfo);
    	
    	TravelMaker_MemberDTO dto = new TravelMaker_MemberDTO();
		dto.setTravelMaker_Member_UserId(userInfo.get("id"));
		dto.setTravelMaker_Member_UserPw(userInfo.get("id"));
		dto.setTravelMaker_Member_EncodingProfileImg( userInfo.get("picture"));
		dto.setTravelMaker_Member_UserNickName( userInfo.get("name"));
		dto.setTravelMaker_Member_Email(userInfo.get("email"));
		dto.setIsGoogle("yes");
		mav.addObject("dto",dto);
		
		
    	return mav;
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	
    	String token = (String) session.getAttribute("token");
    	if(token!=null) {    		
    		TravelMaker_MemberDTO dto = (TravelMaker_MemberDTO) session.getAttribute("user");
    		kaKaoService.logout(token);
    	}
    	session.invalidate();
    	
    	return "redirect:http://localhost:8080/www/Member/logoutKAKAO";
    }
    @GetMapping("/logoutAPI")
    public String logoutAPI(HttpSession session) {
    	
    	String token = (String) session.getAttribute("token");
    	if(token!=null) {    		
    		TravelMaker_MemberDTO dto = (TravelMaker_MemberDTO) session.getAttribute("user");
    		kaKaoService.logout(token);
    	}
    	session.invalidate();
    	
    	return "redirect:/";
    }
    
    @GetMapping("/logoutKAKAO")
    public String logoutKaKao(@RequestParam(value="state",required=false) String state) {
    	System.out.println(state);
    	
    	return "index";
    }
    
    
    @GetMapping("/myPage")
    public String myPage(HttpSession session) {
    	
    	return "Member/myPage";
    }
   
    @GetMapping("/findMember")
	public void findMember(){}

	@GetMapping("/findPw")
	public void findPw(){}


}
