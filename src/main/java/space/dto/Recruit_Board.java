package space.dto;

import java.sql.Date;

public class Recruit_Board {
	
	private int id;
	private String title;
	private String content;
	private String writer;
	private Date regist_Date;
	private int views;
	
	public Recruit_Board() {}
	
	public Recruit_Board(int id, String title, String content, String writer) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.writer = writer;
	}

	public Recruit_Board(int id, String title, String content, String writer, Date regist_Date, int views) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.regist_Date = regist_Date;
		this.views = views;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
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



	public String getWriter() {
		return writer;
	}



	public void setWriter(String writer) {
		this.writer = writer;
	}



	public Date getRegist_Date() {
		return regist_Date;
	}



	public void setRegist_Date(Date regist_Date) {
		this.regist_Date = regist_Date;
	}



	public int getViews() {
		return views;
	}



	public void setViews(int views) {
		this.views = views;
	}



	@Override
	public String toString() {
		return "Recruit_Board [id=" + id + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regist_Date=" + regist_Date + ", views=" + views + "]";
	}		
}