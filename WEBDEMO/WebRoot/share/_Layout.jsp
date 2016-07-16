<%@ page language="java" import="java.util.*" %>
<%@ taglib uri="Mytag" prefix="Layout"%>
<Layout:block name="import"></Layout:block>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title><Layout:block name="title"></Layout:block></title>
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	
	<link href="Content/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/style-responsive.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/style-metro.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/style.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/default.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/uniform.default.css" rel="stylesheet" type="text/css" />
	<link href="Content/bootstrap/public.css" rel="stylesheet" type="text/css" />
	<!-- <link href="Content/bootstrap/DT_bootstrap.css" rel="stylesheet" /> -->
	<link rel="shortcut icon" href="Content/image/favicon.ico"/>
	
	
	<script src="Scripts/bootstrap/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/bootstrap.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/public.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/LianXianAjax.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/config.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/wloften.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/app.js" type="text/javascript"></script>
	<script src="Scripts/bootstrap/index.js" type="text/javascript"></script>
	<Layout:block name="Mycss"></Layout:block>

</head>	

<body class="page-header-fixed">
    <div class="header navbar navbar-inverse navbar-fixed-top">
        <div class="navbar-inner">
            <div class="container-fluid" style="padding-left:0">
                <a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse">
                    <img alt="" src="菜单" />
                </a>
                <ul class="nav pull-right">
                    <!-- END TODO DROPDOWN -->

                    <!-- BEGIN USER LOGIN DROPDOWN -->

                    <li class="dropdown user">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="./Images/Head.png"  style="width:28px;"/>                    
                            <i class="icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#passwordModal" data-toggle="modal"><i class="icon-key"></i>&nbsp;&nbsp;&nbsp;密码修改</a></li>
                            <li><a href="User/LoginOut"><i class="icon-off"></i>&nbsp;&nbsp;&nbsp;退出</a></li>
                        </ul>
                    <!-- END USER LOGIN DROPDOWN -->
                </ul>
            </div>

        </div>
    </div>
     <div class="page-container">
        <div class="page-sidebar nav-collapse collapse" style="left: 0">
            <ul id="menuall" class="page-sidebar-menu">
                <li>
                    <div class="sidebar-toggler hidden-phone" style="margin-bottom: 10px;"></div>
                </li>
                <li class="start active">
                    <a href="./Weclome.jsp">
                        <i class="icon-home"></i>
                        <span class="title">首页</span>
                        <span class="selected"></span>
                    </a>
                </li>

                <li id="menupage6">
                    <a href="javascript:;">
                        <i class="icon-book"></i>
                        <span class="title">商品管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li id="menupage6_2">
                            <a href="Goods/GoodsList.jsp?active=menupage6_2">商品列表</a>
                        </li>
                        <li id="menupage6_0">
                            <a href="CommunicationView/Message.jsp?active=menupage6_0">短消息管理</a>
                        </li>
                        <li id="menupage6_5">
                            <a href="CommunicationView/Addone.jsp?active=menupage6_5">添加联系人</a>
                        </li>  
                    </ul>
                </li>
                
                    <li id="menupage5">
                    <a href="javascript:;">
                        <i class="icon-male"></i>
                        <span class="title">个人管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li id="menupage5_2">
                            <a href="Individual/Arrangement.jsp?active=menupage5_2">日程安排</a>
                        </li>
                        <li id="menupage5_1">
                            <a href="">工作记录</a>
                        </li>
                         <li id="menupage5_0">
                            <a href="Individual/personal_info.jsp?active=menupage5_0">个人信息管理</a>
                        </li>
                        <!-- <li id="menupage5_1">
                            <a href="/Student/index?active=menupage5_1">学生信息列表</a>
                        </li> -->
                    </ul>
                </li>
                 <li id="menupage4">
                    <a href="javascript:;">
                        <i class="icon-group"></i>
                        <span class="title">企业管理</span>
                        <span class="arrow "></span>
                    </a>
                    <ul class="sub-menu">
                        <li id="menupage4_2">
                            <a href="CompanyView/Publish.jsp?active=menupage4_2">公司公告</a>
                        </li>
                        <li id="menupage4_0">
                            <a href="CompanyView/Publish.jsp?active=menupage4_0">工作公告</a>
                        </li>
                      <!--    <li id="menupage4_1">
                            <a href="/Student/index?active=menupage4_1">学生信息列表</a>
                        </li>-->
                    </ul>
                </li>
                 
                </ul>
               </div>
               </div>
    <div class="page-content">
            <div class="container-fluid">
                <div class="row-fluid">
                    <div class="span12">   
                        <h3 class="page-title">    
                        </h3>
                    </div>
                </div>
                <div class="row-fluid">
       			 <div>

               </div>
               <Layout:block name="MyContent"></Layout:block>
        </div>
    </div>

     </div>
    <div class="footer">
        <div class="footer-inner">
        </div>
        <div class="footer-tools">
            <span class="go-top">
                <i class="icon-angle-up"></i>
            </span>
        </div>
    </div>

    <!--密码修改-->
    <div id="passwordModal" class="modal hide fade" tabindex="-1" data-backdrop="static" data-keyboard="false">
        <div class="modal-body">
            <div class="tab-pane active" id="portlet_tab3">
                <h4>密码修改</h4>
                <div class="input-prepend">
                    <span class="btn green" style="width: 56px; text-align: right;">旧密码</span><input class="m-wrap" id="txtOldPassword" style="height:34px" size="16" type="password"><br />
                    <br />
                    <span class="btn red" style="width: 56px; text-align: right;">新密码</span><input class="m-wrap" id="txtNewPassword" style="height:34px" size="16" type="password"><br />
                    <br />
                    <span class="btn red" style="width: 56px; text-align: right;">确认密码</span><input class="m-wrap" id="txtReNewPassword" style="height:34px" size="16" type="password">
                </div>
            </div>
        </div>

        <div class="modal-footer">
            <span id="passwordMessage" style="font-weight: 700; color: red;"></span>
            <button type="button" class="btn green" onclick="passwordSave()">修改</button>
            <button type="button" class="btn green" data-dismiss="modal">关闭</button>
        </div>

    </div>
	    <script src="Scripts/bootstrap/noty/jquery.noty.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap/noty/packaged/jquery.noty.packaged.min.js" type="text/javascript"></script>
     <script src="Scripts/bootstrap/noty/layouts/topCenter.js" type="text/javascript"></script>
     <script src="Scripts/bootstrap/noty/themes/default.js" type="text/javascript"></script>
     <script src="Scripts/bootstrap/noty/packaged/jquery.noty.packaged.min.js" type="text/javascript"></script>  
     <Layout:block name="MyScript"></Layout:block>
   <script>
          jQuery(document).ready(function () {
            App.init();
            var menuid = getQueryString("active");
            if (menuid == null || menuid == "") {
                return;
            }
            else {
                $("#menuall").children().removeClass("active");
                $("#" + menuid).addClass("active");
                $("#" + menuid).children("a").children(".arrow").addClass("open");

                if (menuid.split("_").length > 1) {
                    $("#" + menuid.split("_")[0]).addClass("active");
                    $("#" + menuid.split("_")[0]).children("a").children(".arrow").addClass("open");
                    $("#" + menuid.split("_")[0]).children("a").append("<span class=\"selected\"></span>");
                }
            }
        });

		//退出
		function logout(){
			
		}
        //密码修改
        function passwordSave() {
            var txtOldPassword = $("#txtOldPassword").val();
            var txtNewPassword = $("#txtNewPassword").val();
            var txtReNewPassword = $("#txtReNewPassword").val();
            //验证处理
            if (txtOldPassword == "") {
                $("#passwordMessage").text("旧密码不能为空!!!");
                return;
            }
            if (txtNewPassword == "") {
                $("#passwordMessage").text("新密码不能为空!!!");
                return;
            }
            if (txtNewPassword != txtReNewPassword) {
                $("#passwordMessage").text("两次密码不一致!!!");
                return;
            }
            if (txtOldPassword == txtReNewPassword) {
                $("#passwordMessage").text("新密码不能和旧密码一样!!!");
                return;
            }
            $.ajax({
                url: "com.Manager.Home/ChangePassword",
                type: "post",
                dataType: "json",
                data: { "OldPassword": txtOldPassword, "NewPassword": txtNewPassword },
                success: function (data) {
                    if (data.code == 1) {
                        $("#passwordMessage").text(data.msg);
                        window.setTimeout("window.location='com.Manager.Home/LoginOut'", 3000);
                    }
                    else if(data.code==0){
                        $("#passwordMessage").text(data.msg);
                    }
                    else{
                    	$("#passwordMessage").text(data.msg);
                    }
                },
                error: function () {
                    $("#passwordMessage").text("网络数据访问失败");
                }

            });  
        }  

    </script>
    </body>
 