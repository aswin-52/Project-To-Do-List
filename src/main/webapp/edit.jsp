<%@page import="DTO.taskDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form{
border: 1px solid black;
height: 350px;
width: 300px;
padding-top:20px;
padding-left:20px;
margin-left: 40%;
margin-top:150px;
color: antiquewhite;
border-radius: 10px;
border-color: aliceblue;

}
form:hover{
  background-image: url("https://cdn.pixabay.com/photo/2014/10/26/14/36/light-bulb-503881_1280.jpg");
  background-repeat: no-repeat;
background-size: cover; 
background-position: center;
background-clip: border-box;
 
}

body{
 
 background-image: url("https://cdn.pixabay.com/photo/2017/11/10/18/43/grunge-2937274_1280.jpg");
 background-repeat: no-repeat;
 background-size: cover;  
}

</style>
</head>
<body>
<%@include file="nav1.jsp" %>
  <%taskDto task=(taskDto)request.getAttribute("Task"); %>
  <form action="update" method="post">
Id:<br><input type="text" name="taskId" placeholder="Enter Task Id"value="<%=task.getTaskId() %>" hidden="true">
<br>
<br>
Title:<br><input type="text" name="taskTitle" placeholder="Enter Task Title" value="<%=task.getTaskTitle() %>">
<br>
<br>

Description:<br><input type="text" name="taskDescription" placeholder="Enter Description" value="<%=task.getTaskDescription()%>">
<br>
<br>
current task priority:<%=task.getTaskPriority() %>
Priority:<br><input type="radio" name="taskPriority" value="low">Low <input type="radio" name="taskPriority" value="High">High
<br>
<br>
Date:<br><input type="Date" name="taskDate" value="<%=task.getTaskDueDate()%>">
<br>
<br>
<input type="submit">

</form>
  
</body>
</html>