package com.buy.all.modules.member;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;


public class Member {
	
//	member
	private String ifmmSeq = "";
	private String ifmmId = "";
	private String ifmmPassword = "";
	private String ifmmName = "";
	private String ifmmNickname = "";
	private Integer ifmmDelNy = 0;
	
//	member email
	private String ifmeEmailFull = "";
	private Integer ifmeDelNy = 0;
	
//	½Ã°£
	private Date regDateTime;
	private Date modDateTime;
	
	
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
	
	
}