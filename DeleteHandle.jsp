<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%
if (session.getAttribute("AdministratorName")==null)
    response.sendError(403, "No Admin Login");
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Delete2.jsp' starting page</title>
    
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
    <%String name=request.getParameter("username"); 
    out.print("该用户删除成功！");
        %><%@ include file="db.jsp"%><%
    Statement sts=conn.createStatement();
    String sql="delete from user where u_name='"+name+"'";
    sts.executeUpdate(sql);
    %>
  </body>
</html>
