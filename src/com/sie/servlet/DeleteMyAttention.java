package com.sie.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sie.biz.AttentionBiz;

public class DeleteMyAttention extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public DeleteMyAttention() {
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
		HttpSession session=request.getSession();
		String hiID=request.getParameter("hiID");
		AttentionBiz ab=new AttentionBiz();
		if(ab.deleteMyAttention(hiID)){
			request.getRequestDispatcher("./getMyAttention?usrID="+session.getAttribute("usrID")).forward(request, response);
		}else {
			PrintWriter out=response.getWriter();
			out.print("<script>alert('É¾³ýÊ§°Ü');window.navigate('./getMyAttention?usrID="+session.getAttribute("usrID")+"');</script>");
			//request.getRequestDispatcher("./getMyAttention?usrID="+session.getAttribute("usrID")).forward(request, response);
		}
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
