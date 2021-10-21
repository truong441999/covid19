package model;

public class tinNhan {
private int idTinNhan;
private String userPhone;
private String ngayGui;
private String noiDungTN;
private String trangThai;
public tinNhan(int idTinNhan, String userPhone, String ngayGui, String noiDungTN, String trangThai) {
	super();
	this.idTinNhan = idTinNhan;
	this.userPhone = userPhone;
	this.ngayGui = ngayGui;
	this.noiDungTN = noiDungTN;
	this.trangThai = trangThai;
}
public tinNhan(){}
public tinNhan(int idTinNhan,String trangThai){
	this.idTinNhan=idTinNhan;
	this.trangThai=trangThai;
}
public int getIdTinNhan() {
	return idTinNhan;
}
public void setIdTinNhan(int idTinNhan) {
	this.idTinNhan = idTinNhan;
}
public String getUserPhone() {
	return userPhone;
}
public void setUserPhone(String userPhone) {
	this.userPhone = userPhone;
}
public String getNgayGui() {
	return ngayGui;
}
public void setNgayGui(String ngayGui) {
	this.ngayGui = ngayGui;
}
public String getNoiDungTN() {
	return noiDungTN;
}
public void setNoiDungTN(String noiDungTN) {
	this.noiDungTN = noiDungTN;
}
public String getTrangThai() {
	return trangThai;
}
public void setTrangThai(String trangThai) {
	this.trangThai = trangThai;
}


}
