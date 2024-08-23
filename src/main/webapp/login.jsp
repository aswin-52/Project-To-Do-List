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
height: 180px;
width: 300px;
padding-top:20px;
padding-left:20px;
margin-left: 50%;
margin-top:10%;
background-color: aliceblue;
border-radius: 10px;
/* transition: 1s; */
}
form:hover{
/* transform: rotate(360deg); */
background-image: url("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg");
background-repeat: no-repeat;
background-size: cover; 
color: whitesmoke;
}
h2{
text-align: center;
margin-left: 30%;
margin-top:10%;
font-style: italic;
font-size: x-large;
text-decoration: underline; 
}

body{
 background-image: url("https://cdn.pixabay.com/photo/2015/05/31/15/07/coffee-792113_1280.jpg");
 background-repeat: no-repeat;
 background-size: cover;  
}
</style>
</head>
<body>
<h2>Login page</h2>
<form action="logins" method="post">
Email:<br><input type="text" name="mail">
<br>
<br>
Password:<br><input type="text" name="pass">
<br>
<br>
<% String msg=(String)request.getAttribute("message"); %>
<% if(msg!=null){ %>
<%=msg %>
<%} %>
<br>
<input type="Submit">

</form>

</body>
</html>