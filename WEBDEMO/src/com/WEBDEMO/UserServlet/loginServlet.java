package com.WEBDEMO.UserServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.jms.Session;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspFactory;
import javax.servlet.jsp.PageContext;

import net.sf.json.JSONObject;

import com.WEBDEMO.Pojo.User;
import com.WEBDEMO.Service.LoginService;

public class loginServlet extends HttpServlet {


	/**
	 * 
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doPost(request, response);
	
	}

	/**
	 * 
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			String uname = request.getParameter("uname");
			String upassword = request.getParameter("upassword");
			User user = new User(uname, upassword);
			LoginService loginService = new LoginService();
			ArrayList<User> users = null;
			try{
				users = loginService.checkLogin(user);
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			response.setCharacterEncoding("UTF-8");
			JSONObject jb = new JSONObject();
			if(users!=null && users.size()>0){
				HttpSession session=request.getSession();
				User db_userUser = new User();
				db_userUser.setUname(users.get(0).getUname());
				db_userUser.setUpassword(users.get(0).getUpassword());
				db_userUser.setUsex(users.get(0).getUsex());
				session.setAttribute("loginuser", db_userUser);    //
				jb.put("code", 1);
			}else {
				jb.put("code", 0);
			}
			PrintWriter out=response.getWriter();
			out.print(jb);
			out.close();
	}
}
