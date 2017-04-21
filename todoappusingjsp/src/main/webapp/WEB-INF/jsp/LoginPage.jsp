<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>




<head>
<link rel="stylesheet" type="text/css" href="stylesheets/style.css"/>
  <script type="text/javascript" language="javascript" src="jsp/script.js"></script>
  <script type="text/javascript" language="javascript" src="javascripts/jquery.js"></script>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="icon" type="image/png" href="images/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="apple-touch-icon" href="images/todoapps.png">
<link rel="shortcut icon" href="images/todoapps.png">

    <style type="text/css">
  body{
   background-image:url("images/login.jpg");
   background-repeat: no-repeat;
   background-size: cover;
  }
    .aa
    {
      width: 400px;
      height:200px;
      background-color:rgba(0,0,0,0.2);
      margin:0 auto;
      margin-top: 250px;
      padding-top:10px;
      padding-left: 10px;
      border-radius: 15px;

    }
    </style>

</head>
<body>
<pre>

<div class="aa">
<form action="loginvalidation" method="post">
<b>email</b>:     <input type="text" name="email"   placeholder="u r email"></br>
<b>password</b>:  <input type="password" name="password" placeholder="u r secret password"></br>
                  <input type="submit" value="click to login">
</form>

</div>

</center>
</pre>
</body>
</html>