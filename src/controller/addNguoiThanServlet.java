package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.nguoiThanDao;

/**
 * Servlet implementation class addNguoiThanServlet
 */
@WebServlet("/addNguoiThanServlet")
public class addNguoiThanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addNguoiThanServlet() {
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
		String userPhone= request.getParameter("Phone");
		String nTPhone= request.getParameter("PhoneNT");
		String nTName= request.getParameter("name");
		String nTNgaySinh= request.getParameter("ngaysinh");
		String nTGioiTinh= request.getParameter("gender");
		String nTHuyen= request.getParameter("huyen");
		String nTXa= request.getParameter("xa");
		String nTDiaChi= request.getParameter("diachi");
		String nTQuanHe= request.getParameter("quanhe");
		
		nguoiThanDao nTD = new nguoiThanDao();
		nTD.nguoiThan(userPhone, nTPhone, nTName, nTNgaySinh, nTGioiTinh, nTHuyen, nTXa, nTDiaChi, nTQuanHe);
		response.sendRedirect("ThemNguoiThan.jsp");
	}

}
