package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Count;
import model.userDao;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
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
		String Phone = request.getParameter("Phone");
		String userPhone = request.getParameter("Phone");
		String userPassword = request.getParameter("password");
		String userName = request.getParameter("name");
		String userCMND = request.getParameter("cmnd");
		String userNgaySinh = request.getParameter("ngaysinh");
		String userGioiTinh = request.getParameter("gender");
		String userHuyen = request.getParameter("huyen");
		String userXa = request.getParameter("xa");
		String userDiaChi = request.getParameter("diachi");
		String TrangThai="An Toàn";
		String statuss="Open";
		userDao.CheckPhone(Phone);
		  ArrayList<Count> CountPhone =userDao.CheckPhone(Phone);
		  for(Count s: CountPhone){
				if(Integer.parseInt(s.getCount())==0){
					userDao.addUser(userPhone, userPassword, userName, userCMND, userNgaySinh, userGioiTinh, userHuyen, userXa, userDiaChi,TrangThai,statuss);
					response.sendRedirect("TrangChu.jsp");
				
		}else{
		  response.sendRedirect("DangKy.jsp?err=1");
		}}
		
	}

}
