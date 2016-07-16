package com.WEBDEMO.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.WEBDEMO.Pojo.User;
import com.WEBDEMO.Util.UtilJDBC;

public class LoginService {
	PreparedStatement sql=null; 
    ResultSet rs=null;
    Connection con=null;
    ArrayList<User> login=null;
    boolean  uflag =false;
    boolean  pflag =false;
    /**
     * 检查用户登录
     * @param user
     * @return  
     */
    public ArrayList<User> checkLogin(User user)
    {
 /*   	 
    	String db_uname;
    	String db_upassword;
    	String db_usex;*/
		    try{
		    	
		    	con=UtilJDBC.getConnection();//连接数据
		    	System.out.println(user.getUname());
		    	System.out.println(user.getUpassword());
		    	 sql = con.prepareStatement("SELECT * FROM T_WEBDEMO_USER WHERE uname=? and upassword=?");
		    	 sql.setString(1, user.getUname());
		    	 sql.setString(2, user.getUpassword());
		    	 rs = sql.executeQuery();
		    	 login=new ArrayList<User>();
		 
		    	 while(rs.next()){
		    		 
		    		User loginer=new User();
		    		 loginer.setUname(rs.getString("uname"));
		    		 loginer.setUpassword(rs.getString("upassword"));
		    		 loginer.setUsex(rs.getString("usex"));
		    		 login.add(loginer);
		    		/* db_uname = rs.getString("uname");
		    		 db_upassword =  rs.getString("upassword");
		    		 db_usex = rs.getString("usex");*/
		    		/* if(user.getUname().equals(db_uname)){
		    			 uflag = true;
		    			 if(user.getUpassword().equals(db_upassword)){
		    				 pflag = true;
		    				 User checkedUser = new User();
		    				 checkedUser.setUname(db_uname);
		    				 checkedUser.setUpassword(db_upassword);
		    				 checkedUser.setUsex(db_usex);
		    				 login = new ArrayList<User>();
		    				 login.add(checkedUser);///????
		    			 }else{
		    				 //密码错误
		    				 System.out.println("mi----->");
		    			 }
		    		 }else {
						//用户名错误
		    			 System.out.println("yong----->");
					}*/
		    	 }
		    }catch (Exception e) { 
				// TODO: handle exception
		    	e.printStackTrace();
			}finally
		       {    
		           if(sql!= null)
					try {
						sql.close();
					} catch (SQLException e) {
						e.printStackTrace();
					} 
		           if(con != null)
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					} 
		       } 
			return login;
    }
   
}
