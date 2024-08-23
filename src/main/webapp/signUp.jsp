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
height: 400px;
width: 300px;
padding-top:20px;
padding-left:20px;
margin-left: 40%;
color: antiquewhite;
border-radius: 10px;
border-color: aliceblue;
transition: 1s;
}
form:hover{
transform: rotate(360deg);
background-image: url("https://cdn.pixabay.com/photo/2022/05/11/09/13/data-7188894_1280.jpg");
background-repeat: no-repeat;
background-size: cover; 
background-position: center;
background-clip: border-box;
color: whitesmoke;
}
h1{
text-align: center;
font-style: italic;
font-size: xx-large;
color: antiquewhite;
}
body{
 
 background-image: url("https://cdn.pixabay.com/photo/2015/12/01/15/43/black-1072366_1280.jpg");
 background-repeat: no-repeat;
 background-size: cover;  
}
body:hover{
background-image: url("https://cdn.pixabay.com/photo/2020/04/13/16/39/flash-5039182_1280.jpg");
background-repeat: no-repeat;
background-size: cover; 
background-position: center;
background-clip: border-box;
}
</style>
</head>
<body>
<%@include file="nav2.jsp" %>
<h1> Sign-Up Page</h1>
<form action="sign" method="post" enctype="multipart/form-data">
UserId:<br><input type="text" name="id">
<br>
<br>
UserName:<br><input type="text" name="name">
<br>
<br>
UserMail:<br><input type="text" name="mail">
<br>
<br>
Usercontact:<br><input type="text" name="con">
<br>
<br>
UserPassword:<br><input type="password" name="pass">
<br>
<br>
UserImage:<br><input type="file" name="img">
<br>
<br>
<input type="submit">
</form>
</body>
</html>