<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@include file="common/check.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>edit-Rental2022</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type><LINK 
rel=stylesheet type=text/css href="image/public.css"><LINK 
rel=stylesheet type=text/css href="image/huiyuan.css">
<STYLE type=text/css>
.style1 {
	COLOR: #0033ff
}
.style2 {
	COLOR: #ff0000
}
.style21 {	COLOR: #000000
}
.STYLE22 {color: #FF0000}
</STYLE>

<META name=GENERATOR content="MSHTML 8.00.6001.18702"></HEAD>
<BODY>
<FORM action="./edit" method=get enctype="multipart/form-data" name=form1 id=form1>
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
</DIV><TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
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
                  <TD><font color="red" size="+1"><%=session.getAttribute("usrName")%></font>,您好!欢迎您登录本站</TD>
                </TR>
                <TR>
                  <TD>&nbsp;</TD>
                </TR>
                <TR>
                  <TD>·<A 
                  href="person.jsp">to main</A> </TD>
                </TR>
                <TR>
                  <TD>·<A 
                  href="http://www.024zf.com/huiyuan/updatepassword.aspx">change password</A> </TD>
                </TR>
                <TR>
                  <TD>·<A 
                  href="http://www.024zf.com/huiyuan/updatelxfs.aspx">change phone</A> </TD>
                </TR>
                <TR>
                  <TD>·<A href="http://www.024zf.com/huiyuan/lout.aspx">log out</A> </TD>
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
                          be careful<BR>
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
              <BR>
              <TABLE border=0 cellSpacing=1 cellPadding=1 width=653 
            bgColor=#bfd8f2 align=center>
                <TBODY>
<c:forEach items="${requestScope.hiList}" var="hi">
                  <TR>
                    <TD width="109" height=27 align=middle bgColor=#d3e5f6 class=font-14>price <SPAN class=font-hong>*</SPAN></TD>
                    <TD width="533" align=left bgColor=#ffffff>&nbsp;
                        <INPUT name="hiPrice" type=text id=intPrice  value="${hi.hiPrice }"
                  style="WIDTH: 100px" 
                  onblur="this.value=this.value.replace(/[^0-9.]/g,'');" 
                  onkeypress="this.value=this.value.replace(/[^0-9.]/g,'');" 
                  onkeyup="this.value=this.value.replace(/[^0-9.]/g,'');" 
                  maxLength=4 
                  onbeforepaste="clipboardData.setData('text',clipboardData.getData('text').replace(/[^0-9.]/g,''))">
                        <br><input type="hidden" value="${hi.hiID }" name="hiID">
                        (<span class="STYLE22">price edit only</span>)</TD>
                  </TR>
</c:forEach>
                  <TR>
                    <TD class=font-14 bgColor=#ffffff height=27 colSpan=2 
                align=middle><INPUT style="WIDTH: 70px" id=Button1 onClick="return checkfabusales();" value=发布 type=submit name=Button1>
                      &nbsp;
                      <INPUT value=" 重 填 " type=reset name=reset2>                      </TD>
                  </TR>
                </TBODY>
              </TABLE></TD>
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
<p>&nbsp;	</p>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=950 align=center>
  <TBODY>
  <TR>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD>
      <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor=#bbd6f1 height=1></TD></TR></TBODY></TABLE></TD></TR>
  <TR>
    <TD height=21 align=middle><SPAN 
    class=style21 style21></SPAN></TD>
  </TR>
  <TR>
    <TD height=20 align=middle>8<SPAN 
      class=black>&nbsp;&nbsp;&nbsp;</SPAN><SPAN 
      class=black>&nbsp;&nbsp;</SPAN>E-mail</TD>
  </TR>
  <TR>
    <TD height=26 align=middle><SPAN 
      class=black>&nbsp;&nbsp;</SPAN> </TD>
  </TR>
  <TR>
    <TD height=26 align=middle>Copyright181.cc All Rights Reserved<SPAN 
      class=black>&nbsp;&nbsp; </SPAN>ICP</TD>
  </TR>
  
  <TR>
    <TD height=40 align=middle>
  <SCRIPT type=text/javascript>
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F5b48cf6d948c70034f7a239f8e5c566d' type='text/javascript'%3E%3C/script%3E"));
</SCRIPT></TD></TR></TBODY></TABLE>
</FORM>
<SCRIPT src="image/ajax.js"></SCRIPT>

<SCRIPT src="image/huiyuan.js"></SCRIPT>
</BODY></HTML>
