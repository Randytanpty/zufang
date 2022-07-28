<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@page import="java.net.URLEncoder"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE></TITLE>
<META content="text/html;" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="image/WebResource.axd">
<META name=description 
content=><LINK 
rel=stylesheet type=text/css href="image/public.css"><LINK 
rel=stylesheet type=text/css href="styles/ershou.css">
<SCRIPT src="js/aJax.js"></SCRIPT>
<STYLE type=text/css>
.style1 
{
	COLOR: #0000ff
}
.STYLE2 {color: #FF0000}
.STYLE4 {color: #FF0000; font-weight: bold; }
.STYLE5 {color: #FFCC00}
</STYLE>
<script language="javascript">
		function reloadCode(){
		//alert(document.getElementById("yzm").src);
		document.getElementById("yzm").src="yanzhengma?date="+new Date();
		}
		</script>
<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY>
  <SCRIPT type=text/javascript src="image/WebResource.css"></SCRIPT>
  		<div id="whitecontent" class="white_content">
		</div>
		<div class="black_overlay" id="fade"></div>
<!--未登录-->
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
                        <TD width=28 align=middle>密码</TD>
                        <TD width=100><INPUT style="WIDTH: 100px" id=usrPassword 
                  onkeyup=check13dl() maxLength=20 type=password 
                  name=usrPassword></TD>
                        <TD width=45 align=middle>验证码</TD>
                        <TD width=46 align=middle><input name="yanzhengma" type="text" id="yanzhengma" size="6" maxlength="4"></TD>
                        <TD width=69 align=middle><img src="yanzhengma" alt="点击更换验证码" id="yzm" onClick="reloadCode()"></TD>
                        <TD width=86 align=middle><input type="image" name="imageField2" src="image/index_5.gif" onClick="login()"></TD>
                        <TD width="145"><a href="reg.jsp">免费注册</a></TD>
                      </TR>
                    </TBODY>
                  </TABLE>
                </SPAN><SPAN 
            style="DISPLAY: none" id=Top1_1_divyi></SPAN></TD>
                <TD width="247" colSpan=2 
            align=center>Rental2022客服QQ：252878950</TD>
              </TR>
            </TBODY>
          </TABLE></TD>
        </TR>
      </TBODY>
    </TABLE>
  </div>
</c:if>
<!--未登录-->
<!--已登录-->
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
                            <TD>欢迎您：<span class="STYLE2"><span class="STYLE5">${sessionScope.usrName}</span>&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./getMyPub">去管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./exit">&nbsp;注销登录</a></TD>
                          </TR>
                        </TBODY>
                  </TABLE>
                </SPAN><SPAN 
            style="DISPLAY: none" id=Top1_1_divyi></SPAN></TD>
                <TD width="246" colSpan=2 
            align=center>Rental2022客服QQ：252878950</TD>
              </TR>
            </TBODY>
        </TABLE></TD>
      </TR>
    </TBODY>
  </TABLE>
</div>
</c:if>
<!--已登录-->
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
                      <TD>欢迎您：<span id="usrNameSpan"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./getMyPub">去管理中心</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./exit">&nbsp;注销登录</a></TD>
                    </TR>
                  </TBODY>
                </TABLE>
              </SPAN><SPAN 
            style="DISPLAY: none" id=Top1_1_divyi></SPAN></TD>
              <TD colSpan=2 
            align=right>Rental2022客服电话：024-88888888（8:00-17:00）　88888888（夜班）　客服QQ：252878950</TD>
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
      src="image/index_logo.gif" width=200 height=65></A></TD>
    <TD width=375 align=right><IMG src="image/xiaoheng1.gif" 
      width=363 height=60></TD>
    <TD width=375 align=right><IMG src="image/xiaoheng2.gif" 
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
            href="index.jsp">首页</A>&gt; 沈阳住宅出租信息</SPAN></TD>
          <TD width="67%" align=right>&nbsp;</TD>
          <TD vAlign=center width="7%" 
  align=middle></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width="100%" align=center>
  <TBODY>
  <TR>
    <TD height=8></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=0 width=950 bgColor=#bbd6f1 
align=center>
  <form action="./search" method="post"><TBODY>
  <TR>
    <TD bgColor=#ffffff height=25 vAlign=top><TABLE border=0 cellSpacing=2 cellPadding=2 width=920 align=center>
      <TBODY>
        <TR>
          <TD width=857>区域：
            <label>
            <select name="quyu" id="quyu">
              <option value="沈河">沈河区</option>
              <option value="和平">和平区</option>
              <option value="皇姑">皇姑区</option>
              <option value="大东">大东区</option>
              <option value="铁西">铁西区</option>
              <option value="于洪">于洪区</option>
              <option value="东陵">东陵区 </option>
              <option value="浑南新区 ">浑南新区 </option>
              <option value="沈北新区">沈北新区</option>
              <option value="苏家屯区">苏家屯区</option>
              <option value="其它 ">其它 </option>
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
            室&nbsp;&nbsp;&nbsp;&nbsp;面积：            
            <input name="mianji1" type="text" id="mianji1" size="4">
-
<input name="mianji2" type="text" id="mianji2" size="4" maxlength="4">
&nbsp;            &nbsp;月租：            
            <input name="jiage1" type="text" id="jiage1" size="4" maxlength="4">
            -
            <input name="jiage2" type="text" id="jiage2" size="4" maxlength="4">
            元
            &nbsp;&nbsp;小区名称或地址:
            <input name="dizhi" type="text" id="dizhi">
            </label></TD>
          <TD width=49 rowspan="2"><input type="submit" name="Submit" value="查询"></TD>
        </TR>
        <TR>
          <TD><span class="STYLE4">上次查询条件==<c:if test="${!empty requestScope.quyu}">区域：${requestScope.quyu }</c:if>&nbsp;&nbsp;<c:if test="${!empty requestScope.shi}">${requestScope.shi }室</c:if>&nbsp;&nbsp;<c:if test="${!empty requestScope.mianji1}">面积:${requestScope.mianji1 }-${requestScope.mianji2 }</c:if>&nbsp;&nbsp;<c:if test="${!empty requestScope.jiage1}">价格：${requestScope.jiage1 }--${requestScope.jiage2 }</c:if><c:if test="${!empty requestScope.dizhi}">地址：${requestScope.dizhi }</c:if></span></TD>
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
          <TD class=font-cu width=192 align=left>沈阳住宅出租信息</TD>
          <TD class=font-cu width=68 align=left><a href="publish.jsp"><IMG 
            src="image/ershouindex_111_2.gif" name="Imgfabu_1" width="55" height="15" border="0" 
            id=Imgfabu_1 style="CURSOR: hand"></a></TD>
          <TD width=557 align=left>先注册后发布，我要<A class=style1 
            href="reg.jsp" target=_blank>免费注册</A> 
            住宅出租信息发布</TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=2 width=950 bgColor=#aacbee 
align=center>
  <TBODY>
    <TR>
      <TD bgColor="#d3e5f6" height="25" width="52"><DIV align="center">编号</DIV></TD>
      <TD bgColor="#d3e5f6" width="74"><DIV align="center">区域</DIV></TD>
      <TD bgColor="#d3e5f6" width="201"><DIV align="center">小区名称</DIV></TD>
      <TD bgColor="#d3e5f6" width="147"><DIV align="center">户型</DIV></TD>
      <TD bgColor="#d3e5f6" width="69"><DIV align="center">朝向</DIV></TD>
      <TD bgColor="#d3e5f6" width="62"><DIV align="center">楼层</DIV></TD>
      <TD bgColor="#d3e5f6" width="59"><DIV align="center">面积</DIV></TD>
      <TD bgColor="#d3e5f6" width="77"><DIV align="center">月租金</DIV></TD>
      <TD bgColor="#d3e5f6" width="124"><DIV align="center">登记时间</DIV></TD>
      <TD bgColor="#d3e5f6" width="34"><DIV align="center">查看</DIV></TD>
    </TR>
<c:if test="${empty requestScope.hiList}">
	<tr><td colspan="5"><font color="red">暂无信息</font></td></tr>
</c:if>
<c:if test="${!empty requestScope.hiList}">
	<c:forEach items="${requestScope.hiList}" var="hi">
    <TR>
      <TD bgColor="#ffffff" height="26" align="middle">${hi.hiID }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiSection }</TD>
      <TD bgColor="#ffffff"><a href="./getHiByID?hiID=${hi.hiID}&action=info" class="STYLE5">${hi.hiAddress }</a></TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiShi }室${hi.hiTing }厅${hi.hiWei }卫${hi.hiChu }厨</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiAction }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiFloor }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiArea }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiPrice }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiTime }</TD>
      <TD bgColor="#ffffff" align="middle"><A href="./getHiByID?hiID=${hi.hiID}&action=info" target="_blank">详情</A></TD>
    </TR>
</c:forEach>
</c:if>
  </TBODY>
</TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=0 width=950 align=center></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR> 
    <TD><c:if test="${!empty requestScope.hiList}">
      <div align="center">共<font color="blue">${requestScope.rec }</font>条记录
                <c:if test="${requestScope.page eq 1}"></c:if>
            <c:if test="${requestScope.page ne 1}"> <a href="./search?page=1&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">首页</a> <a
								href="./search?page=${requestScope.page-1}&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">上一页</a> </c:if>
            <c:forEach items="${requestScope.pageCountList}" var="i"> <a href="./search?page=${i }&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">${i }</a> </c:forEach>
            <c:if test="${requestScope.page ne requestScope.pageCount}"> <a
								href="./search?page=${requestScope.page + 1}&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">下一页</a> <a
								href="./search?page=${requestScope.pageCount}&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">末页</a></c:if>
      </div>
</c:if></TD>
  </TR>
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
    class=STYLE22>房屋租赁网提供普通住宅出租信息发布与查询</SPAN></TD>
  </TR>
  <TR>
    <TD height=20 align=middle>客服电话：024-88888888<SPAN 
      class=black>&nbsp;&nbsp;&nbsp;</SPAN>客服QQ：252878950<SPAN 
      class=black>&nbsp;&nbsp;</SPAN>E-mail：slippers@live.cn</TD>
  </TR>
  <TR>
    <TD height=26 align=middle>公司地址：沈阳工程学院10#<SPAN 
      class=black>&nbsp;&nbsp;</SPAN> 邮编：110136</TD>
  </TR>
  <TR>
    <TD height=26 align=middle>Copyright181.cc All Rights Reserved<SPAN 
      class=black>&nbsp;&nbsp; </SPAN>ICP证：辽B-2-4-20090106</TD>
  </TR>
  
  <TR>
    <TD height=40 align=middle>
    <SCRIPT type=text/javascript>
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5b48cf6d948c70034f7a239f8e5c566d' type='text/javascript'%3E%3C/script%3E"));
</SCRIPT>    </TD></TR></TBODY></TABLE>

</BODY></HTML>
