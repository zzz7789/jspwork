<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
    <head>
 <script type="text/javascript">
	function mycheck() {
                //判断用户名是否为空
	
	if (form1.userName.value == "") {
			alert("用户名不能为空，请输入用户名！");
			form1.userName.focus();

		}
		//判断密码是否为空
		if (form1.userPassword.value == "") {
			alert("密码不能为空，请输入密码！");
			form1.userPassword.focus();

		}

		if ((form1.userPassword.value != "") && (form1.userName.value != "")) {

			form1.submit();
		}
	}
</script>

<link href="../css/style.css" rel="stylesheet" type="text/css" /> 
        <title>通信资费管理系统</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
    <body background="image/login.jpg">
        <br><br><br><br>
        <br><br><br><br>
        <center>
           <form action="loginCheck.jsp" method="post" name="form1">
              <table width="378" height="260"   border="1" align="center" bgcolor="ccddee">
              <tr><td colspan="2" align="center"><h1>登录</h1></td>
              <tr>
                      <td >用户名：</td>
                      <td><input type="text" name="userName" size="20" /></td>
                  </tr> 
 
                      <td   >密码：</td>
                      <td  ><input type="password" name="userPassword" size="22"/></td>
                  
                  <tr>
                      <td align="center"  ><input type="Button" name="submit1" value="登录" onClick="mycheck()"></td>
                      <td align="center"  ><input type="reset" value="重   置"/></td>
                  </tr>
                  <tr>
                      <td  colspan="2" align="center" bgcolor="#95BDFF"  >通信改变生活！</td>
                  </tr>
                  <tr>
                      <td colspan="2" align="center" bgcolor="#95BDFF"  >
                          <a href="register.jsp">注册</a>                      </td>
                  </tr>
               </table>
          </form>
        
           </center>
    </body>
</html>