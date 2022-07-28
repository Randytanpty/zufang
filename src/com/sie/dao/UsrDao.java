package com.sie.dao;

import java.util.ArrayList;
import java.util.List;

import com.sie.entity.Usr;
import com.sie.util.MD5;

public class UsrDao extends DataBaseDao {

	MD5 md5 = new MD5();// MD5加密

	/**
	 * 用户登录
	 */
	public boolean login(String usrAccount, String usrPassword) {
		// TODO Auto-generated method stub
		try {

			String sql = "select usrPassword from usr where usrAccount=?";
			ps = this.getCon().prepareStatement(sql);
			ps.setString(1, usrAccount);
			rs = ps.executeQuery();
			String usrPassword_temp = "";
			while (rs.next()) {
				usrPassword_temp = rs.getString(1);
			}
			if (md5.MD5Encode(usrPassword).equals(usrPassword_temp)) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			closeDB(rs, ps, con);
			return false;
		}
	}
	
	public List<Usr> getUsr(String usrAccount){
		try {
			List<Usr> usrList=new ArrayList<Usr>();
			String sql="select usrID,usrName from usr where usrAccount=?";
			ps=this.getCon().prepareStatement(sql);
			ps.setString(1, usrAccount);
			rs=ps.executeQuery();
			while (rs.next()) {
				Usr usr=new Usr();
				usr.setUsrID(Integer.parseInt(rs.getString(1)));
				usr.setUsrName(rs.getString(2));
				usrList.add(usr);
			}
			return usrList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * 用户注册
	 * 
	 * @param usrName
	 * @param usrPassword
	 */
	public boolean reg(Usr usr) {
		try {
				String sql = "insert into usr values(?,?,?,?,?,?,?)";
				String[] param = { usr.getUsrAccount(),
						md5.MD5Encode(usr.getUsrPassword()), usr.getUsrName(),
						usr.getUsrAddress(), usr.getUsrSex(), usr.getUsrPhone(),
						usr.getUsrEmail() };
				if (executeSql(sql, param) > 0) {
					return true;
				}
				return false;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			closeDB(rs, ps, con);
			return false;
		}
	}
	
	/**
	 * 修改密码
	 * @param usrAccount
	 * @param oldUsrPassword
	 * @param newUsrPassword
	 * @return
	 */
	public boolean editPassword(String usrAccount, String oldUsrPassword,
			String newUsrPassword) {
		try {
			if (this.login(usrAccount, oldUsrPassword)) {
				try {
					String sql = "update usr set usrPassword=? where usrAccount=?";
					ps = this.getCon().prepareStatement(sql);
					String []param = { md5.MD5Encode(newUsrPassword), usrAccount };
					if (executeSql(sql, param) > 0) {
						return true;
					} else {
						return false;
					}

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
					return false;
				}
			} else {
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	public List<Usr> getAllUsr(){
		try {
			List<Usr> usrList=new ArrayList<Usr>();
			String sql="select * from usr";
			ps=this.getCon().prepareStatement(sql);
			rs=ps.executeQuery();
			while (rs.next()) {
				Usr usr=new Usr();
				usr.setUsrID(Integer.parseInt(rs.getString(1)));
				usr.setUsrName(rs.getString(4));
				usr.setUsrPhone(rs.getString(7));
				usrList.add(usr);
			}
			return usrList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
}
