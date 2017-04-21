<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="stylesheets/style.css"/>
  <script type="text/javascript" language="javascript" src="jsp/script.js"></script>
  <script type="text/javascript" language="javascript" src="javascripts/jquery.js"></script>
    
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="icon" type="image/png" href="images/favicon.ico">
<link rel="stylesheet" type="text/css" href="css/style.css"/>
<script type="text/javascript">

$(function()
		{
		$("#Name_error_message").hide();
        $("#MobileNumber_error_message").hide();
        $("#email_error_message").hide();
        $("#password_error_message").hide();
		
        var error_name=false;
        var error_mobilenumber=false;
        var error_email=false;
        var error_password=false;
		
        $("#form_Name").focusout(function(){
        	
        	check_username();
        		
        });
       $("#form_MobileNumber").focusout(function(){
        	
        	check_mobilenumber();
        		
        });
       $("#form_email").focusout(function(){
       	
       	check_email();
       		
       });
       
       $("#form_password").focusout(function(){
       	
       	check_password();
       		
       });
       
       
       function check_username()
       {
    	   var username_length=$("#form_Name").val().length;
    	   if(username_length<5||username_length>20)
    		   {
    		   $("#Name_error_message").html("should be between 5-20 char	");
    		   $("#Name_error_message").show();
    		   error_name=true;
    		   }
    	   else
    		   {
    		   $("#Name_error_message").hide();
    		   }
       }
       
       function check_mobilenumber()
       {
    	   var mobile_length=$("#form_MobileNumber").val().length;
    	   if(mobile_length<10)
    		   {
    		   $("#MobileNumber_error_message").html("not a valid number,it should be 10");
    		   $("#MobileNumber_error_message").show();
    		   error_name=true;
    		   }
    	   else
    		   {
    		   $("#MobileNumber_error_message").hide();
    		   }
       }
		}
		
		
		);



</script>
    <style type="text/css">
  body{
   background-image:url("images/login.jpg");
   background-repeat: no-repeat;
   background-size: cover;
  }
    .aa
    {
      width: 400px;
      height:220px;
      background-color:rgba(0,0,0,0.2);
      margin:0 auto;
      margin-top: 200px;
      padding-top: 25px;
      padding-left: 10px;
      border-radius: 15px;

    }
    .bb
    {
    
      width: 1000px;
      height:30px;
      background-color:rgba(0,0,0,0.9);
      margin:0 auto;
      margin-top: 10px;
      padding-top:10px;
      padding-left: 10px;
      border-radius: 10px;
    
    }
    </style>
  </head>
  
  <body>
  
  <div class="logo"></div>
<div class="bb">
 <font color="white"><center>welcome to todo</center></font>
  </div> 
  <%-- <div class="bb">
 <font color="white"><center>please enter the details</center></font>
  </div>  --%>
 <div class="aa">
 <!-- 
// this is for table 
 <table   cellspacing="5px" >
 <form id="registration" action="register" method="post">
 <tr>
 <td>Name:</td>
 <td><input  type="text" class="form_text" id="form_Name"  name="fullName" placeholder="name"></td>
 <td><span class="error_form" id="Name_error_message"></span></td>
 </tr>
 <tr>
 <td>ContactNumber:</td>
 <td><input  type="text"   class="form_text" id="form_MobileNumber"  name="mobileNumber" placeholder="contact no"></td>
 <td><span class="error_form" id="MobileNumber_error_message"></span></td> 
 </tr>
 <tr>
 <td>email:</td>
 <td> <input type="text"  class="form_text" id="form_email"  name="email" placeholder="email"></td>
 <td><span class="error_form" id="email_error_message"></span></td>
 </tr>
 <tr>
 <td>password:</td>
 <td>   <input type="password" class="form_text" id="form_password"  name="password" placeholder="password"></td>
 <td><span class="error_form" id="password_error_message"></span>
 </td>
 </tr>
  <td> <input type="submit" value="click to signup"> 
     </td>
     
 </form>
</table> -->
<pre>
       <marquee WIDTH="70%"> please enter the details,it will be safe with us.</marquee>
<form id="registration" action="register" method="post">
 Name:         <input  type="text" class="form_text" id="form_Name"  name="fullName" placeholder="name">
 <font color="red"><span class="error_form" id="Name_error_message"></span></font>
 ContactNumber:<input  type="text"   class="form_text" id="form_MobileNumber"  name="mobileNumber" placeholder="contact no">
 <font color="red"><span class="error_form" id="MobileNumber_error_message"></span></font>
 email:        <input type="text"  class="form_text" id="form_email"  name="email" placeholder="email">
 <font color="red"><span class="error_form" id="email_error_message"></span></font>
 password:     <input type="password" class="form_text" id="form_password"  name="password" placeholder="password">
 <font color="red"><span class="error_form" id="password_error_message"></span></font>
                   <input type="submit" value="click to signup"> 
 </form>
</pre>
</div>
</body>
</html>