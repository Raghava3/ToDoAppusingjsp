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
	width: 650px;
	height: 170px;
	background-color: white;
	margin: 0 auto;
	margin-top: 00px;
	padding-top: 0px;
	padding-left: 10px;
	border-radius: 0px;
}

.ff {
	width: 650px;
	height: 50px;
	background-color: white;
	margin: 0 auto;
	margin-top: 30px;
	padding-top: 0px;
	padding-left: 10px;
	border-radius: 0px;
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
	height: 30px;
	background-color: white;
	margin: 0 auto;
	margin-top: 10px;
	padding-top: 40px;
	padding-left: 40px;
	border-radius: 0px;
}
.note1 {
	width: 350px;
	height: 30px;
	background-color: white;
	margin: 0 auto;
	margin-top: 0px;
	padding-top: 40px;
	padding-left: 40px;
	border-radius: 0x;
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
		function openEntry()
		{
			document.getElementById("newNote").style.display="block";
		}
		
		function popUp(title,description)
		{
			alert(title+"\n"+description) 
		}
		
		function myFunction() {
		    var popup = document.getElementById("myPopup");
		    popup.classList.toggle("show");
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
			
			</div>
		</div>
	</div>



	<div id="main">
		<div class="ff" class="entry" onclick="openEntry()">
			<span style="cursor: poniter; margin-left: 20px;">take a
				note...</span>
		</div>
			<div id="newNote" class="dd" style="display: none;">
				<table>

					<form action="addNotes" method="get" style="padding: 00px">
						<tr>
							<td><input type="text" name="title" placeholder="title"
								size="100" outline="none">
						</tr>
						<tr>
							<td><input type="text" name="description"
								placeholder="description" size="100" outline="none"></td>
							</td>
				</table>
				<pre><table>
<tr>              
    <td>                                                              	<input
									                  	type="submit" value="DONE">
    
    </td>
    </tr>
    
</table>


			</div>


			</pre>
			</form>
		

 
		<c:forEach items="${dataList}" var="listofdata">
 	
 	<div id="main">
				<div class="note" onclick="popUp('${listofdata.title}','${listofdata.description}')" style="word-wrap:break-word;">
				<span style="margin-left:30px;">${listofdata.title}</span></br>
				<span style="margin-left:30px;">${listofdata.description}</span>
				</div>
				  
				<div class="note1">
			    <a href="<c:url value='deleteNote?id=${listofdata.id}'/>">deleteNote</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            <a href="<c:url value='update?id=${listofdata.id}'/>">updateNote</a></pre>
				</div>
<%-- <table>
						<tr>
							<td>title:<c:out value="${listofdata.title}" /></td>
						</tr>
						<tr>
							<td>description: <c:out value="${listofdata.description}" /></td>
						</tr>
						<tr>
							<td><a
								href="<c:url value='deleteNote?id=${listofdata.id}'/>">deleteNote</a>
								<a href="<c:url value='update?id=${listofdata.id}'/>">updateNote</a></td>
						</tr>
					</table> --%>
				</div>
		</c:forEach>
					
		
		</a>
	</div>
	</div>
</body>
</html>