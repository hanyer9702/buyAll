package com.buy.all.modules.member;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;

import com.buy.all.modules.common.util.SecureUtils;


public class Member {
	
//	member
	private String ifmmSeq = "";
	private String ifmmId = "";
	private String ifmmPassword = "";
	private String ifmmName = "";
	private String ifmmNickname = "";
	private Integer ifmmDelNy = 0;
	private String ifmmClassificationCd = "";
	
//	member email
	private String ifmeEmailFull = "";
	private Integer ifmeDelNy = 0;
	
//	member phone
	private String ifmpNumber = "";
	
//	시간
	private Date regDateTime;
	private Date modDateTime;
	
//	네이버
	private static final String DEFAULT_PASSPHRASE = "!@#!@#%^!(#$!@#asl1aoS9Va021@#";
	
	@SuppressWarnings("unused")
	protected Member(){}
	
	public Member(String userName, String password, String email, String nickName, String mobile) {
		super();
		this.ifmmName = userName;
		if(StringUtils.isEmpty(password)){
			this.ifmmPassword = SecureUtils.getPasswordHash(DEFAULT_PASSPHRASE, DEFAULT_PASSPHRASE);
		} else {
			this.ifmmPassword = SecureUtils.getPasswordHash(password, userName);
		}
		this.ifmeEmailFull = email;
		this.ifmmNickname = nickName;
		this.ifmpNumber = mobile;
	}
	
	
//	--------------------------------
	public String getIfmmSeq() {
		return ifmmSeq;
	}
	public void setIfmmSeq(String ifmmSeq) {
		this.ifmmSeq = ifmmSeq;
	}
	public String getIfmmId() {
		return ifmmId;
	}
	public void setIfmmId(String ifmmId) {
		this.ifmmId = ifmmId;
	}
	public String getIfmmPassword() {
		return ifmmPassword;
	}
	public void setIfmmPassword(String ifmmPassword) {
		this.ifmmPassword = ifmmPassword;
	}
	public String getIfmmNickname() {
		return ifmmNickname;
	}
	public void setIfmmNickname(String ifmmNickname) {
		this.ifmmNickname = ifmmNickname;
	}
	public Integer getIfmmDelNy() {
		return ifmmDelNy;
	}
	public void setIfmmDelNy(Integer ifmmDelNy) {
		this.ifmmDelNy = ifmmDelNy;
	}
	public String getIfmeEmailFull() {
		return ifmeEmailFull;
	}
	public void setIfmeEmailFull(String ifmeEmailFull) {
		this.ifmeEmailFull = ifmeEmailFull;
	}
	public Integer getIfmeDelNy() {
		return ifmeDelNy;
	}
	public void setIfmeDelNy(Integer ifmeDelNy) {
		this.ifmeDelNy = ifmeDelNy;
	}
	public Date getRegDateTime() {
		return regDateTime;
	}
	public void setRegDateTime(Date regDateTime) {
		this.regDateTime = regDateTime;
	}
	public Date getModDateTime() {
		return modDateTime;
	}
	public void setModDateTime(Date modDateTime) {
		this.modDateTime = modDateTime;
	}
	public String getIfmmName() {
		return ifmmName;
	}
	public void setIfmmName(String ifmmName) {
		this.ifmmName = ifmmName;
	}
	public String getIfmmClassificationCd() {
		return ifmmClassificationCd;
	}
	public void setIfmmClassificationCd(String ifmmClassificationCd) {
		this.ifmmClassificationCd = ifmmClassificationCd;
	}
	public boolean isValidPassword(String plainPassword){
		return SecureUtils.isMatchedPassword(plainPassword, this.ifmmName, this.ifmmPassword);
	}
	@Override
	public String toString(){
		return ToStringBuilder.reflectionToString(this);
	}
}