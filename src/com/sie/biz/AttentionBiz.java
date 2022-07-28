package com.sie.biz;

import java.util.List;

import com.sie.dao.AttentionDao;
import com.sie.entity.Attention;
import com.sie.entity.HouseInfo;

public class AttentionBiz {
	
	AttentionDao ad=new AttentionDao();
	public String addAttention(Attention at){
		return ad.addAttention(at);
	}
	public List<HouseInfo> getMyAttention(String usrID){
		return ad.getMyAttention(usrID);
	}
	public boolean deleteMyAttention(String hiID){
		return ad.deleteMyAttention(hiID);
	}
}
