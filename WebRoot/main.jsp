<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@page import="com.sie.biz.HouseInfoBiz"%>
<%@page import="com.sie.entity.HouseInfo"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Rental2022</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="image/WebResource.axd">
<META name=description 
content=Richmond City has a wide range of apartments, condominiums, apartments for rent, and shared houses.><LINK 
rel=stylesheet type=text/css href="image/public.css"><LINK 
rel=stylesheet type=text/css href="styles/ershou.css">
<SCRIPT src="js/aJax.js"></SCRIPT>

<STYLE type=text/css>
.style1 
{
	COLOR: #0000ff
}
.STYLE2 {color: #FF0000}
.STYLE5 {color: #FF6600}

</STYLE>
<script language="javascript">
		function reloadCode(){
		//alert(document.getElementById("yzm").src);
		document.getElementById("yzm").src="yanzhengma?date="+new Date();
		}
		</script>

<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY>
		<div id="whitecontent" class="white_content">
		</div>
		<div class="black_overlay" id="fade"></div>
<c:if test="${empty sessionScope.usrName}">
 <div id="login">
  <TABLE border=0 width="100%">
    <TBODY>
      <TR>
        <TD height=28 background=image/index_2.gif align=left><TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center 
      height=28>
            <TBODY>
              <TR>
                <TD width="703" height=28><SPAN style="DISPLAY: block" id=Top1_1_divwei>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width=668>
                    
                        <TBODY>
                          <TR>
                            <TD width=42>User</TD>
                            <TD width=107><INPUT style="WIDTH: 100px" id=usrAccount 
                  maxLength=20 type=text name=usrAccount></TD>
                            <TD width=28 align=middle>Password</TD>
                            <TD width=100><INPUT style="WIDTH: 100px" id=usrPassword 
                  onkeyup=check13dl() maxLength=20 type=password 
                  name=usrPassword></TD>
                            <!--<TD width=45 align=middle>Verification</TD>
                            <TD width=46 align=middle><input name="yanzhengma" type="text" id="yanzhengma" size="6" maxlength="4"></TD>
                            <TD width=69 align=middle><img src="yanzhengma" alt="change " id="yzm" onClick="reloadCode()"></TD>ok-->
                            <TD width=86 align=middle><input type="image" name="imageField2" src="image/index_5.gif" onClick="login()"></TD>
                            <TD width="145"><a href="reg.jsp">Registration</a></TD>
                          </TR>
                        </TBODY>
                  </TABLE>
                </SPAN><SPAN 
            style="DISPLAY: none" id=Top1_1_divyi></SPAN></TD>
                <TD width="247" colSpan=2 
            align=center>Randy Tan</TD>
              </TR>
            </TBODY>
        </TABLE></TD>
      </TR>
    </TBODY>
  </TABLE>
</div>
</c:if>
<c:if test="${!empty sessionScope.usrName}">
  <div id="usrInfo">
  <TABLE border=0 width="100%">
    <TBODY>
      <TR>
        <TD height=28 background=image/index_2.gif align=left><TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center 
      height=28>
            <TBODY>
              <TR>
                <TD width="704" height=28><SPAN style="DISPLAY: block" id=Top1_1_divwei>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width=450>
                        <TBODY>
                          <TR>
                            <TD>Welcome：<span class="STYLE2"><span class="STYLE5">${sessionScope.usrName}</span>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./getMyPub">去管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./exit">&nbsp;注销登录</a></TD>
                          </TR>
                        </TBODY>
                  </TABLE>
                </SPAN><SPAN 
            style="DISPLAY: none" id=Top1_1_divyi></SPAN></TD>
                <TD width="246" colSpan=2 
            align=center>Randy Tan</TD>
              </TR>
            </TBODY>
        </TABLE></TD>
      </TR>
    </TBODY>
  </TABLE>
</div>
</c:if>
  <SCRIPT type=text/javascript src="image/WebResource.css"></SCRIPT>
  <SCRIPT src="image/ajax.js"></SCRIPT>

<SCRIPT src="image/index.js"></SCRIPT>

<div id="aJaxDiv" style="display:none">
  <TABLE border=0 width="100%">
    <TBODY>
      <TR>
        <TD height=28 background=image/index_2.gif align=left><TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center 
      height=28>
          <TBODY>
            <TR>
              <TD height=28><SPAN style="DISPLAY: block" id=Top1_1_divwei>
                <TABLE border=0 cellSpacing=0 cellPadding=0 width=450>
                  <TBODY>
                    <TR>
                      <TD>Welcome<span id="usrNameSpan"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./getMyPub">去管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./exit">&nbsp;注销登录</a></TD>
                    </TR>
                  </TBODY>
                </TABLE>
              </SPAN><SPAN 
            style="DISPLAY: none" id=Top1_1_divyi></SPAN></TD>
              <TD colSpan=2 
            align=right>Randy Tan</TD>
            </TR>
          </TBODY>
        </TABLE></TD>
      </TR>
    </TBODY>
  </TABLE>
</div>
<TABLE border=0 width=950 align=center height=70>
  <TBODY>
  <TR>
    <TD width=200><A href="index.jsp"><IMG border=0 
      src="image/xiaoheng1.png" width=200 height=65></A></TD>
    <TD width=375 align=right><IMG src="image/xiaoheng1.png" 
      width=363 height=60></TD>
    <TD width=375 align=right><IMG src="image/xiaoheng1.png" 
      width=363 height=60></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=2 width=950 bgColor=#bbd6f1 
align=center>
  <TBODY>
  <TR>
    <TD bgColor=#ffffff height=27 vAlign=center>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD width="26%">　<SPAN class=font-14><A 
            href="index.jsp">Home</A>&gt; Rental Information</SPAN></TD>
          <TD width="67%" align=right>&nbsp;</TD>
          <TD vAlign=center width="7%" 
  align=middle></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD height=8></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=0 width=950 bgColor=#bbd6f1 
align=center>
  <form action="./search" method="post" onSubmit="return check()"><TBODY>
  <TR>
    <TD bgColor=#ffffff height=25 vAlign=top><TABLE border=0 cellSpacing=2 cellPadding=2 width=920 align=center>
      <TBODY>
        <TR>
          <TD width=857>Area：
            <label>
            <select name="quyu" id="quyu">
              <option value="Richmond">Richmond</option>
              <option value="Downtown">Downtown</option>
              <option value="Vancouver">Vancouver</option>
              <option value="White Rock">White Rock</option>
              <option value="Surrey">Surrey</option>
              <option value="Burnaby">Burnaby</option>
              <option value="Coquitlam">Coquitlam </option>
              <option value="Ladner">Ladner </option>
              <option value="Tsawwassen">Tsawwassen</option>
              <option value="West Vancouver">West Vancouver </option>
              <option value="Langley ">Langley </option>
            </select>
            &nbsp;&nbsp;
            <select name="shi" id="shi">
              <option value="1">1</option>
              <option value="2">2</option>
              <option value="3">3</option>
              <option value="4">4</option>
              <option value="5">5</option>
              <option value="6">6</option>
              <option value="7">7</option>
              <option value="8">8</option>
              <option value="9">9</option>
            </select>
            Room&nbsp;&nbsp;&nbsp;&nbsp;Area：            
            <input name="mianji1" type="text" id="mianji1" onBlur="this.value=this.value.replace(/[^0-9]/g,'');" 
onkeypress="this.value=this.value.replace(/[^0-9]/g,'');"
onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" size="4" maxlength="4">
-
<input name="mianji2" type="text" id="mianji2" size="4" maxlength="4" onBlur="this.value=this.value.replace(/[^0-9]/g,'');" 
onkeypress="this.value=this.value.replace(/[^0-9]/g,'');"
onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
&nbsp;            &nbsp;Monthly：            
            <input name="yuezu1" type="text" id="yuezu1" size="4" maxlength="4" onBlur="this.value=this.value.replace(/[^0-9]/g,'');" 
onkeypress="this.value=this.value.replace(/[^0-9]/g,'');"
onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
            -
            <input name="yuezu2" type="text" id="yuezu2" size="4" maxlength="4" onBlur="this.value=this.value.replace(/[^0-9]/g,'');" 
onkeypress="this.value=this.value.replace(/[^0-9]/g,'');"
onkeyup="this.value=this.value.replace(/[^0-9]/g,'');">
            $
            &nbsp;&nbsp;Location:
            <input name="dizhi" type="text" id="dizhi">
            </label></TD>
          <TD width=49 rowspan="2"><input href="search.jsp" type="submit" name="Submit" value="Search"></TD>
        </TR>
        <TR>
          <TD></TD>
        </TR>
      </TBODY>
    </TABLE></TD></TR></TBODY></form></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD height=8></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center height=29>
  <TBODY>
  <TR>
    <TD height=29 vAlign=bottom 
background=image/ershouindex_111.gif>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width=855 height=21>
        <TBODY>
        <TR>
          <TD height=19 width=38>&nbsp;</TD>
          <TD class=font-cu width=192 align=left>Rental Information</TD>
          <TD class=font-cu width=68 align=left><a href="publish.jsp"><IMG 
            src="image/ershouindex_111_2.gif" name="Imgfabu_1" width="55" height="15" border="0" 
            id=Imgfabu_1 style="CURSOR: hand"></a></TD>
          <TD width=557 align=left>Register first<A class=style1 
            href="reg.jsp" target=_blank>Register</A> 
            Release</TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=2 width=950 bgColor=#aacbee 
align=center>
  <TBODY>
  <TR>
    <TD class=lan14cu bgColor=#d3e5f6 height=25 width=52>
      <DIV align=center>No.</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=74>
      <DIV align=center>Region</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=182>
      <DIV align=center>Name of district</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=143>
      <DIV align=center>Room Type</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=73>
      <DIV align=center>Direction</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=72>
      <DIV align=center>Floor</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=59>
      <DIV align=center>Area</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=60>
      <DIV align=center>Rent</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=150>
      <DIV align=center>time</DIV></TD>
    <TD class=lan14cu bgColor=#d3e5f6 width=34>
    <DIV align=center>details</DIV></TD></TR>
	
<c:if test="${empty requestScope.hiList}">
	<tr><td colspan="5"><font color="red">No information</font></td></tr>
</c:if>
<c:if test="${!empty requestScope.hiList}">
	<c:forEach items="${requestScope.hiList}" var="hi">
    <TR>
      <TD bgColor="#ffffff" height="26" align="middle">${hi.hiID }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiSection }</TD>
      <TD bgColor="#ffffff"><a href="./getHiByID?hiID=${hi.hiID}&action=info" target="_blank"><font color="#FFCC33">${hi.hiAddress }</font></a></TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiShi }Room${hi.hiTing }Living room${hi.hiWei }Washroom${hi.hiChu }Kitchen</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiAction }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiFloor }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiArea }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiPrice }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiTime }</TD>
      <TD bgColor="#ffffff" align="middle"><A href="./getHiByID?hiID=${hi.hiID}&action=info" target="_blank">Details</A></TD>
    </TR>
</c:forEach>
</c:if>
  </TBODY></TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=0 width=950 align=center></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD><c:if test="${!empty requestScope.hiList}">
      <div align="center">Total<font color="blue">${requestScope.rec }</font>record
                <c:if test="${requestScope.pageNum eq 1}"></c:if>
            <c:if test="${requestScope.pageNum ne 1}"> <a href="./index.jsp?pageNum=1">First</a> <a
								href="./index.jsp?page=${requestScope.pageNum-1}">Previous</a> </c:if>
            <c:forEach items="${requestScope.pageCountList}" var="i"> <a href="./index.jsp?pageNum=${i }">${i }</a> </c:forEach>
            <c:if test="${requestScope.pageNum ne requestScope.pageCount}"> <a
								href="./index.jsp?pageNum=${requestScope.pageNum + 1}">Next</a> <a
								href="./index.jsp?pageNum=${requestScope.pageCount}">Last</a></c:if>
      </div>
</c:if></TD></TR>
  <TR>
    <TD>
      <TABLE border=0 cellSpacing=1 cellPadding=0 width="100%" 
        bgColor=#bbd6f1><TBODY>
        <TR>
          <TD bgColor=#ffffff height=27 align=middle>&nbsp;</TD>
        </TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=6></TD></TR>
  <TR>
    <TD height=21 align=middle><SPAN 
    class=style2>Housing Rental</SPAN></TD>
  </TR>
  <TR>
    <TD height=20 align=middle>Randy Tan<SPAN 
      class=black>&nbsp;&nbsp;&nbsp;</SPAN>7788833603<SPAN 
      class=black>&nbsp;&nbsp;</SPAN>E-mail：Tanguochaopty@gmail.com</TD>
  </TR>
  <TR>
    <TD height=26 align=middle>Richmond<SPAN 
      class=black>&nbsp;&nbsp;</SPAN> V6Y</TD>
  </TR>
  <TR>
    <TD height=26 align=middle>Copyright181.cc All Rights Reserved<SPAN 
      class=black>&nbsp;&nbsp; </SPAN>Randy Tan</TD></TR>
  <TR>
    <TD height=40 align=middle>
      <SCRIPT type=text/javascript>
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5b48cf6d948c70034f7a239f8e5c566d' type='text/javascript'%3E%3C/script%3E"));
</SCRIPT>
    </TD></TR></TBODY></TABLE>
<SCRIPT src="image/tools.js"></SCRIPT>

<SCRIPT src="image/ershou.js"></SCRIPT>
</BODY></HTML>
