package com.WEBDEMO.UserServlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import com.WEBDEMO.Pojo.User;
import com.WEBDEMO.Service.RegistService;

public class RegServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String uname = request.getParameter("uname");
			String upassword = request.getParameter("upassword");
			User user=new User(uname, upassword);
			System.out.println(user+"---->");
			JSONObject jsonObject = new JSONObject();
			if(new RegistService().Save(user)){
				jsonObject.put("code", 1);
			}else{
				jsonObject.put("code", 0);
			}
			PrintWriter out = response.getWriter();
			out.print(jsonObject);
			out.close();
			
	
	}

}
