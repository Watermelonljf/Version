<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link href="Css/registerCss.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div id="main">
<div id="header">
<img src="Images/Head.png"></img>
</div>
<!-- action="User/RegServlet"  -->
<p id="text">#欢迎您前来注册#</p>
<!-- action="User/RegServlet" -->
<form id="content" >
	<div class="include"><span style="color:red">*</span><span class="flag">用户名 </span><input type="text" id="User" name="uname"  placeholder="请输入用户名" /> <p class="warning" id="Uwarning"></p></div>
   
   
  <div class="include"><span style="color:red">*</span><span class="flag">密码 </span><input type="password" id="password" name="upassword"  placeholder="请输入密码"   /> <p class="warning" id="Pwarning"></p></div>
    
   
<!--  <div class="include"><span style="color:red">*</span><span class="flag">确认密码</span><input type="password" id="Qpassword" placeholder="请确认密码"  /> <p class="warning" id="QPwarning"></p></div>
   
   -->
<!--   <div class="include"><span class="flag">邮箱</span><input type="text" id="email" placeholder="请输入有效邮箱" /> <p class="warning" id="Ewarning"></p></div>
  
  <div class="include"><span class="flag">电话</span><input type="text" id="number" placeholder="请输入电话全号" /> <p class="warning" id="Nwarning"></p></div>
	 -->
  <input type="button" id="register"  onclick="regCheck()" value="注册"/>
  
</form>

<div id="back"><a style="padding-bottom: 20px"href="login.jsp"><-点击回到登录页面</a></div>
</div>
<script type="text/javascript" src="Scripts/jquery-1.7.1.min.js"></script>
    <script src="Scripts/bootstrap/noty/jquery.noty.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap/noty/packaged/jquery.noty.packaged.min.js" type="text/javascript"></script>
     <script src="Scripts/bootstrap/noty/layouts/topCenter.js" type="text/javascript"></script>
     <script src="Scripts/bootstrap/noty/themes/default.js" type="text/javascript"></script>
     <script src="Scripts/bootstrap/noty/packaged/jquery.noty.packaged.min.js" type="text/javascript"></script>  

<script type="text/javascript" src="JS/registerJs.js"></script>

</body>
</html>
