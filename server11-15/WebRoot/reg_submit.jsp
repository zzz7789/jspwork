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
		<base href="<%=basePath%>">

		<title>'reg_submit.jsp'</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body background="image/login.jpg">
		<% 
            //设置请求的编码，用于解决中文乱码问题
            request.setCharacterEncoding("UTF-8");	
            String name =request.getParameter("userName");
            String pwd = request.getParameter("userPassword");
            String[] str1 = request.getParameterValues("checkbox");
			String[] str2=request.getParameterValues("select");
			String sex=request.getParameter("sex");
			String Email=request.getParameter("email");
			String tel=request.getParameter("Telephone");
			StringBuffer like=new StringBuffer();
			String Like ="";
			if(str1!=null){
				for(int i=0;i<str1.length;i++)
				{	like.append(str1[i]);}
				 Like = like.toString();
			}
			StringBuffer job=new StringBuffer();
			for(int i=0;i<str2.length;i++)
				{	job.append(str2[i]);}
			String Job = job.toString();
           
			PreparedStatement pStm=conn.getCon().prepareStatement("insert into tb_user (username,pwd,aihao,job,sex,email,phone) values(?,?,?,?,?,?,?)");
			pStm.setString(1,name);
			pStm.setString(2,pwd);
			pStm.setString(3,Like);
			pStm.setString(4,Job);
			pStm.setString(5,sex);
			if(Email==null){
			pStm.setString(6,null);
			}
			else{pStm.setString(6,Email);}
			if(tel==""){
				pStm.setString(7,null);
			}
			else{pStm.setString(7,tel);
			}
			int rtn=pStm.executeUpdate();
			
			
     pStm.close();
     conn.getCon().close();
             response.sendRedirect("login.jsp");
        %>

	</body>
</html>
