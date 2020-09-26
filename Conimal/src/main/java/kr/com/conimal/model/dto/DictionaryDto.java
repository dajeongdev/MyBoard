package kr.com.conimal.model.dto;

import java.util.Date;

public class DictionaryDto {
	private int dictionary_idx;
	private int user_idx; // 회원 번호 
	private String title; // 제목 
	private String content; // 내용 
	private int hit; // 조회수 
	private Date reg_date;
	private Date update_date;
	private char show_yn; // default 'Y'
	private char del_yn; // default 'N'
	
	public int getDictionary_idx() {
		return dictionary_idx;
	}
	public void setDictionary_idx(int dictionary_idx) {
		this.dictionary_idx = dictionary_idx;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public char getShow_yn() {
		return show_yn;
	}
	public void setShow_yn(char show_yn) {
		this.show_yn = show_yn;
	}
	public char getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(char del_yn) {
		this.del_yn = del_yn;
	}
	
}