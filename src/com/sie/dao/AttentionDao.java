package com.sie.dao;

import java.util.ArrayList;
import java.util.List;

import com.sie.entity.Attention;
import com.sie.entity.HouseInfo;

public class AttentionDao extends DataBaseDao{
	
	/**
	 * 1.����Ƿ��ע�� 2.����ע��Ŀ�Ƿ񳬹�ʮ�� 3.���������ӹ�ע
	 */
	public String addAttention(Attention at){
		try {
			String sqlCheckRepeat="select * from attention where hiID=? and usrID=?";
			ps=this.getCon().prepareStatement(sqlCheckRepeat);
			ps.setString(1, Integer.toString(at.getHiID()));
			ps.setString(2, Integer.toString(at.getUsrID()));
			rs=ps.executeQuery();
			if(rs.next()){
				return "repeat";
			}else {
				String sqlCheckCount="select count(*) from attention where usrID=?";
				ps=this.getCon().prepareStatement(sqlCheckCount);
				ps.setString(1, Integer.toString(at.getUsrID()));
				rs=ps.executeQuery();
				int count=0;
				while(rs.next()){
					count=Integer.parseInt(rs.getString(1));
				}
				if(count<10){
					String sql="insert into attention values(?,?)";
					String []param={Integer.toString(at.getUsrID()),Integer.toString(at.getHiID())};
					if(executeSql(sql, param)>0){
						return "success";//��ע�ɹ�
					}
					else {
						return "failed";//��עʧ��
					}
				}else {
					return "many";//��ע����ʮ����
				}
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return "error";//�쳣�����ػؿ�
		}
	}
	
	/**
	 * �鿴��ע����Ϣ
	 * @param usrID
	 * @return
	 */
	public List<HouseInfo> getMyAttention(String usrID){
		try {
			String sql="select * from attention inner join houseInfo on attention.hiID=houseInfo.hiID where attention.usrID=?";
			List<HouseInfo> hiList=new ArrayList<HouseInfo>();
			ps=this.getCon().prepareStatement(sql);
			ps.setString(1, usrID);
			rs=ps.executeQuery();
			while (rs.next()) {
				HouseInfo hi = new HouseInfo();
				hi.setUsrID(Integer.parseInt(rs.getString(1)));
				hi.setHiID(Integer.parseInt(rs.getString(2)));
				hi.setHiSection(rs.getString(4));
				hi.setHiShi(rs.getString(5));
				hi.setHiTing(rs.getString(6));
				hi.setHiWei(rs.getString(7));
				hi.setHiChu(rs.getString(8));
				hi.setHiArea(rs.getString(9));
				hi.setHiPrice(rs.getString(10));
				hi.setHiAddress(rs.getString(11));
				hi.setHiAction(rs.getString(12));
				hi.setHiFloor(rs.getString(13));
				hi.setHiTime(rs.getString(14));
				hi.setHiContent(rs.getString(15));
				hi.setHiImg(rs.getString(16));
				hiList.add(hi);
			}
			System.out.println(hiList.size());
			return hiList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * ȡ����ע
	 * @param hiID
	 * @return
	 */
	public boolean deleteMyAttention(String hiID){
		try {
			String sql="delete from attention where hiID=?";
			ps=this.getCon().prepareStatement(sql);
			String []param={hiID};
			if(executeSql(sql, param)>0){
				return true;
			}
			return false;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
}
