package controller;

import java.io.IOException;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user;
import model.userDao;

/**
 * Servlet implementation class UpdateThongTinServlet
 */
@WebServlet("/UpdateThongTinServlet")
public class UpdateThongTinServlet extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateThongTinServlet() {
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
		String userName = request.getParameter("name");
		String userCMND = request.getParameter("cmnd");
		String userNgaySinh = request.getParameter("ngaysinh");
		String userGioiTinh = request.getParameter("gender");
		String userHuyen = request.getParameter("huyen");
		String userXa = request.getParameter("xa");
		String userDiaChi = request.getParameter("diachi");
		String userTrangThai =request.getParameter("trangthai");
		user ss = new user(userPhone, userName, userCMND, userNgaySinh, userGioiTinh, userHuyen, userXa, userDiaChi, userTrangThai);
		userDao uD = new userDao();
		uD.update(ss);
		response.sendRedirect("ThongTinCaNhan.jsp");
	
	}

}
