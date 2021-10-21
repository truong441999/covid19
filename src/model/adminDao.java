package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class adminDao implements ConnectDatabase{
	 public boolean checkLoginAdmin(String a, String b){
	     try{
	         
	    Class.forName(driverName);
	            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
	              Statement stmt= conn.createStatement();
	              ResultSet rs = stmt.executeQuery("Select* from admins where adName = '"+a+"'");
	                while(rs.next())
	              {          
	              if (rs.getString("adName").equals(a) && rs.getString("adPassword").equals(b)) {
				return true;     
		}
	            }conn.close();
	                
	        } catch (Exception ex) {
	            ex.printStackTrace();
	                System.out.println(ex.getMessage());
	        }
	            return false;  
	 }
}
