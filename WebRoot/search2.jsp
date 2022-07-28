<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>搜索-Rental2022</TITLE>
<META content="text/html;" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="image/WebResource.axd">
<META name=description 
content=沈阳房屋租赁网集中了辽宁省沈阳市住宅出租信息,有普通住宅出租,写字间,商铺,门市,厂房,库房,公寓,高档住宅,合租等房屋信息><LINK 
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
  <form name="form1" method="post" action="">
    <TABLE width=655 border=0 align=center cellPadding=2 cellSpacing=2>
      <TBODY>
        <TR>
          <TD width=665 align="left">区域：
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
              &nbsp;&nbsp; <br>
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
              室&nbsp;&nbsp;&nbsp;<br>
              面积：
              <input name="mianji1" type="text" id="mianji1" size="4">
              -
              <input name="mianji2" type="text" id="mianji2" size="4" maxlength="4">
              &nbsp;            &nbsp;<br>
              月租：
              <input name="jiage1" type="text" id="jiage1" size="4" maxlength="4">
              -
              <input name="jiage2" type="text" id="jiage2" size="4" maxlength="4">
              元
              &nbsp;&nbsp;<br>
              小区名称或地址:
              <input name="dizhi" type="text" id="dizhi">
              <br>
              <input type="submit" name="Submit" value="查询">
            </label></TD>
        </TR>
        <TR>
          <TD><span class="STYLE4">上次查询条件==
                <c:if test="${!empty requestScope.quyu}">区域：${requestScope.quyu }</c:if>
            &nbsp;&nbsp;
            <c:if test="${!empty requestScope.shi}">${requestScope.shi }室</c:if>
            &nbsp;&nbsp;
            <c:if test="${!empty requestScope.mianji1}">面积:${requestScope.mianji1 }-${requestScope.mianji2 }</c:if>
            &nbsp;&nbsp;
            <c:if test="${!empty requestScope.jiage1}">价格：${requestScope.jiage1 }--${requestScope.jiage2 }</c:if>
            <c:if test="${!empty requestScope.dizhi}">地址：${requestScope.dizhi }</c:if>
          </span></TD>
        </TR>
      </TBODY>
    </TABLE>
</form>
  <TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center height=29>
</TABLE>
<TABLE border=0 cellSpacing=1 cellPadding=2 width=655 bgColor=#aacbee 
align=center>
  <TBODY>
    <TR>
      <TD bgColor="#d3e5f6" height="25" width="30"><DIV align="center">编号</DIV></TD>
      <TD bgColor="#d3e5f6" width="70"><DIV align="center">区域</DIV></TD>
      <TD bgColor="#d3e5f6" width="110"><DIV align="center">小区名称</DIV></TD>
      <TD bgColor="#d3e5f6" width="100"><DIV align="center">户型</DIV></TD>
      <TD bgColor="#d3e5f6" width="60"><DIV align="center">朝向</DIV></TD>
      <TD bgColor="#d3e5f6" width="60"><DIV align="center">月租金</DIV></TD>
      <TD bgColor="#d3e5f6" width="157"><DIV align="center">操作</DIV></TD>
    </TR>
<c:if test="${empty requestScope.hiList}">
	<tr><td colspan="5"><font color="red">暂无信息</font></td></tr>
</c:if>
<c:if test="${!empty requestScope.hiList}">
	<c:forEach items="${requestScope.hiList}" var="hi">
    <TR>
      <TD width="30" height="26" align="middle" bgColor="#ffffff">${hi.hiID }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiSection }</TD>
      <TD bgColor="#ffffff"><a href="./getHiByID?hiID=${hi.hiID}&action=info" class="STYLE5">${hi.hiAddress }</a></TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiShi }室${hi.hiTing }厅${hi.hiWei }卫${hi.hiChu }厨</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiAction }</TD>
      <TD bgColor="#ffffff" align="middle">${hi.hiPrice }</TD>
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
            <c:forEach items="${requestScope.pageCountList}" var="i"> <a href="./search2?page=${i }&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">${i }</a> </c:forEach>
            <c:if test="${requestScope.page ne requestScope.pageCount}"> <a
								href="./search?page=${requestScope.page + 1}&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">下一页</a> <a
								href="./search?page=${requestScope.pageCount}&quyu=${requestScope.quyu }&shi=${requestScope.shi }&jiage1=${requestScope.jiaoge1 }&jiage2=${requestScope.jiaoge2 }&mianji1=${requestScope.mianji1 }&mianji2=${requestScope.mianji2 }&dizhi=${requestScope.dizhi }">末页</a></c:if>
      </div>
</c:if></TD>
  </TR></TBODY></TABLE>

</BODY></HTML>
