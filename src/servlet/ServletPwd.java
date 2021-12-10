package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Impl.UserServiceImpl;

import model.UserLogin;
import dao.Impl.UserDaoImpl;

public class ServletPwd extends HttpServlet{
	
	private UserLogin user;
	private UserServiceImpl userServiceImpl=new UserServiceImpl();
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		String userNum=(String) request.getSession().getAttribute("userName");
		user=new UserLogin();
		user.setUserName(userNum);
		UserLogin rs=userServiceImpl.login(user);
		String pwd=rs.getPassword();
		request.setAttribute("password", pwd);
		request.getRequestDispatcher("admin/updatePwd.jsp").forward(request, response);
	}
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		doGet(request,response);
	}
}
