<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>出错了-Rental2022</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="common/image/public.css"><LINK 
rel=stylesheet type=text/css href="common/image/huiyuan.css">
<meta http-equiv="refresh"content="3;url=<%=basePath%>">
<STYLE type=text/css>.style1 {
	COLOR: #0033ff
}
.style2 {
	COLOR: #ff0000
}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY>
<FORM id=form1 method=post name=form1 action="common/reg">
<DIV>
  <TABLE border=0 width=950 align=center height=70>
    <TBODY>
      <TR>
        <TD width=200><A href="common/index.jsp"><IMG border=0 
      src="image/index_logo.gif" width=200 height=65></A></TD>
        <TD width=375 align=right><IMG src="image/xiaoheng1.gif" 
      width=363 height=60></TD>
        <TD width=375 align=right><IMG src="image/xiaoheng2.gif" 
      width=363 height=60></TD>
      </TR>
    </TBODY>
  </TABLE>
</DIV>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD height=6></TD></TR>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=962 align=center>
  <TBODY>
  <TR>
    <TD width=962><IMG src="image/reg_7.gif" width=962 
  height=28></TD>
  </TR>
  <TR>
    <TD height=328 vAlign=top background=common/image/reg_10.gif><div align="center">
      <p><BR>
        <img src="image/error.gif" width="484" height="214" border="0"></p>
      <p><a href="<%=basePath%>">正在跳转到首页，请稍后……</p>
    </div></TD>
  </TR>
  <TR>
    <TD><IMG src="image/reg_19.gif" width=962 
  height=11></TD>
  </TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
    <TD bgColor=#bbd6f1 height=1></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
</FORM>
<SCRIPT src="common/image/ajax.js"></SCRIPT>

<SCRIPT src="common/image/huiyuan.js"></SCRIPT>
</BODY></HTML>
