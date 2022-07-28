<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="common/check.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Rental2022</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="image/public.css"><LINK 
rel=stylesheet type=text/css href="image/huiyuan.css">
<script type="text/javascript" src="js/aJax.js"></script>
<STYLE type=text/css>
.style1 {
	COLOR: #0033ff
}
.style2 {
	COLOR: #ff0000
}
.style21 {	COLOR: #000000
}
.STYLE22 {color: #323333}
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .50;
	filter: alpha(opacity = 40);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 35%;
	width: 30%;
	height: 30%;
	padding: 16px;
	border: 8px solid #17649C;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}

.STYLE23 {color: #FF0000}
</STYLE>
<script language="javascript">
	function closePwd(){
		document.getElementById("pwd").style.display="none";
		document.getElementById("fade").style.display="none";
	}
	
</script>
<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY>
<div id="whitecontent" class="close">
 	
</div>
<div id="pwd" class="white_content">
  <div align="right">
    <input type="image" name="imageField2" src="image/close.png" onClick="closePwd();">
  </div>
  <p align="center">旧&nbsp;&nbsp;密&nbsp;&nbsp;码
      <span class="STYLE23">*</span>
      <input name="oldUsrPassword" type="password" id="oldUsrPassword">
  </p>
    <p align="center">新&nbsp;&nbsp;密&nbsp;&nbsp;码 <span class="STYLE23">*</span>
      <input name="newUsrPassword2" type="password" id="newUsrPassword">
    </p>
    <p align="center">确认密码 <span class="STYLE23">*</span>
      <input name="reNewUsrPassword" type="password" id="reNewUsrPassword">
  </p>
    <p align="center">
      <input name="imageField" type="image" onClick="updateInfo()" src="image/conform.gif">
    </p>
</div>
<div class="black_overlay" id="fade"></div>
<DIV>
  <TABLE border=0 width=950 align=center height=70>
    <TBODY>
      <TR>
        <TD width=200><A href="index.jsp"><IMG border=0 
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
      <TD vAlign=top width=254><TABLE border=0 cellSpacing=0 cellPadding=0 width=269>
        <TBODY>
          <TR>
            <TD width=269><IMG src="image/huiyuanindex_3.gif" 
            width=269 height=28></TD>
          </TR>
          <TR>
            <TD height=296 vAlign=top 
          background=会员管理中心-沈阳房产网_files/huiyuanindex_10.gif><TABLE border=0 cellSpacing=2 cellPadding=2 width=251 
              align=center>
              <TBODY><TR>
                  <TD><TABLE border=0 width="100%">
                    <TBODY>
                      <TR>
                        <TD><A href="index.jsp"><IMG 
                        border=0 src="image/cc_3.gif" width=62 
                        height=23></A></TD>
                        <TD><A 
                        href="./getMyPub"><IMG 
                        border=0 src="image/cc_5.gif" width=81 
                        height=23></A></TD>
                        <TD><A 
                        href="./exit"><IMG 
                        border=0 src="image/cc_7.gif" width=62 
                        height=23></A></TD>
                      </TR>
                    </TBODY>
                  </TABLE></TD>
                </TR>
                <TR>
                  <TD><SPAN 
id=Left1_lblusername><strong><font color="red" size="+0"><%=session.getAttribute("usrName")%></font></strong></SPAN>,您好!欢迎您登录本站</TD>
                </TR>
                <TR>
                  <TD>
				  </TD>
                </TR>
                <TR>
                  <TD><A 
                  href="publish.jsp"> ·发布出租信息</A> </TD>
                </TR>
                <TR>
                  <TD>·<A 
                  href="./getMyAttention?usrID=${sessionScope.usrID }">我的关注</A> </TD>
                </TR>
                <TR>
                  <TD>·<a href="javascript:showUpdateDiv();">修改密码</a></TD>
                </TR>
                <TR>
                  <TD>·<A href="http://www.024zf.com/huiyuan/lout.aspx">退出登录</A> </TD>
                </TR>
              </TBODY>
            </TABLE>
                  <TABLE border=0 cellSpacing=0 cellPadding=0 width=243 
              align=center>
                    <TBODY>
                      <TR>
                        <TD class=lan14cu height=23 
                background=会员管理中心-沈阳房产网_files/huiyuanindex_17.gif width=243 
                align=middle>用户须知</TD>
                      </TR>
                      <TR>
                        <TD>&nbsp;</TD>
                      </TR>
                      <TR>
                        <TD><SPAN id=Left1_lblxuzhi>
                          <LONG Text>
                          <FONT 
                  color=#ff0000>一、</FONT>请谨慎发布您的信息，以免因错误电话对他人造成骚扰<BR>
                          <FONT 
                  color=#ff0000>二、</FONT>针对个人，在本站发布信息部分免费、部分收费；免费、收费信息种类见“<A 
                  href="http://www.181.cc/fuwu/fuwu.aspx">服务指南</A>”或者“<A 
                  href="http://www.181.cc/fuwu/fabu.aspx">发布信息</A>”
                        </SPAN></TD>
                      </TR>
                      <TR>
                        <TD>&nbsp;</TD>
                      </TR>
                    </TBODY>
                  </TABLE>
              <TABLE border=0 cellSpacing=0 cellPadding=0 width=243 
              align=center>
              </TABLE></TD>
          </TR>
          <TR>
            <TD><IMG src="image/huiyuanindex_19.gif" width=269 
            height=10></TD>
          </TR>
        </TBODY>
      </TABLE></TD>
      <TD vAlign=top width=696><TABLE border=0 cellSpacing=0 cellPadding=0 align=right>
        <TBODY>
          <TR>
            <TD><IMG src="image/huiyuanindex_5.gif" width=683 
            height=28></TD>
          </TR>
          <TR>
            <TD height=295 vAlign=top 
          background=会员管理中心-沈阳房产网_files/huiyuanindex_11.gif><BR>
                  <TABLE border=0 cellSpacing=1 cellPadding=2 width=634 
            bgColor=#aacbee align=center>
                    <TBODY>
                      <TR>
                        <TD width=113 height="23" 
                align=middle bgColor=#d3e5f6 class=hei14cu>时间</TD>
                        <TD width=101 
                align=middle bgColor=#d3e5f6 class=hei14cu>房型</TD>
                        <TD class=hei14cu bgColor=#d3e5f6 width=79 
                align=middle>面积（㎡）</TD>
                        <TD bgColor=#d3e5f6 width=138 align=middle><span class="hei14cu">月租金（元/月）</span></TD>
                        <TD bgColor=#d3e5f6 width=177 align=middle><span 
                  class=hei14cu>管理信息</span></TD>
                      </TR>
					
					<c:if test="${!empty requestScope.hiList}">
						<TR><td colspan="5">已发布信息</td></TR>
						<c:forEach items="${requestScope.hiList}" var="hi">
						
						 <TR>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiTime }</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiShi }室${hi.hiTing }厅${hi.hiChu }厨${hi.hiWei }卫</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiArea }</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiPrice }</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF"><a href="./deleteByHiID?hiID=${hi.hiID}&page=${requestScope.page }">删除</a>&nbsp;<a href="./getHiByID?hiID=${hi.hiID}&action=edit">修改</a>&nbsp;<a href="./getHiByID?hiID=${hi.hiID}&action=info" target="_blank">查看</a></td>
						</TR>
						</c:forEach>
					</c:if>
					
					<c:if test="${!empty requestScope.hiAttentionList}">
						<TR><td colspan="5">已关注信息</td></TR> 
						<c:forEach items="${requestScope.hiAttentionList}" var="hi">
						
						<TR>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiTime }</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiShi }室${hi.hiTing }厅${hi.hiChu }厨${hi.hiWei }卫</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiArea }</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF">${hi.hiPrice }</td>
						<td bordercolor="#000000" bgcolor="#FFFFFF"><a href="./deleteMyAttention?hiID=${hi.hiID}">取消关注</a>&nbsp;<a href="./getHiByID?hiID=${hi.hiID}&action=info" target="_blank">查看</a></td>
						</TR>
						</c:forEach>
					</c:if>
                    </TBODY>
                  </TABLE>
              <BR>
              <label>
<c:if test="${!empty requestScope.hiList}">
                <div align="center">当前第<font color="blue">${requestScope.page }</font>页
                <c:if test="${requestScope.page eq 1}"></c:if>
            <c:if test="${requestScope.page ne 1}"> <a href="./getMyPub?page=1">首页</a> <a
								href="./getMyPub?page=${requestScope.page-1}">上一页</a> </c:if>
            <c:forEach items="${requestScope.pageCountList}" var="i"> <a href="./getMyPub?page=${i }">${i }</a> </c:forEach>
            <c:if test="${requestScope.page ne requestScope.pageCount}"> <a
								href="./getMyPub?page=${requestScope.page + 1}">下一页</a> <a
								href="./getMyPub?page=${requestScope.pageCount}">末页</a> </c:if>
              </div>
</c:if>
              </label>
                  <TABLE border=0 cellSpacing=1 cellPadding=4 width=653 
              align=center>
                  </TABLE>
              </TD>
          </TR>
          <TR>
            <TD><IMG src="image/huiyuanindex_22.gif" width=683 
            height=10></TD>
          </TR>
        </TBODY>
      </TABLE>
          <BR></TD>
    </TR>
  </TBODY>
</TABLE>
<p>&nbsp; 	</p>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
    <TR>
      <TD><TABLE border=0 cellSpacing=1 cellPadding=0 width="100%" 
        bgColor=#bbd6f1>
        <TBODY>
            <TR>
              <TD bgColor=#ffffff height=27 align=middle><A 
            href="#" 
            target=_blank></A></TD>
            </TR>
        </TBODY>
      </TABLE></TD>
    </TR>
    <TR>
      <TD height=6></TD>
    </TR>
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
    <br>    </TD></TR></TBODY></TABLE>
</FORM>
</BODY></HTML>
