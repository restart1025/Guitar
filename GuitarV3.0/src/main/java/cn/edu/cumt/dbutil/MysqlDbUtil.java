package cn.edu.cumt.dbutil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class MysqlDbUtil {

	private static ComboPooledDataSource dataSource=new ComboPooledDataSource();
	 static {
		try {
			dataSource.setDriverClass("com.mysql.jdbc.Driver");
			dataSource.setJdbcUrl("jdbc:mysql://localhost/misdb?useSSL=false&amp;characterEncoding=utf-8");
			dataSource.setUser("root");
			dataSource.setPassword("123456");
			dataSource.setInitialPoolSize(50);
			dataSource.setMaxPoolSize(100);
			dataSource.setMaxIdleTime(10000);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	 
	 public static Connection getConnection(){
		 Connection conn=null;
		 try {
			 conn= MysqlDbUtil.dataSource.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 return conn;
	 }
	 public static boolean executeUpdate(String sql,Object[] args){
		 boolean sign=false;
		 Connection conn=null;
		 PreparedStatement pst=null;
		 try{
			 conn=dataSource.getConnection();
			 pst=conn.prepareStatement(sql);
			 if(args!=null&&args.length>0){
				 for(int i=0;i<args.length;i++){
					 pst.setObject(i+1, args[i]);
				 }
			 }
			 int rows=pst.executeUpdate();
			 sign=rows>0?true:false;
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 return sign;
	 }
	 public static ResultSet executeQuery(String sql,Object[] args){
		 Connection conn=null;
		 PreparedStatement pst=null;
		 ResultSet rs=null;
		 try{
			 conn=MysqlDbUtil.dataSource.getConnection();
			 pst=conn.prepareStatement(sql);
			 if(args!=null&&args.length>0){
				 for(int i=0;i<args.length;i++){
					 pst.setObject(i+1, args[i]);
				 }
			 }
			 rs=pst.executeQuery();
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 return rs;
	 }
	 public static void closeAll(ResultSet rs,Statement st,Connection conn){
		 try{
			 if(rs!=null) rs.close();
			 if(st!=null) st.close();
			 if(conn!=null) conn.close();
		 }catch(SQLException e){
			 e.printStackTrace();
		 }
	 }
	
}
