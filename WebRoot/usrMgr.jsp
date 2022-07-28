<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 


<table width="200" border="0" align="center">
  <tr>
    <td>UserID</td>
    <td>UserName</td>
    <td>UserPhone</td>
  </tr>
 <c:if test="${empty usrList}">
  <tr>
    <td colspan="3">暂无信息</td>
  </tr>
</c:if>
<c:forEach items="${requestScope.usrList}" var="usr">
  <tr>
    <td>${usr.usrID }</td>
    <td>${usr.usrName }</td>
    <td>${usr.usrPhone }</td>
  </tr>
</c:forEach>
</table>