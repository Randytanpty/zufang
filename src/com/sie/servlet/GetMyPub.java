package com.sie.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sie.biz.HouseInfoBiz;
import com.sie.entity.HouseInfo;

public class GetMyPub extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GetMyPub() {
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
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		int page=1;				//页码
		int pageCount=1;		//分页总数
		int row=10;				//行数
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		
		
		HouseInfoBiz hib=new HouseInfoBiz();
		
		HttpSession session=request.getSession();
		String usrID=(String)session.getAttribute("usrID");
		
		pageCount=hib.pageCount(usrID);//获取页数
		if(page>pageCount){
			page=pageCount;
		}
		List<Integer> pageCountList = new ArrayList<Integer>();
		for (int i = 1; i <= pageCount; i++) {
			pageCountList.add(i);
		}
		List<HouseInfo> hiList=new ArrayList<HouseInfo>();
		
		hiList=hib.getMyPub(page,usrID);//分页查询
		request.setAttribute("page", page+"");
		request.setAttribute("hiList", hiList);
		request.setAttribute("pageCountList", pageCountList);
		request.setAttribute("pageCount", pageCount);
		request.getRequestDispatcher("./person.jsp").forward(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
