<%@page import="DAO.taskDao"%>
<%@page import="java.util.Base64"%>
<%@page import="DTO.taskDto"%>
<%@ page import="java.util.List"%>
<%@page import="DTO.userDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h2{
 text-align: center;
font-style: italic;
font-size: x-large;
color: aliceblue; 
}
#wel{
font-style: italic;
font-size: x-large;
color: aliceblue; 
}

body{
background-image: url("https://cdn.pixabay.com/photo/2016/10/22/01/54/wood-1759566_1280.jpg");
background-repeat: no-repeat;
background-size: cover; 
color: aliceblue; 
}
body:hover{
background-image: url("https://cdn.pixabay.com/photo/2017/10/10/21/47/laptop-2838921_1280.jpg");
background-repeat: no-repeat;
background-size: cover; 
}
table,th,td{
    border: 1px solid black;
    border-collapse: collapse;
    word-spacing: 10px;
    margin-left: 15%;
    width:900px;
    border-color: aliceblue;
    text-align: center;
    font-family: 'Times New Roman', Times, serif;
}

a{
text-align:center;
color:white;
}
#btn{
color:green;
text-decoration: none;

}
#btn1{
color:red;
text-decoration: none;
}
#log{
font-size:large;
text-align: center;
margin-left: 35%;
margin-top:10px;
text-decoration: none;
transition: 3s;
}
#log:hover{
transform: rotate(360deg);
color:firebrick;   
}
#img{
margin-left: 90%;
margin-top: -110px;
border-radius: 80px;
}
#pro{
margin-left:91%;
text-decoration: none;
font-family: 'Times New Roman', Times, serif;
font-size: large;
color:white;
}

</style>
</head>
<body>
 <%@include file="nav.jsp" %>
<h2>Home Page</h2>
<%String name=""; %>
<%userDto d=(userDto)request.getAttribute("name"); %>
<% if(d!=null) {
	String s=d.getUserName();
	name=s;
}%>
<%userDto user=(userDto)request.getSession().getAttribute("userDto"); %>
<h3 id="wel">welcome:<%="----"+user.getUserName()+"----" %></h3>
<%String img=new String (Base64.getEncoder().encode(user.getUserImage())); %>
<img alt="" src="data:img/jpeg;base64,<%=img %>" height="100px" width="100px" id="img"><br>

<a href="profile.jsp" id="pro">PROFILE</a>

	<table>
    <tr>
      <td>NO</td>   
      <td>TITLE</td> 
      <td>DESCRIPTION</td> 
      <td>PRIORITY</td> 
      <td>DUEDATE</td> 
      <td>UPDATE</td> 
      <td>DELETE</td> 
    </tr>
    <%int num=1; %>
    <%taskDao dao1=new taskDao(); %>
    <%int id=user.getUserId(); %>
   
    <%List<taskDto> tasks=(List<taskDto>)dao1.findtask(id); %>
     <%if(tasks!=null){ %>
    <% for(taskDto task:tasks) {%>
    <tr>
			<td><%= num %></td>
			<%num++; %>
			<td><%= task.getTaskTitle() %></td>
			<td><%= task.getTaskDescription() %></td>
			<td><%= task.getTaskPriority() %></td>
			<td><%= task.getTaskDueDate() %></td>
			<td><a href="updates?id=<%=task.getTaskId()%>" id="update"><button id="btn">update</button></a></td>
			<td><a href="deletes?Id=<%=task.getTaskId()%>" id="delete"><button id="btn1">delete</button></a></td>
		</tr>
		<% } %>
		<% }else{ %>
		
		<h2>no records</h2>
		
		<% } %>
</table> 
 
<br>

</body>
</html>
