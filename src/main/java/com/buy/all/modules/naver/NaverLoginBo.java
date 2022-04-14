package com.buy.all.modules.naver;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.github.scribejava.core.builder.ServiceBuilder;
import com.github.scribejava.core.model.OAuth2AccessToken;
import com.github.scribejava.core.model.OAuthRequest;
import com.github.scribejava.core.model.Response;
import com.github.scribejava.core.model.Verb;
import com.github.scribejava.core.oauth.OAuth20Service;

public class NaverLoginBo {

//	private final static String CLIENT_ID = "g1ifsIGlccSo0q4nReZx";
//	private final static String CLIENT_SECRET = "zEyXqty6C0";
//	private final static String REDIRECT_URI = "http://localhost:8080/user/callback";
//	private final static String SESSION_STATE = "oauth_state";
//	/* ������ ��ȸ API URL */
//	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
//	
//	public String getAuthorizationUrl(HttpSession session) {
//
//		/* ���� ��ȿ�� ������ ���Ͽ� ������ ���� */
//		String state = generateRandomString();
//		/* ������ ���� ���� session�� ���� */
//		setSession(session, state);
//		OAuth20Service oauthService = getOauthService(state);
//		return oauthService.getAuthorizationUrl();
//	}
//
//	/* �׾Ʒ� Callback ó�� ��  AccessToken ȹ�� Method */
//	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException {
//
//		/* Callback���� ���޹��� ���������� �������� ���ǿ� ����Ǿ��ִ� ���� ��ġ�ϴ��� Ȯ�� */
//		String sessionState = getSession(session);
//		if (StringUtils.equals(sessionState, state)) {
//			OAuth20Service oauthService = getOauthService(state);
//			/* Scribe���� �����ϴ� AccessToken ȹ�� ������� �׾Ʒ� Access Token�� ȹ�� */
//			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
//			return accessToken;
//		}
//		return null;
//	}
//
////	public NaverUser getUserProfile(OAuth2AccessToken oauthToken) throws IOException{
////		return getUserProfile(oauthToken, false);
////	}
//	
//	/* Access Token�� �̿��Ͽ� ���̹� ����� ������ API�� ȣ�� */
//	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{
//
//		OAuth20Service oauthService =new ServiceBuilder()
//    			.apiKey(CLIENT_ID)
//    			.apiSecret(CLIENT_SECRET)
//    			.callback(REDIRECT_URI).build(NaverLoginApi.instance());
//    	
//		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
//		oauthService.signRequest(oauthToken, request);
//		Response response = request.send();
//		return response.getBody();
//	}	
//	
//	public NaverUser getUserProfile(OAuth2AccessToken oauthToken, boolean isFinalRequest) throws IOException {
//
//		Response response = sendProfileApiRequest(oauthToken);
//		int responseCode = response.getCode();
//		
//		if(isSuccessResponse(responseCode)){
//			return getNaverUser(response.getBody());
//		}
//		
//		if( needRefresh(responseCode, isFinalRequest)){
//			OAuth2AccessToken refreshedToken = refreshAccessToken(oauthToken);
//			return getUserProfile(refreshedToken, true);
//		}
//		
//		return null;
//	}
//
//	private Response sendProfileApiRequest(OAuth2AccessToken oauthToken){
//		OAuth20Service oauthService = getOauthService();
//		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
//		oauthService.signRequest(oauthToken, request);
//		Response response = request.send();
//		return response;
//	}
//	
//	private boolean isSuccessResponse(int responseCode){
//		return ( responseCode == 200 );
//	}
//	private boolean needRefresh(int responseCode, boolean isFinalRequest){
//		return ( responseCode == 401 && !isFinalRequest );
//	}
//	
//	private String generateRandomString() {
//		return UUID.randomUUID().toString();
//	}
//
//	private void setSession(HttpSession session, String state) {
//		session.setAttribute(SESSION_STATE, state);
//	}
//
//	private String getSession(HttpSession session) {
//		return (String)session.getAttribute(SESSION_STATE);
//	}
//	
//	private OAuth20Service getOauthService(String state){
//		ServiceBuilder sb  = new ServiceBuilder()
//			.apiKey(CLIENT_ID)
//			.apiSecret(CLIENT_SECRET)
//			.callback(REDIRECT_URI);
//		if( StringUtils.isNotEmpty(state)){
//			sb = sb.state(state);
//		}
//		return sb.build(NaverLoginApi.instance());
//	}
//	
//	private OAuth20Service getOauthService(){
//		return getOauthService(null);
//	}
//	
//	
//	private OAuth2AccessToken refreshAccessToken( OAuth2AccessToken oauthToken) throws IOException{
//		OAuth20Service oauthService = getOauthService();
//		return oauthService.refreshAccessToken(oauthToken.getRefreshToken());
//	}
//
//	private NaverUser getNaverUser(String profileResponse) throws JsonParseException, JsonMappingException, IOException {
//		ObjectMapper mapper = new ObjectMapper();
//		NaverProfileResponse naverProfileResponse = null;
//
//		naverProfileResponse = mapper.readValue(profileResponse, NaverProfileResponse.class);
//		
//		if (naverProfileResponse != null) {
//			return naverProfileResponse.getResponse();
//		}
//		return null;
//	}

	
	private final static String CLIENT_ID = "g1ifsIGlccSo0q4nReZx";
	private final static String CLIENT_SECRET = "zEyXqty6C0";
	private final static String REDIRECT_URI = "http://localhost:8080/user/callback";
	private final static String SESSION_STATE = "oauth_state";
	/* ������ ��ȸ API URL */
	private final static String PROFILE_API_URL = "https://openapi.naver.com/v1/nid/me";
	
	/* �׾Ʒ� ����  URL ����  Method */
	public String getAuthorizationUrl(HttpSession session) {

		/* ���� ��ȿ�� ������ ���Ͽ� ������ ���� */
		String state = generateRandomString();
		/* ������ ���� ���� session�� ���� */
		setSession(session,state);

		/* Scribe���� �����ϴ� ���� URL ���� ����� �̿��Ͽ� �׾Ʒ� ���� URL ���� */
		OAuth20Service oauthService = new ServiceBuilder()
				.apiKey(CLIENT_ID)
				.apiSecret(CLIENT_SECRET)
				.callback(REDIRECT_URI)
				.state(state) //�ռ� ������ �������� ���� URL������ �����
				.build(NaverLoginApi.instance());

		return oauthService.getAuthorizationUrl();
	}

	/* �׾Ʒ� Callback ó�� ��  AccessToken ȹ�� Method */
	public OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws IOException{
		
		/* Callback���� ���޹��� ���������� �������� ���ǿ� ����Ǿ��ִ� ���� ��ġ�ϴ��� Ȯ�� */
		String sessionState = getSession(session);
		if(StringUtils.equals(sessionState, state)){
		
			OAuth20Service oauthService = new ServiceBuilder()
					.apiKey(CLIENT_ID)
					.apiSecret(CLIENT_SECRET)
					.callback(REDIRECT_URI)
					.state(state)
					.build(NaverLoginApi.instance());
					
			/* Scribe���� �����ϴ� AccessToken ȹ�� ������� �׾Ʒ� Access Token�� ȹ�� */
			OAuth2AccessToken accessToken = oauthService.getAccessToken(code);
			return accessToken;
		}
		return null;
	}
	
	/* ���� ��ȿ�� ������ ���� ���� ������ */
	private String generateRandomString() {
		return UUID.randomUUID().toString();
	}
	
	/* http session�� ������ ���� */
	private void setSession(HttpSession session,String state){
		session.setAttribute(SESSION_STATE, state);		
	}

	/* http session���� ������ �������� */	
	private String getSession(HttpSession session){
		return (String) session.getAttribute(SESSION_STATE);
	}
	
	/* Access Token�� �̿��Ͽ� ���̹� ����� ������ API�� ȣ�� */
	public String getUserProfile(OAuth2AccessToken oauthToken) throws IOException{

		OAuth20Service oauthService =new ServiceBuilder()
    			.apiKey(CLIENT_ID)
    			.apiSecret(CLIENT_SECRET)
    			.callback(REDIRECT_URI).build(NaverLoginApi.instance());
    	
		OAuthRequest request = new OAuthRequest(Verb.GET, PROFILE_API_URL, oauthService);
		oauthService.signRequest(oauthToken, request);
		Response response = request.send();
		return response.getBody();
	}


	
}
