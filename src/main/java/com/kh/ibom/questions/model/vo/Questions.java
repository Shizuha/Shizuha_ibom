package com.kh.ibom.questions.model.vo;

import java.io.Serializable;
import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Questions implements Serializable{
	
	private static final long serialVersionUID = 6000L;
	
	private String qna_no;
	private String personal_info;
	private String user_service;
	private String civil_petition;
	private String qna_title;
	private java.sql.Date qna_date;
	private String qna_state;
	private String qna_content;
	private String qna_answer;
	private String user_id;
	private String dol_id;
	private String emp_id;
	private String term_code;
	
	public Questions() {}

	public Questions(String qna_no, String personal_info, String user_service, String civil_petition, String qna_title,
			Date qna_date, String qna_state, String qna_content, String qna_answer, String user_id, String dol_id,
			String emp_id, String term_code) {
		super();
		this.qna_no = qna_no;
		this.personal_info = personal_info;
		this.user_service = user_service;
		this.civil_petition = civil_petition;
		this.qna_title = qna_title;
		this.qna_date = qna_date;
		this.qna_state = qna_state;
		this.qna_content = qna_content;
		this.qna_answer = qna_answer;
		this.user_id = user_id;
		this.dol_id = dol_id;
		this.emp_id = emp_id;
		this.term_code = term_code;
	}

	public String getQna_no() {
		return qna_no;
	}

	public void setQna_no(String qna_no) {
		this.qna_no = qna_no;
	}

	public String getPersonal_info() {
		return personal_info;
	}

	public void setPersonal_info(String personal_info) {
		this.personal_info = personal_info;
	}

	public String getUser_service() {
		return user_service;
	}

	public void setUser_service(String user_service) {
		this.user_service = user_service;
	}

	public String getCivil_petition() {
		return civil_petition;
	}

	public void setCivil_petition(String civil_petition) {
		this.civil_petition = civil_petition;
	}

	public String getQna_title() {
		return qna_title;
	}

	public void setQna_title(String qna_title) {
		this.qna_title = qna_title;
	}

	public java.sql.Date getQna_date() {
		return qna_date;
	}

	public void setQna_date(java.sql.Date qna_date) {
		this.qna_date = qna_date;
	}

	public String getQna_state() {
		return qna_state;
	}

	public void setQna_state(String qna_state) {
		this.qna_state = qna_state;
	}

	public String getQna_content() {
		return qna_content;
	}

	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}

	public String getQna_answer() {
		return qna_answer;
	}

	public void setQna_answer(String qna_answer) {
		this.qna_answer = qna_answer;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDol_id() {
		return dol_id;
	}

	public void setDol_id(String dol_id) {
		this.dol_id = dol_id;
	}

	public String getEmp_id() {
		return emp_id;
	}

	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}

	public String getTerm_code() {
		return term_code;
	}

	public void setTerm_code(String term_code) {
		this.term_code = term_code;
	}

	@Override
	public String toString() {
		return "Questions [qna_no=" + qna_no + ", personal_info=" + personal_info + ", user_service=" + user_service
				+ ", civil_petition=" + civil_petition + ", qna_title=" + qna_title + ", qna_date=" + qna_date
				+ ", qna_state=" + qna_state + ", qna_content=" + qna_content + ", qna_answer=" + qna_answer
				+ ", user_id=" + user_id + ", dol_id=" + dol_id + ", emp_id=" + emp_id + ", term_code=" + term_code
				+ "]";
	}
	
}