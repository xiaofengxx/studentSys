package com.hudongwx.testing.common;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseQuestions<M extends BaseQuestions<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Integer id) {
		set("id", id);
	}

	public java.lang.Integer getId() {
		return get("id");
	}

	public void setBigTypeId(java.lang.Integer bigTypeId) {
		set("big_type_id", bigTypeId);
	}

	public java.lang.Integer getBigTypeId() {
		return get("big_type_id");
	}

	public void setType(java.lang.Integer type) {
		set("type", type);
	}

	public java.lang.Integer getType() {
		return get("type");
	}

	public void setTitle(java.lang.String title) {
		set("title", title);
	}

	public java.lang.String getTitle() {
		return get("title");
	}

	public void setContent(java.lang.String content) {
		set("content", content);
	}

	public java.lang.String getContent() {
		return get("content");
	}

	public void setOptionScore(java.lang.String optionScore) {
		set("option_score", optionScore);
	}

	public java.lang.String getOptionScore() {
		return get("option_score");
	}

}
