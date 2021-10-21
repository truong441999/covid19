package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user;
import model.userDao;
import model.userSucKhoeDao;

/**
 * Servlet implementation class addSucKhoeServlet
 */
@WebServlet("/addSucKhoeServlet")
public class addSucKhoeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addSucKhoeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String userPhone = request.getParameter("Phone");
		
		int Sot = 0;
		String Sots = request.getParameter("sot");
	
		
	    if (Sots != null){
	    if (Sots.equals("1")){
	    	Sot = 1;
	    }
	    }
	    int Ho = 0;
		String Hos = request.getParameter("ho");
	    if (Hos != null){
	    if (Hos.equals("1")){
	    	Ho = 1;
	    
	    }
	    }
	    int KhoTho = 0;
		String KhoThos = request.getParameter("khotho");
	    if (KhoThos != null){
	    if (KhoThos.equals("1")){
	    	KhoTho = 1;
	    }
	    }
	    int DauNguoi = 0;
		String DauNguois = request.getParameter("daunguoi");
	    if (DauNguois != null){
	    if (DauNguois.equals("1")){
	    	DauNguoi = 1;
	    }
	    }
	    int TieuChay = 0;
			String TieuChays = request.getParameter("tieuchay");
		    if (TieuChays != null){
		    if (TieuChays.equals("1")){
		    	TieuChay = 1;
		    }
		    }
		    int Suckhoebt = 0;
			String Suckhoebts = request.getParameter("skbt");
		    if (Suckhoebts != null){
		    if (Suckhoebts.equals("1")){
		    	Suckhoebt = 1;
		    }
		    }
//			if(Sots.equals("1") || Hos.equals("1") || TieuChays.equals("1")){
//				userTrangThai="Chú ý";
//			}
//		    if(KhoThos.equals("1") || DauNguois.equals(1)){
//		    	userTrangThai="Nguy Hiểm";
//		    }
		userSucKhoeDao uSKD = new userSucKhoeDao();
		userDao usD = new userDao();
		
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DATE, 1);
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String NgayTheoDoi = format1.format(cal.getTime());
	
		uSKD.sucKhoe(userPhone, NgayTheoDoi, Sot, Ho, KhoTho, DauNguoi, TieuChay, Suckhoebt);
		String userTrangThai="An Toàn";
		if((Ho==1 || Sot==1 || TieuChay==1) && (KhoTho==0 && DauNguoi==0)){
			userTrangThai="Chú ý";
		}
		if(KhoTho==1 || DauNguoi==1){
			userTrangThai="Nguy hiểm";
		}
		if(Suckhoebt==1 &&(DauNguoi==0)&&(Ho==0)&&(KhoTho==0)&&(Sot==0)&&(TieuChay==0)) {
			userTrangThai="An Toàn";
		}
		user s = new user(userPhone, userTrangThai);
			usD.updateTrangThai(s);
			
		response.sendRedirect("SucKhoe.jsp");
	}

}
