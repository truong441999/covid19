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

public class nguoiThanDao implements ConnectDatabase{
	   public static void nguoiThan(String userPhone, String nTPhone, String nTName, String nTNgaySinh, String nTGioiTinh, String nTHuyen,
				String nTXa, String nTDiaChi, String nTQuanHe){
	        try {
	            Class.forName(driverName);
	       Connection con = DriverManager.getConnection(dbURL,userDB,passDB);
	        CallableStatement stmt=con.prepareCall("insert into QuanHeGiaDinh(userPhone,NTPhone,NTName,NTNgaySinh,NTGioiTinh,NTHuyen,NTXa,NTDiaChi,QuanHe) values(?,?,?,?,?,?,?,?,?)");
	        stmt.setString(1,userPhone);
	         stmt.setString(2,nTPhone);
	         stmt.setString(3,nTName);
	         stmt.setString(4,nTNgaySinh);
	         stmt.setString(5,nTGioiTinh);
	         stmt.setString(6,nTHuyen);
	         stmt.setString(7,nTXa);
	         stmt.setString(8,nTDiaChi);
	         stmt.setString(9,nTQuanHe);
	          
	            stmt.executeUpdate();
	            con.close();            
	          
	        } catch (Exception e) {
	            e.printStackTrace();
	         
	        }
	    } 
		   
		   public static ArrayList<nguoiThan> listAllNguoiThan(String phone) {
		        ArrayList<nguoiThan> nguoiThans= new ArrayList<>();
		        try {
		            Class.forName(driverName);
		            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
		            PreparedStatement stmt = con.prepareStatement("Select * from QuanHeGiaDinh where userPhone='"+phone+"'");
		            ResultSet rs = stmt.executeQuery();
		            while (rs.next()) {
		            		int id=rs.getInt(1);
		            	  String userPhone = rs.getString(2);           
		                  String nTPhone = rs.getString(3);
		                  String nTName = rs.getString(4);
		                  String nTNgaySinh = rs.getString(5);
		                  String nTGioiTinh = rs.getString(6);
		                  String nTHuyen = rs.getString(7);
		                  String nTXa = rs.getString(8);
		                  String nTDiaChi = rs.getString(9);
		                  String nTQuanHe = rs.getString(10);
		                  
		                
		               nguoiThan nT = new nguoiThan(id,userPhone, nTPhone, nTName, nTNgaySinh, nTGioiTinh, nTHuyen, nTXa, nTDiaChi, nTQuanHe);
		                System.out.println(nT.toString());
		                nguoiThans.add(nT);
		            }
		            rs.close();
		            stmt.close();
		            con.close();
		           
		        } catch (SQLException ex) {
		            Logger.getLogger(nguoiThan.class.getName()).log(Level.SEVERE, null, ex);
		        } catch (ClassNotFoundException ex) {
		            Logger.getLogger(nguoiThan.class.getName()).log(Level.SEVERE, null, ex);
		        }
		      return nguoiThans;

		    }
		   
		   public static int deletelNguoiThan(int pid)
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
}
