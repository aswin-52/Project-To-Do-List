package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.taskDao;
import DTO.taskDto;
import DTO.userDto;
@WebServlet("/update")
public class update_data  extends HttpServlet
{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
{
	int id=Integer.parseInt(req.getParameter("taskId"));
	   String title=req.getParameter("taskTitle");
	   String des=req.getParameter("taskDescription");
	   String priority=req.getParameter("taskPriority");
	   String date=req.getParameter("taskDate");
	   
	   userDto u=(userDto) req.getSession().getAttribute("userDto");
	   int uid=u.getUserId();
	   
	   taskDto t1=new taskDto();
	   t1.setTaskId(id);
	   t1.setTaskTitle(title);
	   t1.setTaskDescription(des);
	   t1.setTaskPriority(priority);
	   t1.setTaskDueDate(date);
	   t1.setUserId(uid);
	   
	   taskDao dao=new taskDao();
	   
	   try {
		dao.update(t1);
		resp.sendRedirect("home.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}
}
