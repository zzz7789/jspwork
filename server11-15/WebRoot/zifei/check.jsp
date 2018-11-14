<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*,java.sql.*" %>
<%@ page import="conn.*" %>  

   <jsp:useBean id="conn" class="conn.sqlconn" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>处理登录页面的数据</title>
    </head>
    <body >
        <%
				request.setCharacterEncoding("UTF-8");
				String pricingName = request.getParameter("pricingName");
				String baseFee = request.getParameter("baseFee");
				String rateFee = request.getParameter("rateFee");
				String pricingDesc = request.getParameter("pricingDesc");
				String message = null;
				PreparedStatement pStmt = conn.getCon().prepareStatement("insert into tb_zif (name,moth,hour,note) values(?,?,?,?)");
				pStmt.setString(1,pricingName);
				pStmt.setString(2,baseFee);
				pStmt.setString(3,rateFee);
				pStmt.setString(4,pricingDesc);
				int rtn=pStmt.executeUpdate();
				pStmt.close();
    		    conn.getCon().close();
				response.sendRedirect("list.jsp");
				
		
			%>
         
    </body>
</html>