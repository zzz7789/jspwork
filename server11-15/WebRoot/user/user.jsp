<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="conn.*" %>  

   <jsp:useBean id="conn" class="conn.sqlconn" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
    <head>
        <title>用户管理</title>     
    </head>
   <body background="../image/login.jpg">
   <center><table width="1017" border="1" height="28">
<tbody><tr>
<td align="center"><a href="../user/user2.html">[用户管理]</a></td>
<td align="center"><a href="../zifei/list.jsp">[资费管理]</a></td>
<td align="center"><a href="../usermanage/1.html">[用户自服务]</a></td>
<td align="center"><a href="../manage/4.1.jsp">[管理员账务管理]</a></td>
<td align="center"><a href="../exit.jsp">[退出系统]</a></td>

</tr>
</tbody></table> </center>
<hr>
        <div align="center">
           <form name="form1" method="post" action="">
              <table width="91%" border="0" align="center">
                  <tr bgcolor="#ccddee">
                      <td width="14%" height="6"><a href="user2.html">开通账户</a></td>
                      <td>用户列表</td>
                      <td bgcolor="#ccddee">
                          <div align="center">
                              <font color="#000000">账务账号</font>
                              <input name="textfield2" type="text" size="16">
                              <input type="submit"  value="查询">
                           </div>
                      </td>
                    </tr>
                </table>
            </form>
            <form action="listUser.html" method="post" name="userform">
            用户信息
                <div align="center">
                    <br/>
                    <table width="91%" border=1 align="center" cellpadding="0" cellspacing="0"  bgcolor="#ccddee">
                        <tr align="center"> 
                            <td width="55" height="31"> <div align="center"> 状态</div></td>
                            <td width="67"> <div align="center"> 账务账号</div></td>
                            <td width="73"> <div align="center"> 姓名</div></td>
                            
                            <td width="138"> <div align="center"> 邮箱</div></td>
                            
                        </tr> <%      
                		Statement stmt=conn.getCon().createStatement();
                		ResultSet rs=stmt.executeQuery("select *from tb_yonghu");
                		while(rs.next()){
                %>
                        <tr align="center" > 
                            <td height="10"> <%=rs.getString(6) %></td>
                            <td><div align="left"> <%=rs.getString(1) %></div></td>
                            <td><%=rs.getString(3) %></td>
                            
                            <td><%=rs.getString(7) %></td>
                                <%      }
           				rs.close();
           				stmt.close();
           				conn.getCon().close();%>                             
                        </tr>
                      
                            
                     
                    </table>
                </div>
             </form>
        </div><br></body>
</html>


