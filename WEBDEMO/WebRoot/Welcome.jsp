
<%@page import="com.WEBDEMO.Pojo.User"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="Css/Welcom.css" rel="stylesheet" type="text/css" />
<title>First</title>
	
</head>

<body>
	<ul id="nav">
        <li><a href="http://www.wzu.edu.cn/">SCHOOL</a></li>
        <li><a href="#">CLASS</a></li>
    </ul>
    
    <div align="center"  id="welcome">Welcome:${loginuser.uname } 性别：${loginuser.usex }</div>
    <div id="image">
    	<img src="Images/People2.PNG" />
        <img id="About" src="Images/About.png" />
    </div>
    <div id="main">
    
    <p id="say">欢迎来到问卷调查!</p>
    <p id="name">我是问卷星</p>
    
    <a id="wen" href="#"><p id="sex">进入问卷系统->></p></a>
    </div>
</body>
</html>
