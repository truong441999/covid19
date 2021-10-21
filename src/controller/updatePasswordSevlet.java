package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.user;
import model.userDao;

/**
 * Servlet implementation class updatePasswordSevlet
 */
@WebServlet("/updatePasswordSevlet")
public class updatePasswordSevlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatePasswordSevlet() {
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
		String userPassword = request.getParameter("password1");
		String userPhone = request.getParameter("Phone");
		String userName = request.getParameter("name");
		String userCMND = request.getParameter("cmnd");
		

		user sss = new user(userPhone, userPassword, userName, userCMND);
		userDao uD = new userDao();
		uD.updatePass(sss);
		response.sendRedirect("ThongTinCaNhan.jsp");
	}

}
