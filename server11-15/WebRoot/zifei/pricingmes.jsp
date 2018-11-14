<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*,java.sql.*,java.net.*" %>
<%@ page import="conn.*" %>  

<!DOCTYPE html>
<html>
    <head>
        <title>资费管理</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
<body background="../image/login.jpg">
<center><table width="1017" border="1" height="28">
<tbody><tr>
<td align="center"><a href="../user/user2.html">[用户管理]</a></td>
<td align="center"><a href="../zifei/list.jsp">[资费管理]</a></td>
<td align="center"><a href="../usermanage/1.html">[用户自服务]</a></td>
<td align="center"><a href="../manage/4.1.html">[管理员账务管理]</a></td>
<td align="center"><a href="../exit.jsp">[退出系统]</a></td>

</tr>
</tbody></table> </center>
        <hr size="1">
        <div align="center">
           <table width="1042" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="ccddee" height="26">
               <tr bgcolor="#ccddee">
                   <td width="13%" height="24"><a href="addpPricing.jsp">添加资费</a></td>
                   <td width="13%" align="left"><a href="list.jsp">资费列表</a></td>
                   
               </tr>
           </table> <% String a=request.getParameter("a");
           				String b=request.getParameter("b");%>
           <form action="pricheck.jsp?a=<%=a%>" method="post">
            <p>以下修改资费政策列表</p>
               <table width="1039" border="1" bgcolor="#ccddee" height="251">
                  <tr>
                      <td width="12%">资费名称</td>
                      <td width="30%"><%=b %></td>
                      <td><br></td>
                  </tr>
                  <tr>
                      <td>月租费用</td>
                      <td><input name="baseFee" type="text" value="30"></td>
                      <td>更改月租费用（只允许输入数字或小数点）</td>
                 </tr>
                 <tr> 
                     <td>每小时费用</td>
                     <td><input name="retaFee" type="text" value="3"></td>
                     <td>更改每小时的费用（只允许用数字或小数点）</td>
                 </tr>
                 <tr>
                     <td height="10">资费描述</td>
                     <td><textarea name="pricingDesc">月租30元,每小时3元</textarea></td>
                     <td>更改资费信息（最多256个汉字）</td>
                 </tr>
                 <tr>
                    <td  colspan="3" align="center">
                    <input type="submit" name="Submit" value="修改">
                        <input type="reset" name="Submit2" value="重设">
                    </td>
                 </tr>
               </table>
               <p>&nbsp;</p>
           </form>
        </div>
    </body>
</html>