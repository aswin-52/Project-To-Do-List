<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#nav{
border: 1px solid black;
width: 1255px;
}
.navitem{
    justify-content:end;
    word-spacing: 80px;
    padding-left:250px;
    color:white;
    font-size: large;
    font-family: 'Times New Roman', Times, serif;
    text-decoration: none;
}
</style>
</head>
<body>
<nav id="nav">
<!-- <a href="home.jsp" class="navitem">HOME</a> -->
 <a href="addtask.jsp" class="navitem">ADD-TASK</a>
<!-- <a href="edit.jsp">UPDATE</a> -->
<a href="profile.jsp" class="navitem">PROFILE</a>
<a href="logout" class="navitem">LOGOUT</a>
<!-- <a href="signUp.jsp">SIGNUP</a> -->

</nav>
</body>
</html>