package com.sie.biz;

import java.util.List;

import com.sie.dao.HouseInfoDao;
import com.sie.entity.HouseInfo;

public class HouseInfoBiz {
	
	HouseInfoDao hid=new HouseInfoDao();
	
	public List<HouseInfo> getAll(int page){
		return hid.getAll(page);
	}
	
	public List<HouseInfo> getMyPub(int pageCount,String usrID){
		return hid.getMyPub(pageCount,usrID);
	}

	public boolean publish(HouseInfo hi){
		return hid.publish(hi);
	}
	public int pageCount(String usrID){
		return hid.pageCount(usrID);
	}
	
	public boolean delByHiID(String hiID){
		return hid.delByHiID(hiID);
	}
	public List<HouseInfo> getHiByID(String hiID){
		return hid.getHiByID(hiID);
	}
	public int pageCount2(String sql){
		return hid.pageCount2(sql);
	}
	public List<HouseInfo> getByCondition(int page,String condition){
		return hid.getByCondition(page,condition);
	}
	
	public int rec(String sql){
		return hid.rec(sql);
	}
	
	public int indexPage(){
		return hid.indexPage();
	}
	
	public int indexRec(){
		return hid.indexRec();
	}
	public boolean edit(String hiID,String hiPrice){
		return hid.edit(hiID, hiPrice);
	}
}
