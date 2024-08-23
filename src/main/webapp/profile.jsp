<%@page import="java.util.Base64"%>
<%@page import="java.util.prefs.BackingStoreException"%>
<%@page import="DTO.userDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main{
 border: 1px solid black;
 margin-left:500px;
 padding: 20px;
 width: 200px;
 margin-top: 200px;
 background-image: url("https://media.istockphoto.com/id/1138395432/photo/purple-abstract-background-or-texture.jpg?s=612x612&w=0&k=20&c=9hvyk9_7UA3qufyBESV5OD7y1nJoZGIBS_iRlL1m54A=");
 background-repeat: no-repeat;
 background-size: cover;  
 background-clip: border-box;
 color: whitesmoke;
 border-radius: 20px;
 }
 #img{
border-radius: 80px;
margin-left: 50px;
}
body{
background-image: url("https://media.istockphoto.com/id/644606890/photo/abstract-dark-yellowish-background.jpg?s=612x612&w=0&k=20&c=ufPiX2fUJzp_rKKdsZAvhI1cB9BZAG5BGaZX9mX0878=");
background-repeat: no-repeat;
background-size: cover;
background-clip: border-box;
}
</style>
</head>
<body>
<%@include file="nav1.jsp" %>

<%userDto user=(userDto)request.getSession().getAttribute("userDto"); %>
<div id="main">
<%String img=new String (Base64.getEncoder().encode(user.getUserImage())); %>
<img alt="" src="data:img/jpeg;base64,<%=img %>" height="100px" width="100px" id="img">
 <p>NAME:<%=user.getUserName()%></p>
 <p>MAIL:<%=user.getUserMail() %></p>
 <p>CONT:<%=user.getUserCont() %></p>

</div>

</body>
</html>