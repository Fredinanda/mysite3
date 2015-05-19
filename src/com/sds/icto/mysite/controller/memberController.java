package com.sds.icto.mysite.controller;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sds.icto.mysite.domain.MemberVo;
import com.sds.icto.mysite.service.MemberService;

@Controller
@RequestMapping("/member")
public class memberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String joinform(){
		return "member/joinform";
	}

	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join(@ModelAttribute MemberVo vo){
		memberService.joinUser(vo);
		return "redirect:/index";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String loginform(){
		return "member/loginform";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@ModelAttribute MemberVo vo, HttpSession session){
		MemberVo membervo = memberService.authUser(vo);
		//로긴실패
		if(membervo == null){
			return "redirect:/member/login?result=fail";
		}
		//로긴성공
		session.setAttribute("authMember", membervo);
		return "redirect:/index";
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession sesstion){
		sesstion.removeAttribute("authMember");
		sesstion.invalidate();
		return "redirect:/index";
	}

}
