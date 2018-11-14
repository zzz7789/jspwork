<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" %>
<%@ page import="conn.*" %>  
   <jsp:useBean id="conn" class="conn.sqlconn" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理登录页面的数据</title>
    </head>
    <body background="image/login.jpg">
    <% 
            //设置请求的编码，用于解决中文乱码问题
            request.setCharacterEncoding("UTF-8");	
            String baseFee = request.getParameter("baseFee");
            String retaFee = request.getParameter("retaFee");
            String pricingDesc = request.getParameter("pricingDesc");
            String a=request.getParameter("a");
			PreparedStatement stmt =conn.getCon().prepareStatement("update tb_zif set moth=?,moth=?,note=? where id=?");
			stmt.setString(1,baseFee);
			stmt.setString(2,retaFee);
			stmt.setString(3,pricingDesc);
			stmt.setString(4,a);
			int rtn = stmt.executeUpdate();
		     stmt.close();
		     conn.getCon().close();
           response.sendRedirect("list.jsp");
        %>
        </body>
</html>

