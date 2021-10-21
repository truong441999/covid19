package model;

public class nguoiThan {
private int id;
private String userPhone;
private String nTPhone;
private String nTName;
private String nTNgaySinh;
private String nTGioiTinh;
private String nTHuyen;
private String nTXa;
private String nTDiaChi;
private String nTQuanHe;
public nguoiThan(int id,String userPhone, String nTPhone, String nTName, String nTNgaySinh, String nTGioiTinh, String nTHuyen,
		String nTXa, String nTDiaChi, String nTQuanHe) {
	super();
	this.id=id;
	this.userPhone = userPhone;
	this.nTPhone = nTPhone;
	this.nTName = nTName;
	this.nTNgaySinh = nTNgaySinh;
	this.nTGioiTinh = nTGioiTinh;
	this.nTHuyen = nTHuyen;
	this.nTXa = nTXa;
	this.nTDiaChi = nTDiaChi;
	this.nTQuanHe = nTQuanHe;
}
public nguoiThan(){
	
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getUserPhone() {
	return userPhone;
}
public void setUserPhone(String userPhone) {
	this.userPhone = userPhone;
}
public String getnTPhone() {
	return nTPhone;
}
public void setnTPhone(String nTPhone) {
	this.nTPhone = nTPhone;
}
public String getnTName() {
	return nTName;
}
public void setnTName(String nTName) {
	this.nTName = nTName;
}
public String getnTNgaySinh() {
	return nTNgaySinh;
}
public void setnTNgaySinh(String nTNgaySinh) {
	this.nTNgaySinh = nTNgaySinh;
}
public String getnTGioiTinh() {
	return nTGioiTinh;
}
public void setnTGioiTinh(String nTGioiTinh) {
	this.nTGioiTinh = nTGioiTinh;
}
public String getnTHuyen() {
	return nTHuyen;
}
public void setnTHuyen(String nTHuyen) {
	this.nTHuyen = nTHuyen;
}
public String getnTXa() {
	return nTXa;
}
public void setnTXa(String nTXa) {
	this.nTXa = nTXa;
}
public String getnTDiaChi() {
	return nTDiaChi;
}
public void setnTDiaChi(String nTDiaChi) {
	this.nTDiaChi = nTDiaChi;
}
public String getnTQuanHe() {
	return nTQuanHe;
}
public void setnTQuanHe(String nTQuanHe) {
	this.nTQuanHe = nTQuanHe;
}



}
