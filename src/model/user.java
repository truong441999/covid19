package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
public class user implements ConnectDatabase{
private String userPhone;
private String userPassword;
private String userName;
private String userCMND;
private String userNgaySinh;
private String userGioiTinh;
private String userHuyen;
private String userXa;
private String userDiaChi;
private String userTrangThai;
private String userSTT;
public user(String userPhone, String userPassword, String userName, String userCMND, String userNgaySinh,
		String userGioiTinh, String userHuyen, String userXa, String userDiaChi, String userTrangThai,String userSTT) {
	super();
	this.userPhone = userPhone;
	this.userPassword = userPassword;
	this.userName = userName;
	this.userCMND = userCMND;
	this.userNgaySinh = userNgaySinh;
	this.userGioiTinh = userGioiTinh;
	this.userHuyen = userHuyen;
	this.userXa = userXa;
	this.userDiaChi = userDiaChi;
	this.userTrangThai = userTrangThai;
	this.userSTT=userSTT;
}
public user(String userPhone, String userPassword, String userName, String userCMND, String userNgaySinh,
		String userGioiTinh, String userHuyen, String userXa, String userDiaChi, String userTrangThai) {
	super();
	this.userPhone = userPhone;
	this.userPassword = userPassword;
	this.userName = userName;
	this.userCMND = userCMND;
	this.userNgaySinh = userNgaySinh;
	this.userGioiTinh = userGioiTinh;
	this.userHuyen = userHuyen;
	this.userXa = userXa;
	this.userDiaChi = userDiaChi;
	this.userTrangThai = userTrangThai;
}
public user(String userPhone, String userName, String userCMND, String userNgaySinh,
		String userGioiTinh, String userHuyen, String userXa, String userDiaChi, String userTrangThai) {
	super();
	this.userPhone = userPhone;
	this.userName = userName;
	this.userCMND = userCMND;
	this.userNgaySinh = userNgaySinh;
	this.userGioiTinh = userGioiTinh;
	this.userHuyen = userHuyen;
	this.userXa = userXa;
	this.userDiaChi = userDiaChi;
	this.userTrangThai = userTrangThai;
}
public user(String userPhone,String userTrangThai){
	this.userPhone=userPhone;
	this.userTrangThai=userTrangThai;
}
public user(String userPhone,String userPassword,String userName,String userCMND){
	this.userPhone=userPhone;
	this.userPassword=userPassword;
	this.userName = userName;
	this.userCMND = userCMND;
}
public  user(String userPhone,String userTrangThai,String userSTT){
	this.userPhone=userPhone;
	this.userTrangThai=userTrangThai;
	this.userSTT=userSTT;
}
public user(){}
//public user(String userPhone, String userPassword){
//	this.userPhone = userPhone;
//	this.userPassword = userPassword;
//}
public user(String userID){
	user ss= getUser(userID);
	this.userPhone = ss.userPhone;
	this.userPassword = ss.userPassword;
	this.userName = ss.userName;
	this.userCMND = ss.userCMND;
	this.userNgaySinh = ss.userNgaySinh;
	this.userGioiTinh = ss.userGioiTinh;
	this.userHuyen = ss.userHuyen;
	this.userXa = ss.userXa;
	this.userDiaChi = ss.userDiaChi;
	this.userTrangThai = ss.userTrangThai;
	this.userSTT=ss.userSTT;
}
public static user loginUser(String userPhone, String userPassword){       
    user ss= new user(userPhone);
    if(ss.userPassword.equals(userPassword)) return ss;
    else return null;
}

public static user getUser(String userID) {
    user ss = null;
    try {
        Class.forName(driverName);
        Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
        Statement stmt = con.createStatement();
       ResultSet rs = stmt.executeQuery("Select * from users where userPhone ='" + userID + "'");
        if (rs.next()) {
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
            String userSTT=rs.getString(11);
            ss = new user(userPhone, userPassword, userName, userCMND, userNgaySinh, userGioiTinh, userHuyen, userXa, userDiaChi, userTrangThai,userSTT);
        }
        con.close();
        return ss;
    } catch (Exception ex) {
        Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
        return null;
    }
}   

public String getUserSTT() {
	return userSTT;
}
public void setUserSTT(String userSTT) {
	this.userSTT = userSTT;
}
public String getUserPhone() {
	return userPhone;
}
public void setUserPhone(String userPhone) {
	this.userPhone = userPhone;
}
public String getUserPassword() {
	return userPassword;
}
public void setUserPassword(String userPassword) {
	this.userPassword = userPassword;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public String getUserCMND() {
	return userCMND;
}
public void setUserCMND(String userCMND) {
	this.userCMND = userCMND;
}
public String getUserNgaySinh() {
	return userNgaySinh;
}
public void setUserNgaySinh(String userNgaySinh) {
	this.userNgaySinh = userNgaySinh;
}
public String getUserGioiTinh() {
	return userGioiTinh;
}
public void setUserGioiTinh(String userGioiTinh) {
	this.userGioiTinh = userGioiTinh;
}
public String getUserHuyen() {
	return userHuyen;
}
public void setUserHuyen(String userHuyen) {
	this.userHuyen = userHuyen;
}
public String getUserXa() {
	return userXa;
}
public void setUserXa(String userXa) {
	this.userXa = userXa;
}
public String getUserDiaChi() {
	return userDiaChi;
}
public void setUserDiaChi(String userDiaChi) {
	this.userDiaChi = userDiaChi;
}
public String getUserTrangThai() {
	return userTrangThai;
}
public void setUserTrangThai(String userTrangThai) {
	this.userTrangThai = userTrangThai;
}




}