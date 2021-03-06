package servlet.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Teacher;
import service.Impl.TeacherServiceImpl;


public class ServletTeacherInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private TeacherServiceImpl teacherServiceImpl = new TeacherServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		int teacherId = (Integer) request.getSession().getAttribute("userId");
		List<Teacher> rs = teacherServiceImpl.findOne((teacherId));
		request.setAttribute("list", rs);
		request.getRequestDispatcher("teacher/teacherInfo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
