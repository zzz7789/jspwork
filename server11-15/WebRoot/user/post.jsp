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

		<title>'post.jsp'</title>

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
            String user =request.getParameter("user");
            String pwd = request.getParameter("pwd");
            String name=request.getParameter("name");
            String sex=request.getParameter("sex");
			String email=request.getParameter("email");
            String sate=request.getParameter("sate");
        
			String[] strmoneyStyle=request.getParameterValues("moneyStyle");
			String [] strNationality=request.getParameterValues("nationality");
			String tel=request.getParameter("Phone");
			String [] strZY=request.getParameterValues("zy");
			
			StringBuffer moneyStyle=new StringBuffer();
			for(int i=0;i<strmoneyStyle.length;i++)
				{	moneyStyle.append(strmoneyStyle[i]);}
			String money = moneyStyle.toString();
			
           	StringBuffer Nationality=new StringBuffer();
			for(int i=0;i<strNationality.length;i++)
				{	Nationality.append(strNationality[i]);}
			String where = Nationality.toString();
			
			StringBuffer ZY=new StringBuffer();
			for(int i=0;i<strZY.length;i++)
				{	ZY.append(strZY[i]);}
			String job = ZY.toString();
			
           
			PreparedStatement pStm=conn.getCon().prepareStatement("insert into tb_yonghu (id,pwd,name,sex,money,sate,email,where1,job,phone) values(?,?,?,?,?,?,?,?,?,?)");
			pStm.setString(1,user);
			pStm.setString(2,pwd);
			pStm.setString(3,name);
			pStm.setString(4,sex);
			pStm.setString(5,money);
			pStm.setString(6,sate);
			pStm.setString(7,email);
			pStm.setString(8,where);
			pStm.setString(9,job);
			pStm.setString(10,tel);
			
		
			int rtn=pStm.executeUpdate();
			 out.print(job); 
			
     pStm.close();
     conn.getCon().close();
             response.sendRedirect("user.html");
        %>

	</body>
</html>
