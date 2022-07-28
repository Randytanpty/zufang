package com.sie.biz;

import java.util.List;

import com.sie.dao.UsrDao;
import com.sie.entity.Usr;

public class UsrBiz {
	
	UsrDao usrDao=new UsrDao();
	public boolean reg(Usr usr){
		return usrDao.reg(usr);
	}
	
	public boolean login(String usrAccount,String usrPassword){
		return usrDao.login(usrAccount, usrPassword);
	}
	
	public List<Usr> getUsr(String usrAccount){
		return usrDao.getUsr(usrAccount);
	}
	
	public boolean editPassword(String usrAccount, String oldUsrPassword,
			String newUsrPassword){
		return usrDao.editPassword(usrAccount, oldUsrPassword, newUsrPassword);
	}
	
	public List<Usr> getAllUsr(){
		return usrDao.getAllUsr();
	}
}
