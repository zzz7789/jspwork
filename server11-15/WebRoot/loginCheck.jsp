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
            String name =request.getParameter("userName");
            String pwd = request.getParameter("userPassword");
            String message=null;
			
			Statement stmt = conn.getCon().createStatement();
			
			String query="select*from tb_user where username='" + name + "'";
			ResultSet rs=stmt.executeQuery(query);
			
			if(rs.next()){
					String query2="select*from tb_user where pwd='" + pwd + "'";
					rs=stmt.executeQuery(query2);
					if(rs.next()){
                    //把用户名到session中
                    session.setAttribute("userName",name);		
                    response.sendRedirect("main.jsp");
                }else{
                
                    message ="用户名或密码错误！";
                    //response.sendRedirect("login.jsp");
                }
                        
     rs.close();
     stmt.close();
     conn.getCon().close();
            }
        %>
         <script type="text/javascript">
            alert("<%=message%>")			
            window.location.href='login.jsp';
        </script>
    </body>
</html>