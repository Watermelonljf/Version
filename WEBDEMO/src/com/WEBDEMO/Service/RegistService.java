package com.WEBDEMO.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.WEBDEMO.Pojo.User;
import com.WEBDEMO.Util.UtilJDBC;

public class RegistService {
	 PreparedStatement sql=null; 
     Connection con=null;
     ResultSet rs = null;
     boolean flag=false;      
	
		public boolean Save(User user){
			
		    try{
				con=UtilJDBC.getConnection();//连接数据	
				sql=con.prepareStatement("select count(USERID) from T_WEBDEMO_USER where uname='"+user.getUname()+"'");
				rs=sql.executeQuery();
				if(rs.next()){
					int num = rs.getInt(1);
					if(num>0){                                //如果>0说明数据库中已存在
						flag = false;
					}
					else {
						System.out.println(user);
						if(user.getUpassword().equals("")){
								flag = true;                       //
						}
						else{
							sql=con.prepareStatement("insert into T_WEBDEMO_USER(userid,uname,upassword,usex) values(users_sequence.nextval,?,?,?)");
						    sql.setString(1, user.getUname());
					        sql.setString(2, user.getUpassword());
					        sql.setString(3,"男");
					        if(sql.executeUpdate()>0){
					        	flag=true;
					        }//执行！
					        else {
								flag = false;
							}
						}
					}
				}
			   
			}catch(SQLException E){
				E.printStackTrace();
				flag=false;
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
			return flag;
		}

}
