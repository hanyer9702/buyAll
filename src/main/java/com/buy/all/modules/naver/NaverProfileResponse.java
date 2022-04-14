package com.buy.all.modules.naver;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonInclude(JsonInclude.Include.NON_NULL) //null인 데이터는 가져오지 않음
public class NaverProfileResponse {

	@JsonProperty("resultcode")
	private String resultcode;
	@JsonProperty("message")
	private String message;
	@JsonProperty("response")
	private NaverUser response;
	
	@JsonProperty("resultcode")
	public String getResultcode() {
		return resultcode;
	}

	@JsonProperty("resultcode")
	public void setResultcode(String resultcode) {
		this.resultcode = resultcode;
	}

	@JsonProperty("message")
	public String getMessage() {
		return message;
	}

	@JsonProperty("message")
	public void setMessage(String message) {
		this.message = message;
	}
	
	@JsonProperty("response")
	public NaverUser getResponse() {
		return response;
	}
	
	@JsonProperty("response")
	public void setResponse(NaverUser response) {
		this.response = response;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
