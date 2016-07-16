
		function getID(id){
			return document.getElementById(id);
		}
		/*************************验证用户名的格式****************************/
       		function checkUser(us){
				var reg=/^[a-zA-z]\w{5,15}$/;//只允许使用大小写字母、数字、下划线。只许以
				return (reg.test(us));			
			}
			document.getElementById('User').onkeyup=function (){
				if(document.getElementById('User').value=="")
				{
					document.getElementById('Uwarning').innerHTML="";		
				}
				else
				{
						if(checkUser(this.value))
					{
						document.getElementById('Uwarning').style.color='#FC3';
						document.getElementById('Uwarning').innerHTML="此用户名可用";
					}
					else
					{
						document.getElementById('Uwarning').style.color='red';
						document.getElementById('Uwarning').innerHTML="请输入6~16位有字母、数字、下划线组成的用户名";
					}	
				}
			}
	
		/*************************验证密码的格式****************************/
			function checkpass(pa)
			{
				var reg= /[a-zA-Z0-9]{6,16}/;   //6~16位密码，有数字和字母组成，字母区分大小写
				return (reg.test(pa));
				
			}			
			document.getElementById('password').onkeyup=function ()
			{
				if(document.getElementById('password').value=="")
				{
		
					document.getElementById('Pwarning').innerHTML="";		
				}
				else
				{
					if(checkpass(this.value))
					{
						document.getElementById('Pwarning').style.color='#FC3';
						document.getElementById('Pwarning').innerHTML="完成密码输入";
					}
					else
					{
						document.getElementById('Pwarning').style.color='red';
						document.getElementById('Pwarning').innerHTML="请输入6~16位有字母、数字、下划线组成的密码";
					}  
				}
		    }
		/*************************验证第二次密码于第一次是否一样**********/
 			/*document.getElementById('Qpassword').onblur=function()
			{
				var pass=document.getElementById('password').value;
				if(document.getElementById('Qpassword').value=="")
				{
					document.getElementById('QPwarning').innerHTML="";		
				}
				else
				{
						if(pass==document.getElementById('Qpassword').value)
					{
						document.getElementById('QPwarning').style.color="#FC3";
						document.getElementById('QPwarning').innerHTML="两次密码一致";	
					}
					
					else
					{
						document.getElementById('QPwarning').style.color="red";
						document.getElementById('QPwarning').innerHTML="你两次输入的密码不一致，请重新输入";	
						
					}
					
				}
				
				
			}*/

		/*************************验证电话号码***********************/
			
			/*function Check_Num(num)
			{
				var reg=/^(0|86|17951)?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/;
				return (reg.test(num));
			}	
			
		  document.getElementById('number').onkeyup=function()
			{
				if(document.getElementById('number').value=="")
				{
					document.getElementById('Nwarning').innerHTML="";		
				}
				else
				{
					if(Check_Num(this.value))
					{
						document.getElementById('Nwarning').style.color="#FC3";
						document.getElementById('Nwarning').innerHTML="电话号码有效";	
					}
					else
					{
						document.getElementById('Nwarning').style.color="red";
						document.getElementById('Nwarning').innerHTML="电话号码格式错误";	
						
					}
				
				} 
			}*/
			
	    /*************************验证邮箱******************************/
		/*	function Check_Email(em)
		{
			var reg=/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			return (reg.test(em));
		}
		
		document.getElementById('email').onblur=function()
		{
			if(document.getElementById('email').value=="")
				{
					document.getElementById('Ewarning').innerHTML="";		
				}
				else
				{
					if(Check_Email(this.value))
						{
							document.getElementById('Ewarning').style.color="#FC3";
							document.getElementById('Ewarning').innerHTML="邮箱有效";	
						}
						else
						{
							document.getElementById('Ewarning').style.color="red";
							document.getElementById('Ewarning').innerHTML="邮箱格式错误";	
							
						}
				}
		}*/
	// JavaScript Document
			$("#User").get(0).onblur=function(){
				var uname=$("#User").val().trim();
				var upassword = $("#password").val().trim();
				var nowObject = getID('User');
					$.ajax({
						url:"User/RegServlet",
						type:"POST",
						data:{uname:uname,upassword:upassword},
						datatype:"json",
						  success: function (result) {    
							result = eval("(" + result + ")");        //解析Json
							 var warn = getID('Uwarning');
							 alert(nowObject.value);
							 if(checkUser(nowObject.value)){
								 if (result.code == 1) {
					            	   warn.style.color="green";
					            	   warn.innerHTML="用户名可用！";
				               			//noty({ text: "注册成功", type: 'success', layout: 'topCenter', timeout: 1000 });  
				               			//location.href="login.jsp";
				               }
				               else{
				            	   warn.style.color="red";
				            	   warn.innerHTML="该用户名已被注册";
				            	   //noty({ text: "注册失败", type: 'warning', layout: 'topCenter', timeout: 1000 });
				            	   }
							 }else{
								 	warn.style.color="red";
								 	warn.innerHTML="请输入6~16位有字母、数字、下划线组成的用户名";
							 }    
				           }
					})
			}
		
			function regCheck(){
				alert();
				var uname=$("#User").val().trim();
				var upassword = $("#password").val().trim();
				$.ajax({
					url:"User/RegServlet",
					type:"POST",
					data:{uname:uname,upassword:upassword},
					datatype:"json",
					  success: function (result) {    
						result = eval("(" + result + ")");        //解析Json
						 var warn = getID('Uwarning');
			               if (result.code == 1 && upassword!="") {
				            	   warn.style.color="green";
				            	   warn.innerHTML="用户名可用！";
			               			noty({ text: "注册成功", type: 'success', layout: 'topCenter', timeout: 2000 });  
			               			location.href="login.jsp";
			               }
			               else{
			            	   warn.style.color="red";
			            	   warn.innerHTML="该用户名已被注册";
			            	   noty({ text: "注册失败", type: 'warning', layout: 'topCenter', timeout: 2000 });
			            	   }
			           }
				})
			}	
				
				