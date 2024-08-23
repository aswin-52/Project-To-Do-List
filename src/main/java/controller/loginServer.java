package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.taskDao;
import DAO.userDao;
import DTO.taskDto;
import DTO.userDto;
@WebServlet("/logins")
public class loginServer extends HttpServlet 
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		String email=req.getParameter("mail");
		String password=req.getParameter("pass");
		
		userDao dao=new userDao();
		 taskDao t=new taskDao();
		try {
			userDto u=dao.find(email);
			
			if(u!=null)
			{
				if(u.getUserPassword().equals(password))
				{
				    HttpSession session=req.getSession();
				    session.setAttribute("userDto", u);
				    req.setAttribute("name", u);
				    int id=u.getUserId();
				    List<taskDto> list=t.findtask(id);
				    req.setAttribute("listdata", list);
				    req.getRequestDispatcher("home.jsp").forward(req, resp);
				}
				else
				{
					req.setAttribute("message","incorrect password");
					req.getRequestDispatcher("login.jsp").forward(req, resp);
				}
			}
			else
			{
				req.setAttribute("message","incorrect email");
				req.getRequestDispatcher("login.jsp").forward(req, resp);
			}
			
		} catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
