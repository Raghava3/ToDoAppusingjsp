<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	width: fit;
	height: 65px;
	background-color: #41474B /*  #5D8BA5 */ /* #f5b400 */;
	margin: 0 auto;
	padding-top: 30px;
	padding-left: 10px;
}

.dd {
	width: 400px;
	height: 200px;
	background-color: white;
	margin: 0 auto;
	margin-top: 30px;
	padding-top: 0px;
	padding-left: 10px;
	border-radius: 5px;
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

.note {
	width: 350px;
	height: 200px;
	background-color: white;
	margin: 0 auto;
	margin-top: 10px;
	padding-top: 40px;
	padding-left: 20px;
	border-radius: 5px;
}

.ee {
	width: 40%;
	height: 30px;
	background-color: #fff;
	margin: 0 auto;
	margin-left: 15%;
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
	margin-top: 75px;
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
}

@media screen and (max-height: 450px) {
	.sidenav {
		padding-top: 15px;
	}
	.sidenav a {
		font-size: 18px;
	}
}


</style>
</head>
<body>
	<script>
		function openNav() {
			document.getElementById("mySidenav").style.width = "250px";
			document.getElementById("main").style.marginLeft = "250px";
		}

		function closeNav() {
			document.getElementById("mySidenav").style.width = "0";
			document.getElementById("main").style.marginLeft = "0";
		}
	</script>
	<div id="mySidenav" class="sidenav">
		<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		<a href="logout">Logout</a>
	</div>

	<div style="margin-top: -10px; margin-left: -10px; margin-right: -10px">
		<div style="padding-top: 14px" class="bb">
			<div id="innercontent">
				<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
				&nbsp;&nbsp;&nbsp;<font color="white"><b>TodoNotes</b></font> <input
					class="ee" placeholder="search"> </input>
				<!-- <div id="logoutcontent">
<a href="logout">logout</a>
</div> -->
			</div>

		</div>
	</div>
	<div id="main">
		<div class="dd">
			<table>
				<form action="addNotes" method="get" style="padding: 30px">
					<tr>
						<td><input type="text" name="title" placeholder="title"
							size="100" outline="none">
					</tr>
					<tr>
						<td><input type="text" name="description"
							placeholder="description" size="100" outline="none"></td>
						</td>
			</table>
			<pre>
<table>
<tr>              
    <td>                                                              <center>  	<input type="submit" value="DONE">
							</center>
    
    </td>
    </tr>
</table>
</pre>
			</form>
		</div>
		<c:forEach items="${dataList}" var="listofdata">
				<div class="note">
					<a href="<c:url value='individualNote?id=${listofdata.id}'/>">
					<table>
						<tr>
							<td>title:<c:out value="${listofdata.title}" /></td>
						</tr>
						<tr>
							<td>description: <c:out value="${listofdata.description}" /></td>
						</tr>
						<tr>
							<td>
							<a href="<c:url value='deleteNote?id=${listofdata.id}'/>">deleteNote</a> 
							<a href="<c:url value='update?id=${listofdata.id}'/>">updateNote</a></td>
						</tr>
					</table>
				</div> 
		</c:forEach>
		</a> 
    </div>
</body>
</html>