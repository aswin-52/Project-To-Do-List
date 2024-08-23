package DAO;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.rowset.serial.SerialBlob;

import DTO.userDto;


public class userDao 
{
	public Connection getConnection() throws Exception 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office?user=root&password=root@123");
		return con;
	}
	
	public int saveUser(userDto u) throws Exception 
	{	
	Connection con=getConnection();
	PreparedStatement pst=con.prepareStatement("insert into User values(?,?,?,?,?,?)");
	pst.setInt(1, u.getUserId());
	pst.setString(2,u.getUserName());
	pst.setString(3, u.getUserMail());
	pst.setLong(4, u.getUserCont());
	pst.setString(5,u.getUserPassword());
	Blob img=new SerialBlob(u.getUserImage());
	pst.setBlob(6, img);
	int val=pst.executeUpdate();
	System.out.println(val+"row affect");
	return val;

	}
	public userDto find(String mail)throws Exception
	{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from User where Email=?");
		pst.setString(1, mail);
		
		ResultSet rs=pst.executeQuery();
		userDto u1=new userDto();
		while(rs.next()) 
		{
		  	u1.setUserId(rs.getInt(1));
		  	u1.setUserName(rs.getString(2));
		  	u1.setUserMail(rs.getString(3));
		  	u1.setUserCont(rs.getLong(4));
		  	u1.setUserPassword(rs.getString(5));
		  	Blob b=rs.getBlob(6);
		  	byte[]image=b.getBytes(1,(int) b.length());
		  	u1.setUserImage(image);
		  	return u1;	
		}
		
		return null;
	}
	

}
