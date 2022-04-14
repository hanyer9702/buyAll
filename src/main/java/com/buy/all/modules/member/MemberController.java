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
import com.buy.all.modules.naver.NaverUser;
import com.buy.all.modules.naver.SnsUser;
import com.github.scribejava.core.model.OAuth2AccessToken;




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
	
//	���̹� �α���
	
	@RequestMapping(value = "/user/naverlogin2")
	public String naverlogin(Model model) throws Exception {
		
		
		return "/user/login/naverlogin2";
	}
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
        /* �׾Ʒ� ���� URL�� �����ϱ� ���Ͽ� getAuthorizationUrl�� ȣ�� */
        String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
        
        System.out.println(naverAuthUrl);
        
        /* ������ ���� URL�� View�� ���� */
        return new ModelAndView("/user/login/loginForm", "url", naverAuthUrl);
    }
        
//    @RequestMapping("/user/callback")
//	public String callback(@RequestParam String code, @RequestParam String state, @RequestParam Map<String,Object> paramMap, HttpSession session) throws Exception{
//		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
//		
//		//�α��� ����� ������ �о�´�.
//		NaverUser apiResult = naverLoginBO.getUserProfile(oauthToken);
////      System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
//        session.setAttribute("result", apiResult);
//        System.out.println("result"+apiResult);
//        
//        session.setAttribute("sessSeq", 0);
//        session.setAttribute("sessClassificationCd", 134);
//        
//        /* �߱޹��� AccessToken�� �̿��Ͽ� ���� �α����� ���̹��� ����� ������ ������ ��ȸ�� �� �ִ�. */
//        NaverUser naverUser = naverLoginBO.getUserProfile(oauthToken);
//        
//        /* ���̹� ����� ������ ������ �̿��Ͽ� ���ԵǾ��ִ� ����ڸ� DB���� ��ȸ�Ͽ� �����´�. */
//        SnsUser snsUser = service.selectUserBySnsId(naverUser);
//        
//        /* ���� ��ġ�ϴ� ����ڰ� ���ٸ� ���� �α����� ���̹� ����� �������� ȸ�������� �����ϵ��� ������������ �����Ѵ� */
//        if( snsUser == null ) {
//        	return "redirect:/join/naver";
//        }
//        
//        /* ���� ��ġ�ϴ� ����ڰ� �ִٸ� ���� ���ǿ� ����� �α��� ������ ���� */
//        session.setAttribute("SNS_USER",snsUser);
//		
//		return "redirect:/index/indexView";
//	} 
    
    @RequestMapping("/user/callback")
	public String callback(@RequestParam String code, @RequestParam String state, HttpSession session) throws IOException {
		OAuth2AccessToken oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		//�α��� ����� ������ �о�´�.
		String apiResult = naverLoginBO.getUserProfile(oauthToken);
//      System.out.println(naverLoginBO.getUserProfile(oauthToken).toString());
        session.setAttribute("result", apiResult);
        System.out.println("result"+apiResult);
        
        session.setAttribute("sessSeq", 0); //���� ����
        session.setAttribute("sessClassificationCd", 134);
		
		return "redirect:/index/indexView"; //����ڼ���
	}

    
//    ���� �α���
    
    @ResponseBody //���� �α���
	@RequestMapping(value = "/user/loginProcGoogle")
	public Map<String, Object> GloginProc(@RequestParam("ifmmName")String name, Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		System.out.println(name);
		httpSession.setAttribute("sessName",name);
		httpSession.setAttribute("sessId","���� ȸ���Դϴ�");
		httpSession.setAttribute("sessSeq",0);
		httpSession.setAttribute("sessClassificationCd", 134);
	
		returnMap.put("rt", "success");
		
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
