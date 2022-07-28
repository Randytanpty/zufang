package com.sie.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sie.biz.UsrBiz;
import com.sie.entity.Usr;

public class Login2 extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Login2() {
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

		response.setContentType("text/html");
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		if (request.getParameter("yanzhengma").equals(
				request.getSession().getAttribute("rand"))) {
			UsrBiz usrBiz = new UsrBiz();
			PrintWriter out = response.getWriter();
			String usrAccount = request.getParameter("usrAccount");
			String usrPassword = request.getParameter("usrPassword");
			String url = URLDecoder.decode(request.getParameter("url"));
			System.out.println(url);
			if (usrBiz.login(usrAccount, usrPassword)) {
				List<Usr> usrList = usrBiz.getUsr(usrAccount);
				HttpSession session = request.getSession();
				request.setAttribute("url", url);
				session.setAttribute("usrAccount", usrAccount);
				session.setAttribute("usrID", usrList.get(0).getUsrID() + "");
				session.setAttribute("usrName", usrList.get(0).getUsrName());
					request.getRequestDispatcher("/loginSuccess.jsp").forward(request,response);
			} else {
				request.getRequestDispatcher("/login.jsp").forward(request,
						response);
			}
		} else {
			response
					.getWriter()
					.print(
							"<script>alert('验证码错误，请重新登录！');window.navigate('./login.jsp');</script>");
		}
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
