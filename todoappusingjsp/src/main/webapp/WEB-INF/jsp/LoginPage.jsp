%--   <%@ page language="java" contentType="text/html; charset=UTF-8"
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

<title>Login</title>
    <style type="text/css">
  body{	
   background-image:url("images/simple.png");
   background-repeat: no-repeat;
   background-size: cover;
  }
  .cc
  {
      width: 500px;
      height:200px;
      background-color:blue;
      margin:0 auto;
      margin-top: 180px;
      padding-top:10px;
      padding-left: 50px;
      border-radius: 5px;

    }
    .aa
    {
      width: 400px;
      height:159px;
      background-color:rgba(0,0,0,0.2);
      margin:0 auto;
      margin-top: 160px;
      padding-top:10px;
      padding-left: 50px;
      border-radius: 5px;

    }
     .bb
    {
    
      width: 1000px;
      height:30px;
      background-color:rgba(0,0,0,0.9);
      margin:0 auto;
      margin-top: 30px;
      padding-top:10px;
      padding-left: 10px;
      border-radius: 10px;
    
    }
    
   
    </style>

</head>
<body>
<div class="bb">
 <font color="white"><center>welcome to todo</center></font>
  </div>
<pre>

<div class="aa">
<form action="Home" method="post">
<b>email</b>:     <input type="text" name="email"   placeholder="email"></br>
<b>password</b>:  <input type="password" name="password" placeholder="password"></br>
                <input type="submit" value="login">
</form>
         <pre>                <a href="registrationpage">signup</a></pre>


`
</div>


<pre>






<div class="bb"><center><a href="http://bridgelabz.com/"><font color="red">About us</font></center></a></div>
</pre>


</body>
</html> --%>




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

<title>Login</title>
    <style type="text/css">
  body{	
   background-image:url("images/simple.png");
   background-repeat: no-repeat;
   background-size: cover;
  }
    .aa
    {
      width: 400px;
      height:150px;
      background-color:rgba(0,0,0,0.2);
      margin:0 auto;
      margin-top: 160px;
      padding-top:10px;
      padding-left: 50px;
      border-radius: 5px;

    }
     .bb
    {
    
      width: 1000px;
      height:65px;
      background-color:rgba(0,0,0,0.9);
      margin:0 auto;
      margin-top: 30px;
      padding-top:10px;
      padding-left: 10px;
      border-radius: 10px;
    
    }
     .cc
    {
    
      width: 1000px;
      height:30px;
      background-color:rgba(0,0,0,0.9);
      margin:0 auto;
      margin-top: 30px;
      padding-top:10px;
      padding-left: 10px;
      border-radius: 10px;
    
    }
    
    
   
    </style>

</head>
<body>

<div class="bb">
 <font color="white"><center><b> <h4>ToDo</h4></b></center></font>
  </div>
<pre>
<div class="aa">
<form action="Home" method="post">
${msg}
<b>email</b>:     <input type="text" name="email"   placeholder="email"></br>
<b>password</b>:  <input type="password" name="password" placeholder="password"></br>
                <input type="submit" value="click to login">
</form>
        
</div>
<center>
<pre>




<div class="cc"><center><a href="http://bridgelabz.com/"><font color="red">About us</font></center></a></div>
</pre>
</center>
</pre>
</body>
</html>



