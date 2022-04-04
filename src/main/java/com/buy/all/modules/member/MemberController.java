package com.buy.all.modules.member;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;




/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
//	������
	@RequestMapping(value = "/user/include/head")
	public String footer(Model model) throws Exception {
				
		return "/user/include/head";
	}
	@RequestMapping(value = "/user/include/bottom")
	public String bottom(Model model) throws Exception {
		
		return "/user/include/bottom";
	}
	
//	�α���----------------------------------
	@RequestMapping(value = "/user/loginForm")
	public String login(Model model) throws Exception {
		
		
		return "/user/login/loginForm";
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectOneLogin(dto);

		if(rtMember != null) {
//			rtMember = service.selectOneLogin(dto);
			
			httpSession.setAttribute("sessSeq", rtMember.getIfmmSeq());
			httpSession.setAttribute("sessId", rtMember.getIfmmId());
			httpSession.setAttribute("sessName", rtMember.getIfmmName());
			
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
//	�α׾ƿ� -------------------------
	
	@ResponseBody
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		httpSession.invalidate();
		
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
//	ȸ������-------------------------------------
	
//	ȸ������
	@RequestMapping(value = "/user/memberChoice")
	public String memberChoice(Model model) throws Exception {
		
		
		return "/user/member/memberChoice";
	}
	
//	���� ȸ�� ����
	@RequestMapping(value = "/user/memberForm")
	public String memberForm(Model model) throws Exception {
		
		
		return "/user/member/memberForm";
	}
	
	@RequestMapping(value = "/user/memberInst")
	public String memberInst(Member dto, Model model) throws Exception {
		
		service.insert(dto);
		
		return "redirect:/user/loginForm";
	}
}
