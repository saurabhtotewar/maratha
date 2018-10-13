package com.eagle.Marathavaduvar.entity; 

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="MarathaRegistration")

public class MarathaRegistration implements Serializable {
	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "REGID")
	private Long id;

	@Column(name = "First_name")
private String firstName = "";
	
	@Column(name = "Last_name")
private String lastName = "";
	
	@Column(name = "Gender")
private String gender = "";

	@Column(name = "Marital_Status")
private String maritalStatus = "";
	
	@Column(name = "Caste")
private String caste = "";
	
	@Column(name = "subCaste")
private String subCaste = "";
	
	@Column(name = "dob")
private String dob ;

	@Column(name = "profileCreatedBy")
private String profileCreatedBy = "";
	
	@Column(name = "EmailId")
private String email = "";
	
	@Column(name = "Religion")
private String religion = "";

	
	@Column(name = "Mobile")
private String mobile = "";
	
	
	@Column(name = "Phone")
private String phone = "";

	@Column(name = "Gothra")
private String gothra = "";

	@Column(name = "Moonsign")
private String moonsign = "";
	
	@Column(name = "HorosMatch")
private String horosMatch = "";
	
	@Column(name = "Manglik")
private String manglik = "";
	
	@Column(name = "BirthPlace")
private String birthPlace = "";
	
	@Column(name = "BirthTime")
private String birthTime = "";

	@Column(name = "Height")
private String height = "";
	
	@Column(name = "Weight")
private String weight = "";
	
	@Column(name = "BloodGroup")
private String bloodGroup = "";
	
	@Column(name = "Complexion")
private String complexion = "";
	
	@Column(name = "Physically_challenged")
private String physicallychallenged = "";
	
	@Column(name = "photo")
private String photo="" ;

	
	@Column(name = "Educational_Area")
private String educationalArea = "";
	
	@Column(name = "Education")
private String education = "";
	
	@Column(name = "Occupation")
private String occupation = "";
	
	@Column(name = "Occupation_City")
private String occupationCity = "";
	
	@Column(name = "education_City")
private String educationCity = "";
	
	@Column(name = "Income")
private String income = "";

	@Column(name = "Preferred_City")
private String preferredCity = "";
	
	@Column(name = "Manglik_Exp")
private String manglikExp = "";
	
	@Column(name = "Height_Exp")
private String heightExp = "";
	
	@Column(name = "Education_Exp")
private String educationExp = "";
	
	@Column(name = "Occupation_Exp")
private String occupationExp = "";
	
	@Column(name = "Income_Exp")
private String incomeExp = "";
	

	@Column(name="USERNAME")
	private String userName;


	@Column(name="PASSWORD")
	private String password;
	
	
	@Column(name = "Accept")	
private String accept = "";

	@Column(name = "Join_Date")
	
private Date joindate ;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
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

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
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

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
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

	public String getMoonsign() {
		return moonsign;
	}

	public void setMoonsign(String moonsign) {
		this.moonsign = moonsign;
	}

	public String getHorosMatch() {
		return horosMatch;
	}

	public void setHorosMatch(String horosMatch) {
		this.horosMatch = horosMatch;
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

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
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

	public String getPhysicallychallenged() {
		return physicallychallenged;
	}

	public void setPhysicallychallenged(String physicallychallenged) {
		this.physicallychallenged = physicallychallenged;
	}


	

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
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

	public String getOccupationCity() {
		return occupationCity;
	}

	public void setOccupationCity(String occupationCity) {
		this.occupationCity = occupationCity;
	}

	public String getEducationCity() {
		return educationCity;
	}

	public void setEducationCity(String educationCity) {
		this.educationCity = educationCity;
	}

	public String getIncome() {
		return income;
	}

	public void setIncome(String income) {
		this.income = income;
	}

	public String getPreferredCity() {
		return preferredCity;
	}

	public void setPreferredCity(String preferredCity) {
		this.preferredCity = preferredCity;
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

	public String getIncomeExp() {
		return incomeExp;
	}

	public void setIncomeExp(String incomeExp) {
		this.incomeExp = incomeExp;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccept() {
		return accept;
	}

	public void setAccept(String accept) {
		this.accept = accept;
	}

	public Date getJoindate() {
		return joindate;
	}

	public void setJoindate(Date joindate) {
		this.joindate = joindate;
	}

	@Override
	public String toString() {
		return "MarathaRegistration [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", gender="
				+ gender + ", maritalStatus=" + maritalStatus + ", caste=" + caste + ", subCaste=" + subCaste + ", dob="
				+ dob + ", profileCreatedBy=" + profileCreatedBy + ", email=" + email + ", religion=" + religion
				+ ", mobile=" + mobile + ", phone=" + phone + ", gothra=" + gothra + ", moonsign=" + moonsign
				+ ", horosMatch=" + horosMatch + ", manglik=" + manglik + ", birthPlace=" + birthPlace + ", birthTime="
				+ birthTime + ", height=" + height + ", weight=" + weight + ", bloodGroup=" + bloodGroup
				+ ", complexion=" + complexion + ", physicallychallenged=" + physicallychallenged + ", photo=" + photo
				+ ", educationalArea=" + educationalArea + ", education=" + education + ", occupation=" + occupation
				+ ", occupationCity=" + occupationCity + ", educationCity=" + educationCity + ", income=" + income
				+ ", preferredCity=" + preferredCity + ", manglikExp=" + manglikExp + ", heightExp=" + heightExp
				+ ", educationExp=" + educationExp + ", occupationExp=" + occupationExp + ", incomeExp=" + incomeExp
				+ ", userName=" + userName + ", password=" + password + ", accept=" + accept + ", joindate=" + joindate
				+ "]";
	}

	
}