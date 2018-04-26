package com.one.sugarcane.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
@Entity
@Table(name="QUESTIONBANK")
public class QuestionBank {
	private Integer questionID;
	private String questionStem;
	private String options;
	private String answer;
	private Set<GradeCondition>gradeConditon = new HashSet<GradeCondition>();
	private PublicCourseType publicCourseType;
	@Id
	@GeneratedValue(generator="a")
	@GenericGenerator(name="a",strategy="identity")
	public Integer getQuestionID() {
		return questionID;
	}
	public void setQuestionID(Integer questionID) {
		this.questionID = questionID;
	}
	public String getQuestionStem() {
		return questionStem;
	}
	public void setQuestionStem(String questionStem) {
		this.questionStem = questionStem;
	}
	public String getOptions() {
		return options;
	}
	public void setOptions(String options) {
		this.options = options;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	@OneToMany(mappedBy="questionBank",targetEntity=GradeCondition.class,cascade=CascadeType.MERGE)
	public Set<GradeCondition> getGradeConditon() {
		return gradeConditon;
	}
	public void setGradeConditon(Set<GradeCondition> gradeConditon) {
		this.gradeConditon = gradeConditon;
	}
	@ManyToOne
	@JoinColumn(name="courseTypeID")
	public PublicCourseType getPublicCourseType() {
		return publicCourseType;
	}
	public void setPublicCourseType(PublicCourseType publicCourseType) {
		this.publicCourseType = publicCourseType;
	}
	public QuestionBank() {}
	public QuestionBank(String questionStem, String options, String answer, Set<GradeCondition> gradeConditon,
			PublicCourseType publicCourseType) {
		super();
		this.questionStem = questionStem;
		this.options = options;
		this.answer = answer;
		this.gradeConditon = gradeConditon;
		this.publicCourseType = publicCourseType;
	}
	
}
