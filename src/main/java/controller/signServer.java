package controller;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import DAO.userDao;
import DTO.userDto;
@WebServlet("/sign")
@MultipartConfig(maxFileSize = 5*1024*1024)
public class signServer extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String mail=req.getParameter("mail");
		long cont=Long.parseLong(req.getParameter("con"));
		String pass=req.getParameter("pass");
		Part img=req.getPart("img");
		byte[]imgbyte=img.getInputStream().readAllBytes();
		
	userDto u=new userDto();
	u.setUserId(id);
	u.setUserName(name);
	u.setUserMail(mail);
	u.setUserCont(cont);
	u.setUserPassword(pass);
	u.setUserImage(imgbyte);
		
   userDao dao=new userDao();
   
   try {
	dao.saveUser(u);
	resp.sendRedirect("login.jsp");
} catch (Exception e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
		
		
		
		
	}

}
