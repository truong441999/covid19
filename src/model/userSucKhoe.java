package model;

public class userSucKhoe {
private String userPhone;
private String userNgayTheoDoi;
private int sot;
private int ho;
private int khoTho;
private int dauNguoi;
private int tieuChay;
private int sucKhoebt;
public userSucKhoe(String userPhone, String userNgayTheoDoi, int sot, int ho, int khoTho, int dauNguoi, int tieuChay,
		int sucKhoebt) {
	super();
	this.userPhone = userPhone;
	this.userNgayTheoDoi = userNgayTheoDoi;
	this.sot = sot;
	this.ho = ho;
	this.khoTho = khoTho;
	this.dauNguoi = dauNguoi;
	this.tieuChay = tieuChay;
	this.sucKhoebt = sucKhoebt;
}
public userSucKhoe(){}
public String getUserPhone() {
	return userPhone;
}
public void setUserPhone(String userPhone) {
	this.userPhone = userPhone;
}
public String getUserNgayTheoDoi() {
	return userNgayTheoDoi;
}
public void setUserNgayTheoDoi(String userNgayTheoDoi) {
	this.userNgayTheoDoi = userNgayTheoDoi;
}
public int getSot() {
	return sot;
}
public void setSot(int sot) {
	this.sot = sot;
}
public int getHo() {
	return ho;
}
public void setHo(int ho) {
	this.ho = ho;
}
public int getKhoTho() {
	return khoTho;
}
public void setKhoTho(int khoTho) {
	this.khoTho = khoTho;
}
public int getDauNguoi() {
	return dauNguoi;
}
public void setDauNguoi(int dauNguoi) {
	this.dauNguoi = dauNguoi;
}
public int getTieuChay() {
	return tieuChay;
}
public void setTieuChay(int tieuChay) {
	this.tieuChay = tieuChay;
}
public int getSucKhoebt() {
	return sucKhoebt;
}
public void setSucKhoebt(int sucKhoebt) {
	this.sucKhoebt = sucKhoebt;
}


}
