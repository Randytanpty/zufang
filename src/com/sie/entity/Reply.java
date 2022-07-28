package com.sie.entity;

public class Reply {
	private int replyID=0;
	private String replyContent=null;
	private String replyTime=null;
	private int usrID=0;
	private int hiID=0;
	public int getReplyID() {
		return replyID;
	}
	public void setReplyID(int replyID) {
		this.replyID = replyID;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getReplyTime() {
		return replyTime;
	}
	public void setReplyTime(String replyTime) {
		this.replyTime = replyTime;
	}
	public int getUsrID() {
		return usrID;
	}
	public void setUsrID(int usrID) {
		this.usrID = usrID;
	}
	public int getHiID() {
		return hiID;
	}
	public void setHiID(int hiID) {
		this.hiID = hiID;
	}
	
}
