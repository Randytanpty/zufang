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

public class Login extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Login() {
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		if (request.getParameter("yanzhengma").equals(request.getSession().getAttribute("rand"))) {
			UsrBiz usrBiz = new UsrBiz();
			String usrAccount = request.getParameter("usrAccount");
			String usrPassword = request.getParameter("usrPassword");
			String url = request.getParameter("url");
			if (usrBiz.login(usrAccount, usrPassword)) {
				List<Usr> usrList = usrBiz.getUsr(usrAccount);
				HttpSession session = request.getSession();
				session.setAttribute("usrAccount", usrAccount);
				session.setAttribute("usrID", usrList.get(0).getUsrID() + "");
				session.setAttribute("usrName", usrList.get(0).getUsrName());
				out.print(usrList.get(0).getUsrID() + "."
						+ usrList.get(0).getUsrName());
				// request.getRequestDispatcher("/getMyPub").forward(request,
				// response);
			} else {
				out.print("error");
			}
		} else {
				out.print("errorCode");
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
