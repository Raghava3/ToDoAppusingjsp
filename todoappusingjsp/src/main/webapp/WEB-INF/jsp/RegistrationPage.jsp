<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    

<!DOCTYPE html>
<html>
<head>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <style type="text/css">
  body{
   background-color:#41474B;/* image:url("images/simple.png"); */
   background-repeat: no-repeat;
   background-size: cover;
  }
    .aa
    {
      width: 400px;
      height:230px;
      background-color:white;
      margin:0 auto;
      margin-top: 160px;
      padding-top: 10px;
      padding-left: 5px;
      border-radius: 5px;

    }
   .bb {
	width: fit;
	height: 65px;
	background-color: rgba(0, 0, 0, 0.9);
	margin-left:0px;
	margin-top: 0px;
	padding-top: 10px;
	padding-left: 10px;
	
}
    
       .cc
    {
    
      width: 	fit;
      height:40px;
      background-color:rgba(0,0,0,0.9);
      margin:0 auto;
      margin-top: 30px;
      padding-top:10px;
      padding-left: 10px;
      border-radius: 0px;
    
    }
    </style>
    <script src="js/registration.js" type="text/javascript" ></script>
  </head>
  
  <body style="overflow:hidden;">
  <div style="margin-top:-10px;margin-left:-10px;margin-right:-10px">
  <div class="logo"></div> 
<div  class="bb"><h4><font color="white"><center>Todo</center></font></h4>
  </div> 
  <%-- <div class="bb">
 <font color="white"><center>please enter the details</center></font>
  </div>  --%>
  <center>
 <div class="aa">
<pre>
 <form id="register" action="register" method="post">
 <font color="red">  <b><span class="error_form" id="Name_error_message"></span></b></font>
 <b>Name:</b>         <input  type="text"  id="form_Name"  class="form_class"  name="fullName" placeholder="name">
 <font color="red">  <b><span class="error_form" id="MobileNumber_error_message"></span></b></font>
 <b>ContactNumber:</b><input  type="text"   id="form_MobileNumber" class="form_class" name="mobileNumber" placeholder="contact no">
 <font color="red">  <b><span class="error_form" id="email_error_message"></span></b></font>
 <b>email: </b>       <input type="text"   id="form_email"  name="email" placeholder="email">
 <font color="red">  <b><span class="error_form" id="password_error_message"></span></b></font>
 <b>password:</b>     <input type="password"  id="form_password" name="password" placeholder="password">
 
  <input type="submit" id="reg" value="click to signup"> 
 </form>
</pre>
</div>
</center>
<pre>






<div class="cc"><center><a href="http://bridgelabz.com/"><font color="white">About us</font></center></a></div>
</pre>
</body>
</body>
</html>