package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.tinNhan;
import model.tinNhanDao;
import model.user;
import model.userDao;

/**
 * Servlet implementation class updateSTTServlet
 */
@WebServlet("/updateSTTServlet")
public class updateSTTServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateSTTServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		 int idTinNhan = Integer.valueOf(request.getParameter("ID"));
		 String trangThai="Đã trả lời";
		
		tinNhanDao usD = new tinNhanDao();
		tinNhan s = new tinNhan(idTinNhan, trangThai);
		usD.updateSTT(s);
		response.sendRedirect("QuanLyTinNhan.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
