
		/*************************验证用户名的格式****************************/
       		    function checkuser(us)
			{
				var reg=/^[a-zA-z]\w{6,15}$/;//只允许使用大小写字母、数字、下划线。只许以
				return (reg.test(us));
				
			}
			document.getElementById('User').onkeyup=function ()
			{
				if(document.getElementById('User').value=="")
				{
					document.getElementById('Uwarning').innerHTML="";		
				}
				else
				{
						if(checkuser(this.value))
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
			}// JavaScript Document
			
	function check(){
			
	}
	

		
 $("#login").click(function(){
	 	var uname=$("#User").val().trim();
	 	var upassword=$("#password").val().trim();
	 	
	   $.ajax({
           url: "User/loginServlet",
           type: "POST",
           data: { uname: uname, upassword: upassword},
           dataType: "json",
           success: function (result) {            
        	
               if (result.code == 1) {
            	   noty({ text: "登录成功", type: 'success', layout: 'topCenter', timeout: 2000 });  
               		location.href="Home/index.jsp";
               }
               else{
            	   noty({ text: "登录失败", type: 'warning', layout: 'topCenter', timeout: 2000 }); 
            	   
               }
           }
         
	   })
 })

	
	
	
	
	
			
			
			
