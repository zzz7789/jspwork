<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>用户自服务</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
  <body background="image/login.jpg">
        <div align="center">
            
                <center>
                  <hr size="1">
                  <h1>欢迎使用资费通讯系统<br>
                                    </h1>
              </center>
         
            <hr size="1">
     <%
            //获取保存在session中的用户名 
            String name=(String)session.getAttribute("userName");
        %>
        您好<%=name%>,欢迎您访问！<br>
        
       
        <hr>   
        </div>
        <div><div align="center">  
        </div><center><div align="center">
        </div><table width="1017" border="1" height="28">
<tbody><tr>
<td align="center"><a href="user/user2.html">[用户管理]</a></td>
<td align="center"><a href="zifei/list.jsp">[资费管理]</a></td>
<td align="center"><a href="usermanage/1.html">[用户自服务]</a></td>
<td align="center"><a href="manage/4.1.jsp">[管理员账务管理]</a></td>
<td align="center"><a href="exit.jsp">[退出系统]</a></td>
</tr>
</tbody></table> </center>
        </div>
        <hr/>
    </body>
</html>

