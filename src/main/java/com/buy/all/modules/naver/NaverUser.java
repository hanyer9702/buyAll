package com.buy.all.modules.naver;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
@JsonInclude(JsonInclude.Include.NON_NULL) //null인 데이터는 가져오지 않음
public class NaverUser {
	
	@JsonProperty("email")
	private String email;
	@JsonProperty("nickname")
	private String nickname;
	@JsonProperty("enc_id")
	private String encId;
	@JsonProperty("profile_image")
	private String profileImage;
	@JsonProperty("age")
	private String age;
	@JsonProperty("gender")
	private String gender;
	@JsonProperty("id")
	private String id;
	@JsonProperty("name")
	private String name;
	@JsonProperty("birthday")
	private String birthday;
	@JsonProperty("mobile")
	private String mobile;
	
	@JsonProperty("email")
	public String getEmail() {
		return email;
	}

	@JsonProperty("email")
	public void setEmail(String email) {
		this.email = email;
	}

	@JsonProperty("nickname")
	public String getNickname() {
		return nickname;
	}

	@JsonProperty("nickname")
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	@JsonProperty("enc_id")
	public String getEncId() {
		return encId;
	}

	@JsonProperty("enc_id")
	public void setEncId(String encId) {
		this.encId = encId;
	}

	
	@JsonProperty("profile_image")
	public String getProfileImage() {
		return profileImage;
	}


	@JsonProperty("profile_image")
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}

	@JsonProperty("age")
	public String getAge() {
		return age;
	}

	@JsonProperty("age")
	public void setAge(String age) {
		this.age = age;
	}

	@JsonProperty("gender")
	public String getGender() {
		return gender;
	}

	
	@JsonProperty("gender")
	public void setGender(String gender) {
		this.gender = gender;
	}

	@JsonProperty("id")
	public String getId() {
		return id;
	}

	@JsonProperty("id")
	public void setId(String id) {
		this.id = id;
	}

	@JsonProperty("name")
	public String getName() {
		return name;
	}

	@JsonProperty("name")
	public void setName(String name) {
		this.name = name;
	}

	@JsonProperty("birthday")
	public String getBirthday() {
		return birthday;
	}

	@JsonProperty("birthday")
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	@JsonProperty("mobile")
	public String getmobile() {
		return mobile;
	}
	
	@JsonProperty("mobile")
	public void setmobile(String mobile) {
		this.mobile = mobile;
	}

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	
}
