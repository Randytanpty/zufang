<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>Rental2022</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="image/public.css"><LINK 
rel=stylesheet type=text/css href="image/huiyuan.css">
<SCRIPT src="js/aJax.js"></SCRIPT>
<STYLE type=text/css>
.style1 {
	COLOR: #0033ff
}
.style2 {
	COLOR: #ff0000
}
.STYLE4 {color: #000000}
.STYLE5 {color: #FF0000}
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
                        <TD width=42>UserName</TD>
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
                      <TD>欢迎您：<span id="usrNameSpan"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="./getMyPub">去管理中心</a></TD>
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
<br>
<FORM id=form1 method=post name=form1 action="./reg">
  <DIV><br>
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
</DIV><TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD height=6></TD></TR>
  <TR>
    <TD></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=962 align=center>
  <TBODY>
  <TR>
    <TD width=962><IMG src="image/reg_7.gif" width=962 
  height=28></TD></TR>
  <TR>
    <TD height=328 vAlign=top background=image/reg_10.gif>
<c:if test="${empty requestScope.hiList}">
	<script language="javascript">
		window.navigate("notFound.jsp");
	</script>
</c:if>
	<c:forEach items="${requestScope.hiList}" var="hi">
	<TABLE border=0 cellSpacing=0 cellPadding=0 width=640 align=center>
        <TBODY>
          <TR>
            <TD vAlign=top width=640><TABLE border=0 cellSpacing=1 cellPadding=0 width=640 bgColor=#bbd6f1 
      align=center>
                <TBODY>
                  <TR>
                    <TD bgColor=#ffffff height=246 vAlign=top width=763><TABLE border=0 cellSpacing=2 cellPadding=2 width="95%" 
align=center>
                        <TBODY>
                          <TR>
                            <TD></TD>
                          </TR>
                          <TR>
                            <TD><TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                                <TBODY>
                                  <TR>
                                    <TD class=font-cu width="13%">房源编号：</TD>
                                    <TD width="60%">${hi.hiID}<SPAN id=fyid></SPAN></TD>
                                    <TD class=font-cu width="12%">登记日期：</TD>
                                    <TD width="15%"><SPAN 
                    id=timPublish>${hi.hiTime}</SPAN></TD>
                                  </TR>
                                </TBODY>
                            </TABLE></TD>
                          </TR>
                          <TR>
                            <TD bgColor=#bbd6f1 height=1></TD>
                          </TR>
                        </TBODY>
                    </TABLE>
                        <BR>
                        <TABLE border=0 cellSpacing=1 cellPadding=6 width=606 
            bgColor=#bbd6f1 align=center>
                          <TBODY>
                            <TR>
                              <TD bgColor=#d3e5f6 width=78 align=middle>区　　域</TD>
                              <TD bgColor=#ffffff colSpan=5><SPAN id=strArea>${hi.hiSection}</SPAN></TD>
                              </TR>
                            <TR>
                              <TD bgColor=#d3e5f6 align=middle>详细地址</TD>
                              <TD bgColor=#ffffff colSpan=5>${hi.hiAddress}</TD>
                              </TR>
                            <TR>
                              <TD bgColor=#ffffff colSpan=6>&nbsp;</TD>
                            </TR>
                            <TR>
                              <TD bgColor=#d3e5f6 align=middle>月 租 金</TD>
                              <TD bgColor=#ffffff width=70><SPAN 
                id=lblyuezujin>${hi.hiPrice}</SPAN>元</TD>
                              <TD bgColor=#d3e5f6 width=69 align=middle>楼　　层</TD>
                              <TD bgColor=#ffffff width=83>${hi.hiFloor}</TD>
                              <TD width="83" align=middle bgColor=#d3e5f6>户　　型</TD>
                              <TD width="144" bgColor=#ffffff><SPAN id=intRoom>${hi.hiShi}</SPAN>室<SPAN 
                  id=intHall>${hi.hiTing}</SPAN>厅<SPAN id=intToilet>${hi.hiWei}</SPAN>卫<SPAN 
                  id=intCookRoom>${hi.hiChu}</SPAN>厨 </TD>
                            </TR>
                            <TR>
                              <TD bgColor=#d3e5f6 align=middle>朝　　向</TD>
                              <TD bgColor=#ffffff><SPAN id=strDirect>${hi.hiAction}</SPAN></TD>
                              <TD bgColor=#d3e5f6 align=middle>使用面积</TD>
                              <TD bgColor=#ffffff><SPAN id=intFloorCur>${hi.hiArea}</SPAN></TD>
                              <TD bgColor=#d3e5f6 align=middle>关 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注</TD>
                              <TD bgColor=#ffffff><SPAN id=fangling><a href="#" onClick="addAttention()">加关注</a>
                                <input id="hiID" name="hiID" type="hidden" value="${hi.hiID}">
                              </SPAN></TD>
                            </TR>

                            <TR>
                              <TD bgColor=#ffffff colSpan=6>&nbsp; </TD>
                            </TR>

                            <TR>
                              <TD bgColor=#d3e5f6 align=middle>备　　注</TD>
                              <TD bgColor=#ffffff colSpan=5><SPAN 
                  id=txtNote>${hi.hiContent}</SPAN></TD>
                            </TR>
                            <TR>
                              <TD align=middle bgColor=#d3e5f6>联 系 人</TD>
                              <TD colSpan=3 bgColor=#ffffff><SPAN 
                  id=strContactperson>${hi.usr.usrName}</SPAN></TD>
                              <TD bgColor=#d3e5f6 vAlign=top rowSpan=3 colSpan=2><DIV 
                  style="POSITION: absolute; WIDTH: 205px; WORD-BREAK: break-all"><SPAN 
                  id=lblgonggao>
                                  <P>本网所有信息均为网友自行发布，未经本网验证，请谨慎使用，本网不承担因使用虚假信息对您所造成的任何损失。若发现虚假信息请积极举报，谢谢！                                    举报电话：024-88888888。</P>
                              </SPAN></DIV>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p></TD>
                            </TR>
                            
                            <TR>
                              <TD align=middle bgColor=#d3e5f6>联系电话</TD>
                              <TD colSpan=3 bgColor=#ffffff><SPAN id=strTelephone 
                  class="font-hong font-16">${hi.usr.usrPhone}</SPAN></TD>
                            </TR>
                            <TR>
                              <TD align=middle bgColor=#d3e5f6>邮箱</TD>
                              <TD colSpan=3 bgColor=#ffffff><SPAN id=strTelephone 
                  class="font-hong font-16">${hi.usr.usrEmail}</SPAN></TD>
                            </TR>
                          </TBODY>
                        </TABLE>
                      <DIV id=Pxtu>
                          <TABLE border=0 cellSpacing=0 cellPadding=0 width="95%" 
align=center>
                            <TBODY>
                              <TR>
                                <TD height=17></TD>
                              </TR>
                              <TR>
                                <TD>图像：</TD>
                              </TR>
                              <TR>
                                <TD height=4>&nbsp;</TD>
                              </TR>
                            </TBODY>
                          </TABLE>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="95%" 
align=center>
                            <TBODY>

                              <TR>
                                <TD>&nbsp;</TD>
                                <TD><a href="${hi.hiImg}"><img src="${hi.hiImg}" width="600" height="400" alt="点击查看原图"></a><br><a href="${hi.hiImg}"><点击查看原图></a></TD>
                                <TD>&nbsp;</TD>
                              </TR>
                            </TBODY>
                        </TABLE>
                      </DIV>
                      <BR></TD>
                  </TR>
                </TBODY>
            </TABLE></TD>
            </TR>
        </TBODY>
      </TABLE>
	  </c:forEach>
	  </TD>
  </TR>
  <TR>
    <TD><IMG src="image/reg_19.gif" width=962 
  height=11></TD></TR></TBODY></TABLE>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD align=middle><div align="center"><SPAN 
    class=STYLE4>房屋租赁网提供普通住宅出租信息发布与查询</SPAN><br>
    </div></TD>
    </TR>
  <TR>
    <TD align=middle><div align="center">客服电话：024-88888888<SPAN 
      class=black>&nbsp;&nbsp;&nbsp;</SPAN>客服QQ：252878950<SPAN 
      class=black>&nbsp;&nbsp;</SPAN>E-mail：slippers@live.cn<br>
    </div></TD>
    </TR>
  <TR>
    <TD align=middle><div align="center">公司地址：沈阳工程学院10#<SPAN 
      class=black>&nbsp;&nbsp;</SPAN> 邮编：110136<br>
    </div></TD>
    </TR>
  <TR>
    <TD align=middle><div align="center">Copyright181.cc All Rights Reserved<SPAN 
      class=black>&nbsp;&nbsp; </SPAN>ICP证：辽B-2-4-20090106</div></TD>
    </TR>
  <TR>
    <TD height=40 align=middle>
    <SCRIPT type=text/javascript>
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5b48cf6d948c70034f7a239f8e5c566d' type='text/javascript'%3E%3C/script%3E"));
</SCRIPT>    </TD></TR></TBODY></TABLE>
</FORM>
<SCRIPT src="image/ajax.js"></SCRIPT>

<SCRIPT src="image/huiyuan.js"></SCRIPT>
</BODY></HTML>
