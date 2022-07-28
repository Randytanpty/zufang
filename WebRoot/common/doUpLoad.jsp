<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.util.*" errorPage="../error.jsp"%>
<%@page import="java.text.*"%>
<%@page import="com.sie.entity.*"%>
<%@page import="com.sie.biz.*"%>
<%@page import="com.jspsmart.upload.*"%>
<%
	SmartUpload su = new SmartUpload();
	su.initialize(pageContext);
	//su.setAllowedFilesList("jpg,jpeg,JPG,gif,GIF,BMP,bmp");
	su.upload();
	com.jspsmart.upload.File file = su.getFiles().getFile(0);
	String fileExtName = file.getFileExt().toLowerCase();
	SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHssmm");
	SimpleDateFormat sdf2 = new SimpleDateFormat("yy-MM-dd HH:ss:mm");
	String time = sdf.format(new Date());
	String hiImg="";
	if (fileExtName.equals("jpg") || fileExtName.equals("jpeg")|| fileExtName.equals("bmp") || fileExtName.equals("gif")) {
		file.saveAs("/upload/" + time + "." + file.getFileExt());//Use time as the file name to prevent renaming of files
		hiImg="./upload/" + time + "."+ file.getFileExt();
		//response.sendRedirect("../addProduct2.jsp");
	} else {
		out.print("<script language='javascript'>alert('Image type is not accurate, please try again！');window.navigate('../publish.jsp');</script>");
	}
	//==========================================//
	Request req=su.getRequest();
	//String txtName = new String(txtName_temp.getBytes(),"utf-8");
	String hiSection =new String(req.getParameter("hiSection").getBytes(),"utf-8");//Area
	String hiShi = req.getParameter("hiShi");		//
	String hiTing = req.getParameter("hiTing");		//
	String hiWei = req.getParameter("hiWei");		//
	String hiChu = req.getParameter("hiChu");		//
	String hiArea = req.getParameter("hiArea");		//
	String hiPrice = req.getParameter("hiPrice");	//
	String hiAddress =new String(req.getParameter("hiAddress").getBytes(),"utf-8");//
	String hiAction ="sky";		//
	String hiFloor = req.getParameter("hiFloor");		//
	String hiTime = sdf2.format(new Date());					//Release Time
	String hiContent =new String(req.getParameter("hiContent").getBytes(),"utf-8");	//Published content
	//out.print(hiContent);
	//String usrID_temp=(String)session.getAttribute("usrID");
	int usrID = Integer.parseInt(req.getParameter("usrID"));//publisher
	HouseInfo hi=new HouseInfo();
	hi.setHiAction(hiAction);
	hi.setHiAddress(hiAddress);
	hi.setHiArea(hiArea);
	hi.setHiChu(hiChu);
	hi.setHiContent(hiContent);
	hi.setHiFloor(hiFloor);
	hi.setHiImg(hiImg);
	hi.setHiPrice(hiPrice);
	hi.setHiSection(hiSection);
	hi.setHiShi(hiShi);
	hi.setHiTime(hiTime);
	hi.setHiTing(hiTing);
	hi.setHiWei(hiWei);
	hi.setUsrID(usrID);
	//out.print(hi.getUsrID());
	HouseInfoBiz hib=new HouseInfoBiz();
	if(hib.publish(hi)){
		out.print("<script language='javascript'>window.navigate('../pubsuccess.jsp');</script>");
		//response.sendRedirect(request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"./pubsuccess.jsp");
	}else{
		out.print("<script language='javascript'>window.navigate('../pubfailed.jsp');</script>");
		//response.sendRedirect(request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"+"./person.jsp?pub=failed");
	}
%>
