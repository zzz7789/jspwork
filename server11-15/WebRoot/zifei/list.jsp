<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<%@ page import="conn.*" %>  

   <jsp:useBean id="conn" class="conn.sqlconn" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
        <title>资费管理</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
    <body background="../image/login.jpg"><!--背景色-->
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
        <div align="center"> 
            <table width="91%" border="1" align="center" cellpadding="0" cellspacing="0" 
bgcolor="ccddee">
                <tr bgcolor="#ccddee"> 
                    <td width="20%" height="24"><a href="addpPricing.jsp">添加资费</a></td>
                    <td width="16%">资费列表</td>
                    
                </tr>
            </table>

            <form  method="post" action="listPricing.jsp"  target="_self">
                <p>以下是资费列表</p>
               
                <table border=1 align="center" cellpadding="0" cellspacing="0" 
bgcolor="#ccddee" width="1101" height="70">
                    <tr align="center"> 
                        <td width="55" height="15"><strong>删除</strong></td>
                        <td width="161"> 
                            <div align="center">
                                <font face="宋体"><strong>资费名称</strong></font>
                            </div>
                        </td>
                        <td width="114"> 
                            <font face="宋体"><strong>月租费用</strong></font>
                        </td>
                        <td width="83"> 
                            <strong>每小时费用</strong>
                        </td>
                        <td width="208">
                            <strong>资费描述</strong>
                        </td>
                        <td width="66">
                            <strong>修改</strong>
                        </td>
                    </tr>     <%      
                		Statement stmt=conn.getCon().createStatement();
                		ResultSet rs=stmt.executeQuery("select *from tb_zif");
                		while(rs.next()){
                %>
                    <tr align="center" > 
                        <td height="10"> 
                            <input type="checkbox" name="checkbox" value="">
                        </td>
                            <td width=16%align=center><%=rs.getString(2)%></td>
                        </td>
                        <td><%=rs.getString(3)%> </td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><a href="pricingmes.jsp?a=<%=rs.getString(1)%>&b=<%=rs.getString(2)%>">修改</a></td>      
                   <%      }
           				rs.close();
           				stmt.close();
           				conn.getCon().close();%>     </tr>
                    <tr align="center"> 
                        <td height="22"> 
                            <input type="reset" name="delete" value="删除">
                        </td>
                        <td> 
                            <div align="center"> 
                                <input type="reset"  value="清除">
                            </div>
                        </td>
                        <td colspan="4"> 
                            <div align="center">
                                <strong><font color="#000066" 
size="2"><strong></strong></font> </strong>
                            </div>
                        </td>
                    </tr>    
                </table>

                <p></p>
            </form>
        </div>
    </body>
</html>
