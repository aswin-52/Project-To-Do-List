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
border-radius: 10px;
height: 450px;
width: 300px;
padding-top:10px;
padding-left:20px;
margin-left: 70%;
margin-bottom: 30%;
color: black;
font-size: x-large;
background-image: url("https://media.istockphoto.com/id/1129456795/photo/texture-of-black-and-white-lines-scratches-dots.jpg?s=1024x1024&w=is&k=20&c=uqQ4w2eKpGuNHSoXMLdyGSvfX2wWWpvkyY9QQcWJ97M=");
background-repeat: no-repeat;
background-size: cover; 
transition: 3s;
}
form:hover{
background-image: url("https://media.istockphoto.com/id/1664886352/photo/beautiful-dark-red-bird-feathers-pattern-texture-background.jpg?s=612x612&w=0&k=20&c=iKvynpSLXfayx2JEXFc0cGPwt2zL6D1qXL3Bsxg7tvg=");
background-repeat: no-repeat;
background-size: cover; 
color:white;
transform: scale(1.1);
  
}
h1{
margin-left: 80%;
/* margin-top: 3%; */
font-style: italic;
font-size: x-large;
text-decoration: underline; 
color: antiquewhite;
font-size: x-large;
/* color: whitesmoke; */
}
body{
 
 background-image: url("https://cdn.pixabay.com/photo/2017/10/14/09/56/journal-2850091_1280.jpg");
 background-repeat: no-repeat;s
 background-size: cover;  
}
</style>
</head>
<body>
<%@include file="nav.jsp" %>
<h1>AddTask</h1>

<form action="task" method="post">
Id:<br><input type="text" name="taskId" placeholder="Enter Task Id">
<br>
<br>
Title:<br><input type="text" name="taskTitle" placeholder="Enter Task Title">
<br>
<br>
Description:<br><input type="text" name="taskDescription" placeholder="Enter Description">
<br>
<br>
Priority:<br><input type="radio" name="taskPriority" value="low">Low <input type="radio" name="taskPriority" value="High">High
<br>
<br>
Date:<br><input type="Date" name="taskDate">
<br>
<br>
<input type="submit">

</form>


</body>
</html>