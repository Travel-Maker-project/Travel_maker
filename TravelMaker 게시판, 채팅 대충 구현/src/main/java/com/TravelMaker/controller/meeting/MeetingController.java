package com.TravelMaker.controller.meeting;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.TravelMaker.model.Meeting_BoardDTO;
import com.TravelMaker.service.meeting.Meeting_BoardService;

@Controller
@RequestMapping("/Meeting")
public class MeetingController {
		
	@Autowired private Meeting_BoardService meeting_BoardService;
	private Logger logger = LoggerFactory.getLogger(MeetingController.class);
	
	@GetMapping("/meeting_main")
	public ModelAndView metting_main() {
		ModelAndView mav = new ModelAndView();
		List<Meeting_BoardDTO> meetinglist = meeting_BoardService.selectList();
		mav.addObject("meetinglist", meetinglist);
		
		return mav;
	}
	
	@GetMapping("/meeting_chat")
	public void meeting_chat() {
		logger.info("[Controller] : chat");
	}
	
	@GetMapping("/delete_board/{meeting_Board_Idx}")
	public String delete_board(@PathVariable("meeting_Board_Idx") int meeting_Board_Idx) {
		int row = meeting_BoardService.deleteBoard(meeting_Board_Idx);
		System.out.println(row + "행이 삭제 되었습니다.");
		return "Meeting/meeting_main";
	}
}
