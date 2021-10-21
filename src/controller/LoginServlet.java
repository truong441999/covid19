package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.admin;
import model.adminDao;
import model.user;
import model.userDao;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String String = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
	     if("".equals(request.getParameter("id")) || "".equals(request.getParameter("password"))) {
				response.sendRedirect(request.getContextPath() + "/DangNhap.jsp?msg=errorNull");
				return;
			}
	     			String userID = request.getParameter("id");
	            	String adId = request.getParameter("id");
	            	String password = request.getParameter("password1");
	                adminDao a = new adminDao();
	                userDao b = new userDao();
	                user u = user.getUser(userID);
	                admin ur = admin.getAdmin(adId);
	           
			if (a.checkLoginAdmin(adId, password)) {
                HttpSession session = request.getSession();
		session.setAttribute("id", adId);
                    session.setAttribute("adm",ur);
		response.sendRedirect("Admin.jsp");
			} else if (b.checkLoginUser(userID, password)) {
                HttpSession session = request.getSession();
		session.setAttribute("id", userID);
                    session.setAttribute("adm",u);
		response.sendRedirect("SoYTeDaNang.jsp"); 
			}
			else if (b.checkLoginUserBlocked(userID, password)) {
                HttpSession session = request.getSession();
		session.setAttribute("id", userID);
                    session.setAttribute("adm",u);
		response.sendRedirect("Blocked.jsp"); 
			}
			else {
				response.sendRedirect("DangNhap.jsp?err=1");
			}
	}
	@Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
	

}
