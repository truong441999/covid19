package model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class userSucKhoeDao implements ConnectDatabase{
	  
	   public static void sucKhoe(String userPhone, String NgayTheoDoi,int Sot, int Ho, int KhoTho,int DauNguoi,int TieuChay,int Suckhoebt){
        try {
            Class.forName(driverName);
       Connection con = DriverManager.getConnection(dbURL,userDB,passDB);
        CallableStatement stmt=con.prepareCall("insert into TinhTrangHangNgay(userPhone,NgayTheoDoi,Sot,Ho,KhoTho,DauNguoi,TieuChay,Suckhoebt) values(?,?,?,?,?,?,?,?)");
        stmt.setString(1,userPhone);
         stmt.setString(2,NgayTheoDoi);
            stmt.setInt(3,Sot); 
            stmt.setInt(4, Ho);
            stmt.setInt(5, KhoTho);
            stmt.setInt(6, DauNguoi);
            stmt.setInt(7, TieuChay);
            stmt.setInt(8, Suckhoebt);
            stmt.executeUpdate();
            con.close();            
          
        } catch (Exception e) {
            e.printStackTrace();
         
        }
    } 
	   
	   public static ArrayList<userSucKhoe> listAllSucKhoe(String phone) {
	        ArrayList<userSucKhoe> userSucKhoes= new ArrayList<>();
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Select * from TinhTrangHangNgay where userPhone='"+phone+"'");
	            ResultSet rs = stmt.executeQuery();
	            while (rs.next()) {
	            	  String userPhone = rs.getString(2);           
	                  String userNgayTheoDoi = rs.getString(3);
	                  int sot = rs.getInt(4);
	                  int ho = rs.getInt(5);
	                  int khoTho = rs.getInt(6);
	                  int dauNguoi = rs.getInt(7);
	                  int tieuChay = rs.getInt(8);
	                  int sucKhoebt = rs.getInt(9);
	                userSucKhoe st = new userSucKhoe(userPhone, userNgayTheoDoi, sot, ho, khoTho, dauNguoi, tieuChay, sucKhoebt);
	                System.out.println(st.toString());
	                userSucKhoes.add(st);
	            }
	            rs.close();
	            stmt.close();
	            con.close();
	           
	        } catch (SQLException ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	      return userSucKhoes;

	    }
}
