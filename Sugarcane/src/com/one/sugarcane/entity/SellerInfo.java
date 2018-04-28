package com.one.sugarcane.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="SELLERINFO")
public class SellerInfo {
	private Integer sellerID;
	private String sellerName;
	private String sellerEmain;
	private int sellerPhoneNumber;
	private String brief;
	private int numberOfEmployees;
	private String educationBureauApproved;
	private String proofOfHouse;
	private String fireSafetyCertificate;
	private String businessLisense;
	private String address_province;
	private String address_city;
	private String address_area;
	private String address_detail;
	private int qualified;
	private SellerLogin sellerLogin;
	@Id
	@GeneratedValue(generator="a")
	@GenericGenerator(name="a",strategy="identity")
	public Integer getSellerID() {
		return sellerID;
	}
	public void setSellerID(Integer sellerID) {
		this.sellerID = sellerID;
	}
	public String getSellerName() {
		return sellerName;
	}
	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}
	public String getSellerEmain() {
		return sellerEmain;
	}
	public void setSellerEmain(String sellerEmain) {
		this.sellerEmain = sellerEmain;
	}
	public int getSellerPhoneNumber() {
		return sellerPhoneNumber;
	}
	public void setSellerPhoneNumber(int sellerPhoneNumber) {
		this.sellerPhoneNumber = sellerPhoneNumber;
	}
	public String getBrief() {
		return brief;
	}
	public void setBrief(String brief) {
		this.brief = brief;
	}
	public int getNumberOfEmployees() {
		return numberOfEmployees;
	}
	public void setNumberOfEmployees(int numberOfEmployees) {
		this.numberOfEmployees = numberOfEmployees;
	}
	public String getEducationBureauApproved() {
		return educationBureauApproved;
	}
	public void setEducationBureauApproved(String educationBureauApproved) {
		this.educationBureauApproved = educationBureauApproved;
	}
	public String getProofOfHouse() {
		return proofOfHouse;
	}
	public void setProofOfHouse(String proofOfHouse) {
		this.proofOfHouse = proofOfHouse;
	}
	public String getFireSafetyCertificate() {
		return fireSafetyCertificate;
	}
	public void setFireSafetyCertificate(String fireSafetyCertificate) {
		this.fireSafetyCertificate = fireSafetyCertificate;
	}
	public String getBusinessLisense() {
		return businessLisense;
	}
	public void setBusinessLisense(String businessLisense) {
		this.businessLisense = businessLisense;
	}
	public String getAddress_province() {
		return address_province;
	}
	public void setAddress_province(String address_province) {
		this.address_province = address_province;
	}
	public String getAddress_city() {
		return address_city;
	}
	public void setAddress_city(String address_city) {
		this.address_city = address_city;
	}
	public String getAddress_area() {
		return address_area;
	}
	public void setAddress_area(String address_area) {
		this.address_area = address_area;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public int getQualified() {
		return qualified;
	}
	public void setQualified(int qualified) {
		this.qualified = qualified;
	}
	@OneToOne(mappedBy="sellerInfo")
	public SellerLogin getSellerLogin() {
		return sellerLogin;
	}
	public void setSellerLogin(SellerLogin sellerLogin) {
		this.sellerLogin = sellerLogin;
	}
	public SellerInfo(String sellerName, String sellerEmain, int sellerPhoneNumber, String brief, int numberOfEmployees,
			String educationBureauApproved, String proofOfHouse, String fireSafetyCertificate, String businessLisense,
			String address_province, String address_city, String address_area, String address_detail, int qualified,
			SellerLogin sellerLogin) {
		super();
		this.sellerName = sellerName;
		this.sellerEmain = sellerEmain;
		this.sellerPhoneNumber = sellerPhoneNumber;
		this.brief = brief;
		this.numberOfEmployees = numberOfEmployees;
		this.educationBureauApproved = educationBureauApproved;
		this.proofOfHouse = proofOfHouse;
		this.fireSafetyCertificate = fireSafetyCertificate;
		this.businessLisense = businessLisense;
		this.address_province = address_province;
		this.address_city = address_city;
		this.address_area = address_area;
		this.address_detail = address_detail;
		this.qualified = qualified;
		this.sellerLogin = sellerLogin;
	}
	public SellerInfo() {
		
	}
	
}
