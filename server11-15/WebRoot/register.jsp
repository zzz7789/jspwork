<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<link href="../css/style.css" rel="stylesheet" type="text/css" /> 
        <title>ͨ通信资费管理系统注册页面</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <script type="text/javascript">
	
	function mycheck() {
	//判断用户名是否为空
		if (form1.userName.value == "") {
			alert("用户名不能为空，请输入用户名！");
			form1.userName.focus();

		}
		if (form1.userPassword.value != form1.userPassword1.value) {
			alert("两次密码不一致");
			form1.userName.focus();

		}
		if (form1.userPassword.value == "") {
			alert("密码不能为空，请输入密码！");
			form1.userPassword.focus();

		}
		if ((form1.userPassword.value != "") && (form1.userName.value != "")&&form1.userPassword.value == form1.userPassword1.value) {

			form1.submit();
		}
	}
</script>
    </head>
	<body background="image/login.jpg">
		<form action="reg_submit.jsp" method="post" name="form1">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<table width="498" height="387" border="1" align="center">
				<tr bgcolor="#00FFFF">
					<td colspan="2">
						<h3 align="center">
							请注册...
						</h3>
					</td>
				</tr>
				<tr>
					<td width="107" align="right" bgcolor="#00FFFF">
						用户名：
					</td>
					<td width="375" bgcolor="#99FF99">
						<input type="text" name="userName" size="20" />
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						密码：
					</td>
					<td bgcolor="#99FF99">
						<input type="password" name="userPassword" size="22" />
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						确认密码：
					</td>
					<td bgcolor="#99FF99">
						<input type="password" name="userPassword1" size="22" />
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						个人爱好:
					</td>
					<td bgcolor="#99FF99">
						<input type="checkbox" name="checkbox" value="抽烟"/>
						抽烟
						<input type="checkbox" name="checkbox" value="喝酒"/>
						喝酒
						<input type="checkbox" name="checkbox" value="烫头"/>
						烫头
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						职业：
					</td>
					<td bgcolor="#99FF99">
						<select name="select" size="1">
							<option value="Java" selected>
								Java工程师
							</option>
							<option value="学生">
								学生
							</option>
							<option value="公务员">
								公务员
							</option>
							<option value="其他">
								其他
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						性别：
					</td>
					<td bgcolor="#99FF99">
						<input type="radio" name="sex" value="男" checked="checked"/>
						男
						<input type="radio" name="sex" value="女" />
						女
						
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						电子邮箱：
					</td>
					<td bgcolor="#99FF99">
						<input type="text" name="email" />
					</td>
				</tr>
				<tr>
					<td align="right" bgcolor="#00FFFF">
						手机号：
					</td>
					<td bgcolor="#99FF99">
						<input type="text" name="Telephone" />
					</td>
				</tr>


				
				
				<tr>
					<td align="right" bgcolor="#00FFFF">
						<input type="Button" value="提交" onClick="mycheck()" />
					</td>
					<td bordercolor="#33FF00" bgcolor="#99FF99">
						<input type="reset" value="重置" />
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
