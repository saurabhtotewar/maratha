package com.eagle.Marathavaduvar.input;




import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class MarathaRegistrationRequest {
	
	private Long registrationId;

	private String name = "";

	private String lastName = "";

	private String dob ;
	
	private String caste = "";
	
	private String subCaste = "";

	private String gender = "";
		
	private String maritalStatus = "";
	
    private String profileCreatedBy = "";
	
	private String email = "";
	
	private String mobile ;
	
	private String phone  ;
	
	private String gothra = "";
	
	private String horosMatch = "";
	
	private String manglik = "";

	private String moonsign = "";
	
	private String birthPlace = "";
	
	private String birthTime = "";

	private String heigth = "";
	
	private String weight = "";
	
	private String bloodGroup  = "";
	
    private String complexion  = "";
	
	private String physicalStatus = "";
	
	private MultipartFile photo ;
	
	private String educationalArea = "";
	
	private String education = "";
	
	private String occupation = "";
	
	private String educationCity = "";
	
	private String preferredCity = "";
	
	private String income = "";
	
	private String manglikExp = "";
	
	private String heightExp = "";
	
	private String educationExp = "";
	
	private String occupationExp = "";
	
	private String accept = "";
	
	private String confirm = "";
	
	private String password = "";
	
	
	private Date joinDate = new Date();

	
	
	
	

	public MarathaRegistrationRequest() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Long getRegistrationId() {
		return registrationId;
	}


	public void setRegistrationId(Long registrationId) {
		this.registrationId = registrationId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}




	public String getDob() {
		return dob;
	}


	public void setDob(String dob) {
		this.dob = dob;
	}


	public String getCaste() {
		return caste;
	}


	public void setCaste(String caste) {
		this.caste = caste;
	}


	public String getSubCaste() {
		return subCaste;
	}


	public void setSubCaste(String subCaste) {
		this.subCaste = subCaste;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getMaritalStatus() {
		return maritalStatus;
	}


	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}


	public String getProfileCreatedBy() {
		return profileCreatedBy;
	}


	public void setProfileCreatedBy(String profileCreatedBy) {
		this.profileCreatedBy = profileCreatedBy;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getMobile() {
		return mobile;
	}


	public void setMobile(String mobile) {
		this.mobile = mobile;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getGothra() {
		return gothra;
	}


	public void setGothra(String gothra) {
		this.gothra = gothra;
	}


	public String getHorosMatch() {
		return horosMatch;
	}


	public void setHorosMatch(String horosMatch) {
		this.horosMatch = horosMatch;
	}


	public String getMoonsign() {
		return moonsign;
	}


	public void setMoonsign(String moonsign) {
		this.moonsign = moonsign;
	}

	public String getManglik() {
		return manglik;
	}


	public void setManglik(String manglik) {
		this.manglik = manglik;
	}

	public String getBirthPlace() {
		return birthPlace;
	}


	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}


	public String getBirthTime() {
		return birthTime;
	}


	public void setBirthTime(String birthTime) {
		this.birthTime = birthTime;
	}


	public String getHeigth() {
		return heigth;
	}


	public void setHeigth(String heigth) {
		this.heigth = heigth;
	}


	public String getWeight() {
		return weight;
	}


	public void setWeight(String weight) {
		this.weight = weight;
	}


	public String getBloodGroup() {
		return bloodGroup;
	}


	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}


	public String getComplexion() {
		return complexion;
	}


	public void setComplexion(String complexion) {
		this.complexion = complexion;
	}


	public String getPhysicalStatus() {
		return physicalStatus;
	}


	public void setPhysicalStatus(String physicalStatus) {
		this.physicalStatus = physicalStatus;
	}




	public MultipartFile getPhoto() {
		return photo;
	}


	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}


	public String getEducationalArea() {
		return educationalArea;
	}


	public void setEducationalArea(String educationalArea) {
		this.educationalArea = educationalArea;
	}


	public String getEducation() {
		return education;
	}


	public void setEducation(String education) {
		this.education = education;
	}


	public String getOccupation() {
		return occupation;
	}


	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}


	public String getEducationCity() {
		return educationCity;
	}


	public void setEducationCity(String educationCity) {
		this.educationCity = educationCity;
	}


	public String getPreferredCity() {
		return preferredCity;
	}


	public void setPreferredCity(String preferredCity) {
		this.preferredCity = preferredCity;
	}


	public String getIncome() {
		return income;
	}


	public void setIncome(String income) {
		this.income = income;
	}


	public String getManglikExp() {
		return manglikExp;
	}


	public void setManglikExp(String manglikExp) {
		this.manglikExp = manglikExp;
	}


	public String getHeightExp() {
		return heightExp;
	}


	public void setHeightExp(String heightExp) {
		this.heightExp = heightExp;
	}


	public String getEducationExp() {
		return educationExp;
	}


	public void setEducationExp(String educationExp) {
		this.educationExp = educationExp;
	}


	public String getOccupationExp() {
		return occupationExp;
	}


	public void setOccupationExp(String occupationExp) {
		this.occupationExp = occupationExp;
	}


	public String getAccept() {
		return accept;
	}


	public void setAccept(String accept) {
		this.accept = accept;
	}


	public String getConfirm() {
		return confirm;
	}


	public void setConfirm(String confirm) {
		this.confirm = confirm;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Date getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(Date joinDate) {
		this.joinDate = joinDate;
	}


	@Override
	public String toString() {
		return "MarathaRegistrationRequest [registrationId=" + registrationId + ", name=" + name + ", lastName="
				+ lastName + ", dob=" + dob + ", caste=" + caste + ", subCaste=" + subCaste + ", gender=" + gender
				+ ", maritalStatus=" + maritalStatus + ", profileCreatedBy="
				+ profileCreatedBy + ", email=" + email + ", mobile=" + mobile + ", phone=" + phone + ", gothra="
				+ gothra + ", horosMatch=" + horosMatch + ", moonsign=" + moonsign + ", birthPlace=" + birthPlace
				+ ", birthTime=" + birthTime + ", heigth=" + heigth + ", weight=" + weight + ", bloodGroup="
				+ bloodGroup + ", complexion=" + complexion + ", physicalStatus=" + physicalStatus + ", photo=" + photo
				+ ", educationalArea=" + educationalArea + ", education=" + education + ", occupation=" + occupation
				+ ", educationCity=" + educationCity + ", preferredCity=" + preferredCity + ", income=" + income
				+ ", manglikExp=" + manglikExp + ", heightExp=" + heightExp + ", educationExp=" + educationExp
				+ ", occupationExp=" + occupationExp + ", accept=" + accept + ", username=" + confirm + ", password="
				+ password + ", joinDate=" + joinDate + "]";
	}

	
	


}
