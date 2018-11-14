<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
        <title>资费管理</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body background="../image/login.jpg"><!--背景色-->
    <center><table width="1017" border="1" height="28">
<tbody><tr>
<td align="center"><a href="../user/user2.html">[用户管理]</a></td>
<td align="center"><a href="../zifei/list.jsp">[资费管理]</a></td>
<td align="center"><a href="../usermanage/1.html">[用户自服务]</a></td>
<td align="center"><a href="../manage/4.1.html">[管理员账务管理]</a></td>
<td align="center"><a href="../exit.jsp">[退出系统]</a></td>

</tr>
</tbody></table> </center>
       <hr size="1"><!-- 与上页面的距离 -->
       <div align="center"><!-- 表格居中 -->
           <table width="91%" border="1" align="center" cellpadding="0" cellspacing="0" bgcolor="ccddee"><!-- 表格的宽度 ，边框宽度，居中，背景色，单元边与内容空白-->
              <tr bgcolor="#ccddee"><!--背景色-->
                  <td width="13%" height="24">添加资费</td><!--添加资费的长宽-->
                  <td width="13%"><a href="list.jsp">资费列表</a></td><!--点击资费列表跳转到lisrPricingyemin-->
             </tr>
          </table>
          <form action="check.jsp" method="post">
              <p>添加新的资费政策</p>
              <table width="1040" border="1" bgcolor="#ccddee" height="260">
                 <tr>
                   <td width="12%">资费名称</td>
                   <td width="30%"><input type="text" name="pricingName"></td>
                   <td>请输入新建资费名称</td>
                </tr>
                <tr> 
                    <td>月租费用</td>
                    <td><input type="text" name="baseFee"></td>
                    <td>请选择新建资费的月租费用（只允许输入数字或小数点）</td>
                </tr>
                <tr> 
                    <td>每小时费用</td>
                    <td><input type="text" name="rateFee"></td>
                    <td>请输入每小时的费用（只允许用数字或小数点）</td>
                </tr>
                <tr> 
                    <td height="10">资费描述</td>
                    <td><textarea name="pricingDesc"></textarea></td>
                    <td>请输入对新建资费的简单描述（最多256个汉字）</td>
                </tr>
                <tr> 
                    <td colspan="3" align="center">
                        <input type="submit" value="提交">             
                        <input type="reset" value="清除">
                    </td>
                </tr>
            </table>
            <p>&nbsp;</p>
        </form>
      </div>
    </body>
</html>