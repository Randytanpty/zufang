<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
	if(session.getAttribute("usrName")==null||session.getAttribute("usrAccount")==null||session.getAttribute("usrID")==null){
		//out.print((String)session.getAttribute("usrName")+session.getAttribute("usrAccount")+session.getAttribute("usrID"));
		out.print("<script>alert('您尚未登录或登录时间过长，请重新登录！');window.navigate('./index.jsp');</script>");
	}
%>