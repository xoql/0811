package com.javalec.tea_pjt.controller.menu;

import java.util.Calendar;
import java.util.Date;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javalec.tea_pjt.controller.member.MemberController;
import com.javalec.tea_pjt.service.member.MemberService;

@Controller
@RequestMapping("/menu/*")
public class MenuController {
	private static final Logger logger
	=LoggerFactory.getLogger(MenuController.class);
	
	@Inject
	MemberService mService;
	
	@RequestMapping("introduceGongchaShow.do")
	public String IntroduceGongcha() {
		return "menu/introduceGongcha";
	}
	
	@RequestMapping("attendanceShow.do")
	public String AttendanceShow() {
		return "menu/attendance";
	}
	
	@RequestMapping("attendance.do")
	public void Attendance() {//시스템상의 오늘 날짜와 캘린터의 날짜가 일치하면 출석표시 이미지가 떠야함.
		//음.....ㅋㅋ
		Calendar cal = Calendar.getInstance();
		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH)+1;
		int d = cal.get(Calendar.DAY_OF_MONTH);
		//테이블만들고 마저 할 것
		Date date = new Date();
	}
}
