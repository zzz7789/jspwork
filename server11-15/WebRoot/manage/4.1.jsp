<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="conn.*" %>  

   <jsp:useBean id="conn" class="conn.sqlconn" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <title>账单管理</title>
        <meta http-equiv="Content-Type" content="text/html; charset="UTF-8"/>  <!--解决中文乱码-->
    </head>
<body background="../image/login.jpg">     <!--设置背景颜色-->
<center><table width="1017" border="1" height="28">
<tbody><tr>
<td align="center"><a href="../user/user2.html">[用户管理]</a></td>
<td align="center"><a href="../zifei/list.jsp">[资费管理]</a></td>
<td align="center"><a href="../usermanage/1.html">[用户自服务]</a></td>
<td align="center"><a href="../manage/4.1.jsp">[管理员账务管理]</a></td>
<td align="center"><a href="../exit.jsp">[退出系统]</a></td>
</tr>
</tbody></table> </center>
 <hr size="1">
       <div align="center"><form action="4.2.html" method="post"><div align="center"> 
           <!--加入表格--></div><table height="33" width="1078" border="1" bgcolor="#ccddee">     
               <tr> 
                  <td width="12%" align="center">账务账号：</td> 
                  <td width="15%" align="left"><input type="text" name="textfield" size="10" maxlength="10"> </td> 
                  <td width="73%" colspan="2">  
                      <select size="1" name="select1">    <!--加入年的下拉菜单--> 
                          <option value="2010" selected>2010</option> 
                          <option value="2011">2011</option> 
                          <option value="2012">2012</option> 
                          <option value="2013">2013</option> 
                      </select>年 
                      <select size="1" name="select2">   <!--加入月份的下拉菜单--> 
                          <option value="1" selected>1</option> 
                          <option value="2">2</option> 
                          <option value="3">3</option> 
                          <option value="4">4</option> 
                          <option value="5">5</option> 
                          <option value="6">6</option> 
                          <option value="7">7</option> 
                          <option value="8">8</option> 
                          <option value="9">9</option> 
                          <option value="10">10</option> 
                          <option value="11">11</option> 
                          <option value="12">12</option> 
                      </select>月 
                      <input type="submit" value="查询" name="B122"> 
                  </td> 
               </tr> 
           </table> 
       </form></div>
       
        <div align="center">
            月账单
            <table width="95%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="36%">查询日期：2010年1月</td>
                    <td width="54%">&nbsp;</td>
                    <td width="10%">&nbsp;</td>
                </tr>
            </table>
            <table width="95%" border="1" bgcolor="ccddee">   <!--加入表格-->
                <tr bgcolor="ccddee">
                    <td>账务账号</td>
                    <td>登录总时间（小时）</td>
                    <td>费用(元)</td>
                    <td><div align="center">状态</div></td>
                    <td align="center">明细帐</td>
                </tr>
                 <%      
                		Statement stmt=conn.getCon().createStatement();
                		ResultSet rs=stmt.executeQuery("select *from db_zhangdan");
                		while(rs.next()){
                %>
                
                <tr>
                    <td><%=rs.getString(1)%></td>
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><div align="center"><%=rs.getString(4)%></div></td>
                    <td align="center"><a href="4.2.html"><%=rs.getString(5)%></a></td>   <!--在“明细”上加超链接跳转页面-->
                    <%      }
           				rs.close();
           				stmt.close();
           				conn.getCon().close();%>     </tr>
            </table>
            
        </div>
    </body>
</html>
