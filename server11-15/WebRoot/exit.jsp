<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>退出系统</title>
    </head>
    <body>
        <%
            session.invalidate();//销毁session
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>

