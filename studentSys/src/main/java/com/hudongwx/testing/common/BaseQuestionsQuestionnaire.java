package com.hudongwx.testing.common;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseQuestionsQuestionnaire<M extends BaseQuestionsQuestionnaire<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Integer id) {
		set("id", id);
	}

	public java.lang.Integer getId() {
		return get("id");
	}

	public void setIdQuestionnaire(java.lang.Integer idQuestionnaire) {
		set("id_questionnaire", idQuestionnaire);
	}

	public java.lang.Integer getIdQuestionnaire() {
		return get("id_questionnaire");
	}

	public void setIdQuestions(java.lang.Integer idQuestions) {
		set("id_questions", idQuestions);
	}

	public java.lang.Integer getIdQuestions() {
		return get("id_questions");
	}

	public void setCreateDate(java.lang.String createDate) {
		set("create_date", createDate);
	}

	public java.lang.String getCreateDate() {
		return get("create_date");
	}

}
