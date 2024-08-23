package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.taskDao;
import DTO.taskDto;
@WebServlet("/updates")
public class update extends HttpServlet
{
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
{
	  int taskid=Integer.parseInt(req.getParameter("id"));
	  taskDao dao=new taskDao();
	  
	   try {
		taskDto tasks=dao.findid(taskid);
		req.setAttribute("Task",tasks);
		req.getRequestDispatcher("edit.jsp").forward(req, resp);
		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  
}
}
