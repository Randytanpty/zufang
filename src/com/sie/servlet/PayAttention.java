package com.sie.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sie.biz.AttentionBiz;
import com.sie.entity.Attention;

public class PayAttention extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public PayAttention() {
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
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession();
		AttentionBiz atb=new AttentionBiz();
		if(session.getAttribute("usrID")==null){
			out.print("unLogin");
			return;
		}
		String usrID=(String)session.getAttribute("usrID");
		String hiID=request.getParameter("hiID");
		Attention at=new Attention();
		at.setHiID(Integer.parseInt(hiID));
		at.setUsrID(Integer.parseInt(usrID));
		String result=atb.addAttention(at);
		if(result.equals("success")){
			out.print("�ӹ�ע�ɹ�");
		}
		if(result.equals("failed")){
			out.print("��ӹ�עʧ��");
		}
		if(result.equals("repeat")){
			out.print("�÷�Դ��Ϣ�Ѿ���ע����");
		}
		if(result.equals("error")){
			out.print("���ˣ����ִ��󣡰�Ctrl+F5ǿ��ˢ������");
		}
		if(result.equals("many")){
			out.print("����ע��̫���ˣ�");
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
