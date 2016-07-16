package com.WEBDEMO.Pojo;

import javax.servlet.jsp.PageContext;

public class User {
		private int userid;
		private String  uname;
		private String upassword;
		private String usex;
		private String uHeadUrl;
		
		public User() {
			super();
		}
		public int getUserid() {
			return userid;
		}
		public void setUserid(int userid) {
			this.userid = userid;
		}
		public String getUname() {
			return uname;
		}
		public void setUname(String uname) {
			this.uname = uname;
		}
		public String getUpassword() {
			return upassword;
		}
		public void setUpassword(String upassword) {
			this.upassword = upassword;
		}
		public String getUsex() {
			return usex;
		}
		public void setUsex(String usex) {
			this.usex = usex;
		}
		public User(String uname, String upassword) {
			super();
			this.uname = uname;
			this.upassword = upassword;
		}
		@Override
		public String toString() {
			return "User [uname=" + uname + ", upassword=" + upassword + "]";
		}
		
		
		
		
		
}
