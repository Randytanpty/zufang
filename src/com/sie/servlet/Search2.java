package com.sie.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sie.biz.HouseInfoBiz;
import com.sie.entity.HouseInfo;

public class Search2 extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Search2() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
//		request.setCharacterEncoding("UTF-8");
//		response.setCharacterEncoding("UTF-8");
		String sql = "select * from houseInfo where 1=1 ";		//查询信息用,1=1永远成立的条件，后面跟上and查询
		String sqlPage = "select count(*) from houseInfo where 1=1 ";	//分页用
		String condition="";
		//区域查询
		if (request.getParameter("quyu") != null
				& request.getParameter("quyu") != "") {
			request.setAttribute("quyu",new String(request.getParameter("quyu").getBytes("GBK")));
			sql += " and hiSection like '%" + new String(request.getParameter("quyu").getBytes("GBK"))+"%'";
			sqlPage += " and hiSection like '%" + new String(request.getParameter("quyu").getBytes("GBK"))+"%'";
			condition += " and hiSection like '%" + new String(request.getParameter("quyu").getBytes("GBK"))+"%'";
		}
		
		//室数查询
		if (request.getParameter("shi") != null) {
			request.setAttribute("shi",request.getParameter("shi"));
			sql += " and hiShi='" + request.getParameter("shi")+"'";
			sqlPage += " and hiShi='" + request.getParameter("shi")+"'";
			condition += " and hiShi='" + request.getParameter("shi")+"'";
		}
		//价格查询
		if (request.getParameter("jiage1") != null
				& request.getParameter("jiage2") != null
				& request.getParameter("jiage1") != ""
				& request.getParameter("jiage2") != "") {
			request.setAttribute("jiage1",request.getParameter("jiage1"));
			request.setAttribute("jiage2",request.getParameter("jiage2"));
			sql += " and hiPrice>" + request.getParameter("jiage1")+" and hiPrice<"+request.getParameter("jiage2");
			sqlPage += " and hiPrice>" + request.getParameter("jiage1")+" and hiPrice<"+request.getParameter("jiage2");
			condition += " and hiPrice>" + request.getParameter("jiage1")+" and hiPrice<"+request.getParameter("jiage2");
		}
		
		//面积查询
		if (request.getParameter("mianji1") != null
				& request.getParameter("mianji2") != null
				& request.getParameter("mianji1") != ""
				& request.getParameter("mianji2") != ""){
			request.setAttribute("mianji1",request.getParameter("mianji1"));
			request.setAttribute("mianji2",request.getParameter("mianji2"));
			sql += " and hiArea>" + request.getParameter("mianji1")+" and hiArea<"+request.getParameter("mianji2");
			sqlPage += " and hiArea>" + request.getParameter("mianji1")+" and hiArea<"+request.getParameter("mianji2");
			condition += " and hiArea>" + request.getParameter("mianji1")+" and hiArea<"+request.getParameter("mianji2");
		}
		//地址查询
		if (request.getParameter("dizhi")!= null&request.getParameter("dizhi")!="") {
			request.setAttribute("dizhi",request.getParameter("dizhi"));
			sql+=" and hiAddress like '%"+request.getParameter("dizhi")+"%'";
			sqlPage+=" and hiAddress like '%"+request.getParameter("dizhi")+"%'";
			condition+=" and hiAddress like '%"+request.getParameter("dizhi")+"%'";
		}
		//每页15条
		int page=1;
		int pageCount=1;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		HouseInfoBiz hib=new HouseInfoBiz();
		pageCount=hib.pageCount2(sqlPage);
		List<Integer> pageCountList=new ArrayList<Integer>();
		//将页码放到list中
		for (int i = 1; i <= pageCount; i++) {
			pageCountList.add(i);
		}
		int rec=0;//记录条数
		System.out.println("分页总数："+pageCount);
		List<HouseInfo> hiList=hib.getByCondition(page,condition);
		rec=hib.rec(sqlPage);
		request.setAttribute("hiList", hiList);
		request.setAttribute("pageCountList", pageCountList);
		request.setAttribute("page", page+"");
		request.setAttribute("pageCount", pageCount+"");
		request.setAttribute("rec", rec+"");
		request.getRequestDispatcher("./search2.jsp").forward(request, response);
	}
	/**
	 * Initialization of the servlet. <br>
	 * 
	 * @throws ServletException
	 *             if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
