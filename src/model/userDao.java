package model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class userDao implements ConnectDatabase{
	   public static user update(user ss) {
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Update users set userName=?,userNgaySinh=?,userGioiTinh=?,userHuyen=?,userXa=?,userDiaChi=? where userPhone=?");
	            stmt.setString(1, ss.getUserName());
	            stmt.setString(2, ss.getUserNgaySinh());
	            stmt.setString(3, ss.getUserGioiTinh());
	            stmt.setString(4, ss.getUserHuyen());
	            stmt.setString(5, ss.getUserXa());
	            stmt.setString(6, ss.getUserDiaChi());
	            stmt.setString(7, ss.getUserPhone());
	            int rc = stmt.executeUpdate();
	            con.close();
	            return ss;
	        } catch (Exception ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
	   public static user updatePass(user sss) {
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Update users set userName=?,userPassword=?,userCMND=? where userPhone=?");
	          
	            stmt.setString(1, sss.getUserName());
	            stmt.setString(2, sss.getUserPassword());
	            stmt.setString(3, sss.getUserCMND());
	            stmt.setString(4, sss.getUserPhone());
	            int rc = stmt.executeUpdate();
	            con.close();
	            return sss;
	        } catch (Exception ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
	   public static user updateTrangThai(user s) {
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Update users set TrangThai=? where userPhone=?");
	            stmt.setString(1, s.getUserTrangThai());
	            stmt.setString(2, s.getUserPhone());
	            int rc = stmt.executeUpdate();
	            con.close();
	            return s;
	        } catch (Exception ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
	   public static user updateSTT(user s) {
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Update users set statuss=? where userPhone=?");
	            stmt.setString(1, s.getUserSTT());
	            stmt.setString(2, s.getUserPhone());
	            int rc = stmt.executeUpdate();
	            con.close();
	            return s;
	        } catch (Exception ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
	   public static void addUser(String userPhone, String userPassword,String userName, String userCMND, String userNgaySinh,String userGioiTinh,String userHuyen,String userXa,String userDiaChi,String TrangThai,String statuss){
           try {
               Class.forName(driverName);
          Connection con = DriverManager.getConnection(dbURL,userDB,passDB);
           CallableStatement stmt=con.prepareCall("insert into users(userPhone,userPassword,userName,userCMND,userNgaySinh,userGioiTinh,userHuyen,userXa,userDiaChi,TrangThai,statuss) values(?,?,?,?,?,?,?,?,?,?,?)");
           stmt.setString(1,userPhone);
            stmt.setString(2,userPassword);
               stmt.setString(3,userName); 
               stmt.setString(4, userCMND);
               stmt.setString(5, userNgaySinh);
               stmt.setString(6, userGioiTinh);
               stmt.setString(7, userHuyen);
               stmt.setString(8, userXa);
               stmt.setString(9, userDiaChi);
               stmt.setString(10, TrangThai);
               stmt.setString(11, statuss);
               stmt.executeUpdate();
               con.close();            
             
           } catch (Exception e) {
               System.out.print("Số điện thoại đã tồn tại");
            
           }
       } 
	   public static ArrayList<user> listAll() {
	        ArrayList<user> users= new ArrayList<>();
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Select * from users");
	            ResultSet rs = stmt.executeQuery();
	            while (rs.next()) {
	            	  String userPhone = rs.getString(1);           
	                  String userPassword = rs.getString(2);
	                  String userName = rs.getString(3);
	                  String userCMND = rs.getString(4);
	                  String userNgaySinh = rs.getString(5);
	                  String userGioiTinh = rs.getString(6);
	                  String userHuyen = rs.getString(7);
	                  String userXa = rs.getString(8);
	                  String userDiaChi = rs.getString(9);
	                  String userTrangThai = rs.getString(10);
	                  String userSTT = rs.getString(11);
	                user st = new user(userPhone, userPassword, userName, userCMND, userNgaySinh, userGioiTinh, userHuyen, userXa, userDiaChi, userTrangThai,userSTT);
	                System.out.println(st.toString());
	                users.add(st);
	            }
	            rs.close();
	            stmt.close();
	            con.close();
	           
	        } catch (SQLException ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	      return users;

	    }
	   
	   public static ArrayList<user> listuser(String phone) {
	        ArrayList<user> users= new ArrayList<>();
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Select * from users where userPhone='"+phone+"'");
	            ResultSet rs = stmt.executeQuery();
	            while (rs.next()) {
	            	  String userPhone = rs.getString(1);           
	                  String userPassword = rs.getString(2);
	                  String userName = rs.getString(3);
	                  String userCMND = rs.getString(4);
	                  String userNgaySinh = rs.getString(5);
	                  String userGioiTinh = rs.getString(6);
	                  String userHuyen = rs.getString(7);
	                  String userXa = rs.getString(8);
	                  String userDiaChi = rs.getString(9);
	                  String userTrangThai = rs.getString(10);
	                  String userSTT = rs.getString(11);
	                user st = new user(userPhone, userPassword, userName, userCMND, userNgaySinh, userGioiTinh, userHuyen, userXa, userDiaChi, userTrangThai,userSTT);
	                System.out.println(st.toString());
	                users.add(st);
	            }
	            rs.close();
	            stmt.close();
	            con.close();
	           
	        } catch (SQLException ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	      return users;

	    }
	   public boolean checkLoginUser(String a, String b){
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		              Statement stmt= conn.createStatement();
		              ResultSet rs = stmt.executeQuery("Select* from users where userPhone = '"+a+"'");
		                while(rs.next())
		              {          
		              if (rs.getString("userPhone").equals(a) && rs.getString("userPassword").equals(b) && rs.getString("statuss").equals("Open")) {
					return true;     
			}
		            }conn.close();
		                
		        } catch (Exception ex) {
		            ex.printStackTrace();
		                System.out.println(ex.getMessage());
		        }
		            return false;  
		 }
	   public boolean checkLoginUserBlocked(String a, String b){
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		              Statement stmt= conn.createStatement();
		              ResultSet rs = stmt.executeQuery("Select* from users where userPhone = '"+a+"'");
		                while(rs.next())
		              {          
		              if (rs.getString("userPhone").equals(a) && rs.getString("userPassword").equals(b) && rs.getString("statuss").equals("Blocked")) {
					return true;     
			}
		            }conn.close();
		                
		        } catch (Exception ex) {
		            ex.printStackTrace();
		                System.out.println(ex.getMessage());
		        }
		            return false;  
		 }
	   public static int deleteluser(int pid)
	    {
	         try{
	         Class.forName(driverName);
	            Connection con=DriverManager.getConnection(dbURL,userDB,passDB);
	            PreparedStatement stmt=con.prepareStatement("Delete QuanHeGiaDinh where idTV=?");
	            stmt.setInt(1, pid);
	            stmt.executeUpdate();
	            con.close();
	        } catch (Exception ex) {
	            Logger.getLogger(nguoiThan.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return 0;
	    }
	   public static ArrayList<Count> CountAll() {
	        ArrayList<Count> CountAlls= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            CountAlls.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return CountAlls;
	   }  
	   public static ArrayList<Count> CheckPhone(String Phone) {
	        ArrayList<Count> CountPhone= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userPhone = '"+Phone+"'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            CountPhone.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return CountPhone;
	   }  
	   
	   public static ArrayList<Count> CountGioiTinh() {
	        ArrayList<Count> CountGT= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userGioiTinh='Nam'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            CountGT.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return CountGT;
	   }  
	   public static ArrayList<Count> CountGioiTinhN() {
	        ArrayList<Count> CountGTN= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userGioiTinh Like N'Nữ'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            CountGTN.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return CountGTN;
	   }  
}
