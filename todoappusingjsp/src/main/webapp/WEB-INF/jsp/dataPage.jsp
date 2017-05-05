<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>datapage</title>

<style type="text/css">
body {
	background-color: #e8e8e8;
	background-repeat: no-repeat;
	background-size: cover;
}

.aa {
	width: 400px;
	height: 150px;
	background-color: rgba(0, 0, 0, 0.2);
	margin: 0 auto;
	margin-top: 160px;
	padding-top: 10px;
	padding-left: 50px;
	border-radius: 5px;
}

.bb {
	width: 100%;
	height: 79px;
	background-color: #41474B /*  #5D8BA5 */ /* #f5b400 */;
	margin: 0 auto;
	padding-top: 30px;
	padding-left: 10px;
	position: fixed;
}

.cc {
	width: 1000px;
	height: 30px;
	background-color: rgba(0, 0, 0, 0.9);
	margin: 0 auto;
	margin-top: 30px;
	padding-top: 10px;
	padding-left: 10px;
	border-radius: 5px;
}

.dd {
	width: 651px;
	height: 162px;
	background-color: white;
	margin: 0 auto;
	/* margin-top: 30px; */
	padding-top: 0px;

}

.ee {
	width: 40%;
	height: 30px;
	background-color: #fff;
	margin: 0 auto;
	margin-left: 15%;
}

.ff {
	width: 651px;
    height: 50px;
    background-color: white;
    margin: 0 auto;
    /* margin-top: 95px; */
    padding-top: 0px;
    padding-left: 17px;
    border-radius: 0px;
    /* position: fixed; */
   
    }

.gg {
	width: 650px;
	height: 50px;
	background-color: white;
	margin: 0 auto;
	margin-top: 300px;
	padding-top: 0px;
	padding-left: 10px;
	border-radius: 0px;
}

.hh {
	width: 100%;
	height: 65px;
	background-color: #e8e8e8 /*  #5D8BA5 */ /* #f5b400 */;
	margin: 0 auto;
	padding-top: 0px;
	padding-left: 10px;
	position: fixed;
	margin-top: 63px;
	height: 240px;
}

.listcontent {
	width: 520px;
	min-height: 50px;
	background-color: white;
	margin: 0 auto;
	margin-top: 10px;
	padding-right: 15px;
	padding-top: 10px;
	padding-left: 10px;
	border-radius: 0px;
}

.delandup {
	width:  520px;
	height: 70px;
	background-color: white;
	margin: 0 auto;
	margin-top: -17px;
	padding-top: 40px;
	padding-left: 40px;
	border-radius: 0x;
}

.list1 {
	margin-top: 0px;
}

input[type=text] {
	width: 60%;
	height: 40px;
	padding-top: 15px;
	margin: 8px 0;
	box-sizing: border-box;
	border: 2px solid white;
	border-radiux: 3px;
	padding-bottom: 15px;
}

#innercontent {
	padding: -2%;
}

#logoutcontent {
	padding-top: -10%;
	padding-left: 90%;
}

.sidenav {
	height: 100%;
	width: 0;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #41474B /* #111 */;
	overflow-x: hidden;
	margin-top: 68px;
	transition: 0.5s;
	padding-top: 60px;
}

.sidenav a {
	padding: 8px 8px 8px 32px;
	text-decoration: none;
	font-size: 25px;
	color: #818181;
	display: block;
	transition: 0.3s;
}

.sidenav a:hover, .offcanvas a:focus {
	color: #f1f1f1;
}

.sidenav .closebtn {
	position: absolute;
	top: 0;
	right: 25px;
	font-size: 36px;
	margin-left: 50px;
}

#main {
	transition: margin-left .5s;
	padding: 16px;
	/* margin-top: 20%; */
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}

#input {
	margin-top: 100px;
}



#container .list order
{
width: 100%;
border-bottom: 1px dotted #CCC;
background-color: #e8e8e8;
}

#container .grid order
{
float:left;
width:40%;
height:50px;
margin-left:30px;
margin-bottom:80px;
}


</style>
<script src="js/datapage.js" type="text/javascript" ></script>
</head>
<body id="ff1">
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="logout">Logout</a>
	</div>



<div class="buttons">
	<div
		style="margin-top: -10px; margin-left: -10px; margin-right: -10px;">
		<div style="padding-top: 14px" class="bb">
			<div id="innercontent">
				<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&nbsp;&nbsp;<font
					color="#e8e8e8">&#9776;</font></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;<font size="5px" color="#e8e8e8"><b>ToDoNotes</b></font>
				<input class="ee" placeholder="search"> </input>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <a href="Homepage"><i class="fa fa-refresh"style="font-size: 20px; color: #e8e8e8"></i></a>
    &nbsp;&nbsp;
   <b class="grid"><i class="fa fa-th-large" style="font-size:15px;color:#e8e8e8"></i></b>
    &nbsp;
   <b class="list"><i class="fa fa-list" style="font-size:15px;color:#e8e8e8"></i></b>
   </div>	
					
					
					

			</div>
		</div>
	</div>


	<div id="main">
		<!-- <div class="hh"> -->

		<div class="ff" class="entry" onclick="openEntry()">
			<div id="input" margin-left: 17px;">make a note...</div>
		</div>
		<div id="newNote" class="dd" style="display: none;">
			<form id="form" action="addNotes" method="get" style="padding: 00px">
				<table>
					<tr>
						<td><input id="title" type="text" name="title"
							placeholder="title" size="100" outline="none"></td>
					</tr>
					<tr>
						<td><input id="des" type="text" name="description"
							placeholder="description" size="100" outline="none"></td>
					</tr>
				</table>
				<table>
					<tr>
						<td><input type="submit" value="DONE"></td>
					</tr>
				</table>
			</form>
		</div>
	<div id="container">
	
	
	</form>
	<div class="list">
		<c:forEach items="${dataList}" var="listofdata">
		
      <order>
			<div class="listcontent" onclick="popUp('${listofdata.title}','${listofdata.description}')"style="word-wrap: break-word;">
				<span style="margin-left: 30px;">${listofdata.title}</span></br> 
				<span style="margin-left: 30px;">${listofdata.description}</span>
			</div>

			<div class="delandup" id="showcolor">
				<a href="<c:url value='update?id=${listofdata.id}'/>"> <i
					class="fa fa-edit" style="font-size: 28px; color: #41474B"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<!-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
				<a href="<c:url value='deleteNote?id=${listofdata.id}'/>"><i
					class="fa fa-trash" style="font-size: 28px; color: #41474B"></i></a>
			</div>
	</order>
	</c:forEach>
	</div>
	
	</div>
	</a>


	</div>
	</div>
	</div>

</body>
</html>