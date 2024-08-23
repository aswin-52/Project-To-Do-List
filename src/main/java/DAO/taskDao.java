package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import DTO.taskDto;


public class taskDao 
{
	public Connection getConnection() throws Exception 
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/office?user=root&password=root@123");
		return con;
	}
	
	public int saveTask(taskDto t) throws Exception 
	{	
	Connection con=getConnection();
	PreparedStatement pst=con.prepareStatement("insert into taskTb values(?,?,?,?,?,?)");
	pst.setInt(1, t.getTaskId());
	pst.setString(2,t.getTaskTitle());
	pst.setString(3,t.getTaskDescription());
	pst.setString(4, t.getTaskPriority());
	pst.setString(5, t.getTaskDueDate());
	pst.setInt(6,t.getUserId());
	int val=pst.executeUpdate();
	System.out.println(val+"row affect");
	return val;

	}
	
	public int delete(int taskId) throws Exception 
	{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("delete from taskTb where Id=?");
		pst.setInt(1, taskId);
		int val1=pst.executeUpdate();
		System.out.println(val1+"row affected");
		return val1;
		
	}
	
	public List<taskDto> findtask(int  id)throws Exception
	{
		List<taskDto> taskuser = new ArrayList<>();
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from taskTb where UserId=?");
		pst.setInt(1, id);
         
		ResultSet rs=pst.executeQuery();
		
		while (rs.next()) 
		{
			taskDto task = new taskDto();
			task.setTaskId(rs.getInt(1));
			task.setTaskTitle(rs.getString(2));
			task.setTaskDescription(rs.getString(3));
			task.setTaskPriority(rs.getString(4));
			task.setTaskDueDate(rs.getString(5));
			task.setUserId(rs.getInt(6));
			taskuser.add(task);
			
		}
		
		return taskuser;
	
    }
	
	public taskDto findid(int id) throws Exception
	{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("select * from taskTb where Id=?");
		pst.setInt(1, id);
        ResultSet rs=pst.executeQuery();
        taskDto task = new taskDto();
		while (rs.next()) 
		{
			
			task.setTaskId(rs.getInt(1));
			task.setTaskTitle(rs.getString(2));
			task.setTaskDescription(rs.getString(3));
			task.setTaskPriority(rs.getString(4));
			task.setTaskDueDate(rs.getString(5));
			task.setUserId(rs.getInt(6));
			
		}
		return task;
		
	}
	public int update(taskDto t1) throws Exception
	{
		Connection con=getConnection();
		PreparedStatement pst=con.prepareStatement("update taskTb set Title=?, Description=?,priority=?,Date=?,UserId=? where Id=?");
		pst.setString(1,t1.getTaskTitle());
		pst.setString(2,t1.getTaskDescription());
		pst.setString(3,t1.getTaskPriority());
		pst.setString(4,t1.getTaskDueDate());
		pst.setInt(5,t1.getUserId());
		pst.setInt(6, t1.getTaskId());
		
		return pst.executeUpdate();
	}

}
