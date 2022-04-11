package com.buy.all.modules.member;

import java.io.IOException;
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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.buy.all.modules.naver.NaverLoginBo;
import com.github.scribejava.core.model.OAuth2AccessToken;




/**
 * Handles requests for the application home page.
 */
@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
//	참고영역
	@RequestMapping(value = "/user/include/head")
	public String footer(Model model) throws Exception {
				
		return "/user/include/head";
	}
	@RequestMapping(value = "/user/include/bottom")
	public String bottom(Model model) throws Exception {
		
		return "/user/include/bottom";
	}
	
//	로그인----------------------------------
//	@RequestMapping(value = "/user/loginForm")
//	public String login(Model model) throws Exception {
//		
//		
//		return "/user/login/loginForm";
//	}
	
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
			httpSession.setAttribute("sessClassificationCd", rtMember.getIfmmClassificationCd());
			
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
//	네이버 로그인
	
//	@RequestMapping(value = "/user/naverlogin")
//	public String naverlogin(Model model) throws Exception {
//		
//		
//		return "/user/login/naverlogin";
//	}
//	
//	@RequestMapping(value = "/user/callback")
//	public String callback(Model model) throws Exception {
//		
//		
//		return "/user/login/callback";
//	}
	
	/* NaverLoginBO */
	private NaverLoginBo naverLoginBO;

	/* NaverLoginBO */
	@Autowired
	private void setNaverLoginBO(NaverLoginBo naverLoginBO){
		this.naverLoginBO = naverLoginBO;
	}
	
    @RequestMapping("/user/loginForm")
    public ModelAndView login(HttpSession session) {
        /* 네아로 인증 URL을 생성하기 위하여 getAuthorizationUrl을 호출 */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        /* 생성한 인증 URL을 View로 전달 */
        return new ModelAndView("/user/login/loginForm", "url", naverAuthUrl);
    }
        
    @RequestMapping("/user/callback")
	public String callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		//로그인 사용자 정보를 읽어온다.
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
        System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
        session.setAttribute("result", apiResult);
        System.out.println("result"+apiResult);
        
        session.setAttribute("sessSeq", 0);
        session.setAttribute("sessClassificationCd", 134);
		
		return "redirect:/index/indexView";
	}
	
//	로그아웃 -------------------------
	
	@ResponseBody
	@RequestMapping(value = "/member/logoutProc")
	public Map<String, Object> logoutProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		httpSession.invalidate();
		
		returnMap.put("rt", "success");
		
		return returnMap;
	}
	
//	회원가입-------------------------------------
	
//	회원선택
	@RequestMapping(value = "/user/memberChoice")
	public String memberChoice(Model model) throws Exception {
		
		
		return "/user/member/memberChoice";
	}
	
//	개인 회원 가입
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
