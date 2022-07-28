package com.sie.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sie.biz.UsrBiz;
import com.sie.entity.Usr;

public class Reg extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Reg() {
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
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		//String yanzhengma=request.getParameter("yanzhengma");
		
		String yanzhengma="abcd";
				
		String rand=(String)request.getSession().getAttribute("rand");
		System.out.println(yanzhengma+"\t"+rand);
//		if(yanzhengma!=rand){
//			response.getWriter().print("<script>alert('The verification code is wrong, please fill in again£¡');window.navigate('./reg.jsp');</script>");
//		}
		String usrAccount=request.getParameter("usrAccount");
		String usrPassword=request.getParameter("usrPassword");
		String usrName=request.getParameter("usrName");
		String usrSex=request.getParameter("usrSex");
		String usrPhone=request.getParameter("usrPhone");
		String usrAddress=request.getParameter("usrAddress");
		String usrEmail=request.getParameter("usrEmail");
		
		System.out.println(usrAccount+usrPassword+usrName+usrSex+usrPhone+usrAddress+usrEmail);
		
		Usr usr=new Usr();
		usr.setUsrAccount(usrAccount);
		usr.setUsrAddress(usrAddress);
		usr.setUsrEmail(usrEmail);
		usr.setUsrName(usrName);
		usr.setUsrPassword(usrPassword);
		usr.setUsrPhone(usrPhone);
		usr.setUsrSex(usrSex);
		UsrBiz usrBiz=new UsrBiz();
//		if(usrBiz.reg(usr)){
		HttpSession session=request.getSession();
		session.setAttribute("usrName", usrName);
		List<Usr> usrList=usrBiz.getUsr(usrAccount);
		session.setAttribute("usrAccount", usrAccount);
		session.setAttribute("usrID", usrList.get(0).getUsrID()+"");
		response.sendRedirect("regsuccess.jsp");
//		}else {
//			System.out.println(usrAccount+usrPassword+usrName+usrSex+usrPhone+usrAddress+usrEmail);
//		}
		
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
