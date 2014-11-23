<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
    server info : ${pageContext.request.localAddr}:${pageContext.request.localPort} <br>
    <br>
    session ID : ${pageContext.session.id} <br>
    <br>
    session属性列表
    <table border="1" width="450px">
		<tr>
			<th>key</th><th>value</th>
		</tr>
	    <c:forEach items="${pageContext.session.attributeNames}"  var="attr">
	    	<tr>
	    		<td align="center">${attr}</td><td  align="center">${sessionScope[attr]}</td>
	    	</tr>
	    </c:forEach>
    </table>
    <br>
             添加：
	<form action="${pageContext.request.contextPath}/servlet/TestServlet?method=add" method="post">
    	key:<input type="text" name="key">value:<input type="text" name="value"><input type="submit" value="添加">
    </form>
             移除：
    <form action="${pageContext.request.contextPath}/servlet/TestServlet?method=del" method="post">
    	key:<input type="text" name="key"><input type="submit" value="移除">
    </form>
  </body>
</html>
