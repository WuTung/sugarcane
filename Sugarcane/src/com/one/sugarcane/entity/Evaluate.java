package com.one.sugarcane.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="EVALUATE")
public class Evaluate {

	private Integer evaluateID;
	private String content;
	private String evaluateImg;
	private int render;
	private UserLogin userLogin;
	private Course course;
	@Id
	@GeneratedValue(generator="a")
	@GenericGenerator(name="a",strategy="identity")
	public Integer getEvaluateID() {
		return evaluateID;
	}
	public void setEvaluateID(Integer evaluateID) {
		this.evaluateID = evaluateID;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getEvaluateImg() {
		return evaluateImg;
	}
	public void setEvaluateImg(String evaluateImg) {
		this.evaluateImg = evaluateImg;
	}
	public int getRender() {
		return render;
	}
	public void setRender(int render) {
		this.render = render;
	}
	@ManyToOne
	@JoinColumn(name="userID")
	public UserLogin getUserLogin() {
		return userLogin;
	}
	public void setUserLogin(UserLogin userLogin) {
		this.userLogin = userLogin;
	}
	@ManyToOne
	@JoinColumn(name="courseID")
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public Evaluate(String content, String evaluateImg, int render, UserLogin userLogin, Course course) {
		super();
		this.content = content;
		this.evaluateImg = evaluateImg;
		this.render = render;
		this.userLogin = userLogin;
		this.course = course;
	}
	public Evaluate() {
		
	}
	
	
}
