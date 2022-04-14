package com.buy.all.modules.naver;

import java.util.Date;

import com.buy.all.modules.member.Member;

public class SnsUser extends Member{

	@SuppressWarnings("unused")
	private SnsUser(){}
	
	public SnsUser(String userName, String password, String email, String nickName, String mobile) {
		super(userName, password, email, nickName, mobile);
	}

	public SnsUser(String userName, NaverUser naverUser){
		super(userName, null, naverUser.getEmail(), naverUser.getNickname(), null);
		this.snsId = naverUser.getId();
		this.snsType = "NAVER";
		this.snsName = naverUser.getName();
		this.snsProfile = naverUser.getProfileImage();
	}
	
	private String snsId;
	private String snsType;
	private String snsName;
	private String snsProfile;
	private Date snsConnectDate;
	
	public String getSnsId() {
		return snsId;
	}

	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}

	public String getSnsType() {
		return snsType;
	}

	public void setSnsType(String snsType) {
		this.snsType = snsType;
	}

	public String getSnsName() {
		return snsName;
	}

	public void setSnsName(String snsName) {
		this.snsName = snsName;
	}

	public String getSnsProfile() {
		return snsProfile;
	}

	public void setSnsProfile(String snsProfile) {
		this.snsProfile = snsProfile;
	}

	public Date getSnsConnectDate() {
		return snsConnectDate;
	}

	public void setSnsConnectDate(Date snsConnectDate) {
		this.snsConnectDate = snsConnectDate;
	}
	
	
}
