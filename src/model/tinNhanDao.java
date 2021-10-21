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

public class tinNhanDao implements ConnectDatabase{
	  public static void addTinNhan(String userPhone, String NgayGui,String NoiDungTN, String TrangThai){
          try {
              Class.forName(driverName);
         Connection con = DriverManager.getConnection(dbURL,userDB,passDB);
          CallableStatement stmt=con.prepareCall("insert into CauHoiTuVan(userPhone,NgayGui,NoiDungTN,TrangThai) values(?,?,?,?)");
          stmt.setString(1,userPhone);
           stmt.setString(2,NgayGui);
              stmt.setString(3,NoiDungTN); 
              stmt.setString(4, TrangThai);
              stmt.executeUpdate();
              con.close();            
            
          } catch (Exception e) {
              e.printStackTrace();
           
          }
      } 
	  public static ArrayList<tinNhan> listAllTN() {
	        ArrayList<tinNhan> tinNhans= new ArrayList<>();
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Select * from CauHoiTuVan");
	            ResultSet rs = stmt.executeQuery();
	            while (rs.next()) {
	            	  int idTinNhan = rs.getInt(1);           
	                  String userPhone = rs.getString(2);
	                  String ngayGui = rs.getString(3);
	                  String noiDungTN = rs.getString(4);
	                  String trangThai = rs.getString(5);
	               tinNhan st = new tinNhan(idTinNhan, userPhone, ngayGui, noiDungTN, trangThai);
	                System.out.println(st.toString());
	                tinNhans.add(st);
	            }
	            rs.close();
	            stmt.close();
	            con.close();
	           
	        } catch (SQLException ex) {
	            Logger.getLogger(tinNhan.class.getName()).log(Level.SEVERE, null, ex);
	        } catch (ClassNotFoundException ex) {
	            Logger.getLogger(tinNhan.class.getName()).log(Level.SEVERE, null, ex);
	        }
	      return tinNhans;
	    }
	   public static tinNhan updateSTT(tinNhan s) {
	        try {
	            Class.forName(driverName);
	            Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
	            PreparedStatement stmt = con.prepareStatement("Update CauHoiTuVan set TrangThai=? where idTinNhan=?");
	            stmt.setString(1, s.getTrangThai());
	            stmt.setInt(2, s.getIdTinNhan());
	            int rc = stmt.executeUpdate();
	            con.close();
	            return s;
	        } catch (Exception ex) {
	            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return null;
	    }
	   public static int deletelTN(int pid)
	    {
	         try{
	         Class.forName(driverName);
	            Connection con=DriverManager.getConnection(dbURL,userDB,passDB);
	            PreparedStatement stmt=con.prepareStatement("Delete CauHoiTuVan where idTinNhan=?");
	            stmt.setInt(1, pid);
	            stmt.executeUpdate();
	            con.close();
	        } catch (Exception ex) {
	            Logger.getLogger(nguoiThan.class.getName()).log(Level.SEVERE, null, ex);
	        }
	        return 0;
	    }
}
