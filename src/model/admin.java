package model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
public class admin implements ConnectDatabase{
private String adName;
private String adPassword;
public admin(String adName, String adPassword) {
	super();
	this.adName = adName;
	this.adPassword = adPassword;
}
public admin(){
	
}
public admin(String adId){
	admin s = getAdmin(adId);
	this.adName=s.adName;
	this.adPassword=s.adPassword;
}
public static admin loginAdmin(String adName, String adPassword){       
    admin s= new admin(adName);
    if(s.adPassword.equals(adPassword)) return s;
    else return null;
}
public static admin getAdmin(String adId) {
    admin s = null;
    try {
        Class.forName(driverName);
        Connection con = DriverManager.getConnection(dbURL, userDB, passDB);
        Statement stmt = con.createStatement();
       ResultSet rs = stmt.executeQuery("Select adName,adPassword from admins where adName ='" + adId + "'");
        if (rs.next()) {
            String adName = rs.getString(1);           
            String adPassword = rs.getString(2);
          
            s = new admin(adName, adPassword);
        }
        con.close();
        return s;
    } catch (Exception ex) {
        Logger.getLogger(admin.class.getName()).log(Level.SEVERE, null, ex);
        return null;
    }
}   
public String getAdName() {
	return adName;
}

public void setAdName(String adName) {
	this.adName = adName;
}

public String getAdPassword() {
	return adPassword;
}

public void setAdPassword(String adPassword) {
	this.adPassword = adPassword;
}



@Override
public String toString() {
	return "admin [adName=" + adName + ", adPassword=" + adPassword + "]";
}


}
