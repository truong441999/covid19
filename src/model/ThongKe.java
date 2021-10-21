package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ThongKe implements ConnectDatabase{
	 public static ArrayList<Count> CountAllCamLe() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Cẩm Lệ'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 
	 public static ArrayList<Count> CountNhiemCamLe() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Cẩm Lệ' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountAllHaiChau() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Hải Châu'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountNhiemHaiChau() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Hải Châu' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   } 
	 public static ArrayList<Count> CountAllHoaVang() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Hòa Vang'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountNhiemHoaVang() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Hòa Vang' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   } 
	 public static ArrayList<Count> CountAllLienChieu() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Liên Chiểu'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountNhiemLienChieu() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Liên Chiểu' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   } 
	 public static ArrayList<Count> CountAllNguHanhSon() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Ngũ Hành Sơn'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountNhiemNguHanhSon() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Ngũ Hành Sơn' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   } 
	 public static ArrayList<Count> CountAllSonTra() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Sơn Trà'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountNhiemSonTra() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Sơn Trà' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   } 
	 public static ArrayList<Count> CountAllThanhKhe() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Thanh Khê'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   }  
	 public static ArrayList<Count> CountNhiemThanhKhe() {
	        ArrayList<Count> Count= new ArrayList<>();
		     try{
		         
		    Class.forName(driverName);
		            Connection conn = DriverManager.getConnection(dbURL, userDB, passDB);
		            Statement st=conn.createStatement();
		            String strQuery = "SELECT COUNT(*) FROM users where userHuyen Like N'Thanh Khê' and TrangThai Like N'Nhiễm bệnh'";
		            ResultSet rs = st.executeQuery(strQuery);
		            String count="";
		            while(rs.next()){
		            count = rs.getString(1);
		            Count ct = new Count(count);
		            Count.add(ct);
		            }
		            }
		            catch (Exception e){
		            e.printStackTrace();
		            }
			return Count;
	   } 
}
