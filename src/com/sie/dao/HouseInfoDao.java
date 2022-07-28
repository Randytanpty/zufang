package com.sie.dao;

import java.util.ArrayList;
import java.util.List;

import com.sie.entity.HouseInfo;
import com.sie.entity.Usr;

public class HouseInfoDao extends DataBaseDao {

	/**
	 * 在首页显示全部房源信息
	 * 
	 * @return
	 */
	public List<HouseInfo> getAll(int page) {
		try {
			List<HouseInfo> hiList = new ArrayList<HouseInfo>();
			int temp = 15;
			
			String sql = "select top 15 * from houseInfo where hiID not in (select top "
					+ temp
					+ " hiID from houseInfo order by hiID desc ) order by hiID desc ";
			ps = this.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				HouseInfo hi = new HouseInfo();
				hi.setHiID(Integer.parseInt(rs.getString(1)));
				hi.setHiSection(rs.getString(2));
				hi.setHiShi(rs.getString(3));
				hi.setHiTing(rs.getString(4));
				hi.setHiWei(rs.getString(5));
				hi.setHiChu(rs.getString(6));
				hi.setHiArea(rs.getString(7));
				hi.setHiPrice(rs.getString(8));
				hi.setHiAddress(rs.getString(9));
				hi.setHiAction(rs.getString(10));
				hi.setHiFloor(rs.getString(11));
				hi.setHiTime(rs.getString(12));
				hi.setHiContent(rs.getString(13));
				hi.setHiImg(rs.getString(14));
				hi.setUsrID(Integer.parseInt(rs.getString(15)));
				hiList.add(hi);
			}
			return hiList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			closeDB(rs, ps, con);
			return null;
		}
	}

	/**
	 * 数据库存在的所有记录
	 * 
	 * @return
	 */
	public int indexRec() {
		try {
			String sql = "select count(*) from houseInfo";
			ps = this.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				return Integer.parseInt(rs.getString(1));
			} else {
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	/**
	 * 首页显示信息分页
	 * 
	 * @return
	 */
	public int indexPage() {
		try {
			String sql = "select count(*) from houseInfo";
			ps = this.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				int temp = Integer.parseInt(rs.getString(1));
				if (temp % 15 != 0) {
					return temp / 15 + 1;
				} else {
					return temp / 15;
				}
			} else {
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	/**
	 * 获取自己发布的信息
	 * 
	 * @param usrID
	 * @return
	 */
	public List<HouseInfo> getMyPub(int page, String usrID) {
		try {
			List<HouseInfo> hiList = new ArrayList<HouseInfo>();
			int temp = (page - 1) * 10;
			String sql = "select top 10 * from houseInfo where hiID not in (select top "
					+ temp
					+ " hiID from houseInfo where usrID=? order by hiTime desc ) and usrID=? order by hiTime desc ";
			ps = this.getCon().prepareStatement(sql);
			ps.setString(1, usrID);
			ps.setString(2, usrID);
			rs = ps.executeQuery();
			System.out.println(sql);
			while (rs.next()) {
				HouseInfo hi = new HouseInfo();
				hi.setHiID(Integer.parseInt(rs.getString(1)));
				hi.setHiSection(rs.getString(2));
				hi.setHiShi(rs.getString(3));
				hi.setHiTing(rs.getString(4));
				hi.setHiWei(rs.getString(5));
				hi.setHiChu(rs.getString(6));
				hi.setHiArea(rs.getString(7));
				hi.setHiPrice(rs.getString(8));
				hi.setHiAddress(rs.getString(9));
				hi.setHiAction(rs.getString(10));
				hi.setHiFloor(rs.getString(11));
				hi.setHiTime(rs.getString(12));
				hi.setHiContent(rs.getString(13));
				hi.setHiImg(rs.getString(14));
				hi.setUsrID(Integer.parseInt(rs.getString(15)));
				hiList.add(hi);
			}
			System.out.println(hiList.size());
			return hiList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			closeDB(rs, ps, con);
			return null;
		}
	}

	/**
	 * 发布信息
	 * 
	 * @param hi
	 * @return
	 */
	public boolean publish(HouseInfo hi) {
		try {
			String sql = "insert into houseInfo values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps = this.getCon().prepareStatement(sql);
			String[] param = { hi.getHiSection(), hi.getHiShi(),
					hi.getHiTing(), hi.getHiWei(), hi.getHiChu(),
					hi.getHiArea(), hi.getHiPrice(), hi.getHiAddress(),
					hi.getHiAction(), hi.getHiFloor(), hi.getHiTime(),
					hi.getHiContent(), hi.getHiImg(),
					Integer.toString(hi.getUsrID()) };
			if (executeSql(sql, param) > 0) {
				return true;
			}
			return false;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 获取个人发布的所有信息时分页总数
	 * 
	 * @param usrID
	 * @return
	 */
	public int pageCount(String usrID) {
		try {
			String sql = "select count(*) from houseInfo where usrID=?";
			ps = this.getCon().prepareStatement(sql);
			ps.setString(1, usrID);
			rs = ps.executeQuery();
			if (rs.next()) {
				int temp = Integer.parseInt(rs.getString(1));
				if (temp % 10 != 0) {
					return temp / 10 + 1;
				} else {
					return temp / 10;
				}
			} else {
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	/**
	 * 删除房屋信息
	 * 
	 * @param hiID
	 * @return
	 */
	public boolean delByHiID(String hiID) {
		try {
			AttentionDao ad = new AttentionDao();
			String sql_check = "select * from attention where hiID=?";
			ps = this.getCon().prepareStatement(sql_check);
			ps.setString(1, hiID);
			if (ps.executeQuery().next()) {
				try {
					if (ad.deleteMyAttention(hiID)) {
						String sql = "delete from houseInfo where hiID=?";
						ps = this.getCon().prepareStatement(sql);
						String[] param = { hiID };
						if (executeSql(sql, param) > 0) {
							return true;
						}
						return false;
					}
					return false;
				} catch (Exception e) {
					e.printStackTrace();
					return false;
				}
			} else {
				String sql = "delete from houseInfo where hiID=?";
				ps = this.getCon().prepareStatement(sql);
				String[] param = { hiID };
				if (executeSql(sql, param) > 0) {
					return true;
				}
				return false;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 房屋出租的详细信息
	 * 
	 * @param hiID
	 * @return
	 */
	public List<HouseInfo> getHiByID(String hiID) {
		try {
			List<HouseInfo> hiList = new ArrayList<HouseInfo>();
			String sql = "select * from houseInfo INNER JOIN usr ON houseInfo.usrID=usr.usrID  where hiID=?";
			ps = this.getCon().prepareStatement(sql);
			ps.setString(1, hiID);
			rs = ps.executeQuery();
			while (rs.next()) {
				HouseInfo hi = new HouseInfo();
				Usr usr = new Usr();
				hi.setHiID(Integer.parseInt(rs.getString(1)));
				hi.setHiSection(rs.getString(2));
				hi.setHiShi(rs.getString(3));
				hi.setHiTing(rs.getString(4));
				hi.setHiWei(rs.getString(5));
				hi.setHiChu(rs.getString(6));
				hi.setHiArea(rs.getString(7));
				hi.setHiPrice(rs.getString(8));
				hi.setHiAddress(rs.getString(9));
				hi.setHiAction(rs.getString(10));
				hi.setHiFloor(rs.getString(11));
				hi.setHiTime(rs.getString(12));
				hi.setHiContent(rs.getString(13));
				hi.setHiImg(rs.getString(14));
				hi.setUsrID(Integer.parseInt(rs.getString(15)));
				usr.setUsrName(rs.getString(19));
				usr.setUsrPhone(rs.getString(22));
				usr.setUsrEmail(rs.getString(23));
				hi.setUsr(usr);
				hiList.add(hi);
			}
			return hiList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			closeDB(rs, ps, con);
			return null;
		}
	}

	/**
	 * 动态分页
	 * 
	 * @param sql
	 * @return 分页总数
	 */
	public int pageCount2(String sql) {
		try {
			ps = this.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			int temp = 0;
			if (rs.next()) {
				temp = Integer.parseInt(rs.getString(1));
				if (temp % 15 != 0) {
					return temp / 15 + 1;
				} else {
					return temp / 15;
				}
			} else {
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	/**
	 * 查询到的记录条数
	 * 
	 * @param sql
	 * @return 记录条数
	 */
	public int rec(String sql) {
		try {
			ps = this.getCon().prepareStatement(sql);
			rs = ps.executeQuery();
			if (rs.next()) {
				return Integer.parseInt(rs.getString(1));
			} else {
				return 0;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
	}

	/**
	 * 条件查询
	 */
	public List<HouseInfo> getByCondition(int page, String condition) {
		try {
			List<HouseInfo> hiList = new ArrayList<HouseInfo>();
			int temp = (page - 1) * 15;
			String sql = "select top 15 * from houseInfo where hiID not in (select top "
					+ temp
					+ " hiID from houseInfo where 1=1 "
					+ condition
					+ " order by hiTime desc ) "
					+ condition
					+ " order by hiTime desc ";
			System.out.println(sql);
			ps = this.getCon().prepareStatement(sql);
			rs = ps.executeQuery();

			while (rs.next()) {
				HouseInfo hi = new HouseInfo();
				hi.setHiID(Integer.parseInt(rs.getString(1)));
				hi.setHiSection(rs.getString(2));
				hi.setHiShi(rs.getString(3));
				hi.setHiTing(rs.getString(4));
				hi.setHiWei(rs.getString(5));
				hi.setHiChu(rs.getString(6));
				hi.setHiArea(rs.getString(7));
				hi.setHiPrice(rs.getString(8));
				hi.setHiAddress(rs.getString(9));
				hi.setHiAction(rs.getString(10));
				hi.setHiFloor(rs.getString(11));
				hi.setHiTime(rs.getString(12));
				hi.setHiContent(rs.getString(13));
				hi.setHiImg(rs.getString(14));
				hi.setUsrID(Integer.parseInt(rs.getString(15)));
				hiList.add(hi);
			}
			System.out.println("条件查询的结果数：" + hiList.size());
			return hiList;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			closeDB(rs, ps, con);
			return null;
		}
	}

	public boolean edit(String hiID, String hiPrice) {
		try {
			String sql = "update houseInfo set hiPrice=? where hiID=?";
			ps = this.getCon().prepareStatement(sql);
			String[] param = { hiPrice, hiID };
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
	}

}
