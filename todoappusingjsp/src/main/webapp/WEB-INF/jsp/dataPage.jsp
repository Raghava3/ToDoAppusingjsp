<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
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
	margin-top: 30px;
	padding-top: 0px;
	padding-left: 5px;
	border-radius: 0px;
	margin-left: -15px;
}

.ee {
	width: 40%;
	height: 30px;
	background-color: #fff;
	margin: 0 auto;
	margin-left: 15%;
}

.ff {
	width: 650px;
	height: 50px;
	background-color: white;
	margin: 0 auto;
	margin-top: 15px;
	padding-top: 0px;
	padding-left: 15px;
	border-radius: 0px;
	position: fixed;
	margin-left: 310px;
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
	        height: 208px;
}
.note {
	width: 381px;
	min-height: 50px;
	background-color: white;
	margin: 0 auto;
	margin-top: 10px;
	padding-right:15px;
	padding-top: 40px;
	padding-left: 10px;
	border-radius: 0px;
}

.note1 {
	    width: 382px;
	height: 70px;
	background-color: white;
	margin: 0 auto;
	margin-top: -17px;
	padding-top: 40px;
	padding-left: 40px;
	border-radius: 0x;
}

.note2 {
	margin-top: 305px;
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
		function openEntry() {
			document.getElementById("newNote").style.display = "block";
		}

		function popUp(title, description) {
			alert(title + "\n" + description)
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


	<div style="margin-top: -10px; margin-left: -10px; margin-right: -10px;">
		<div style="padding-top: 14px" class="bb">
			<div id="innercontent">
				<span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>
				&nbsp;&nbsp;&nbsp;<font color="white"><b>TodoNotes</b></font> <input
					class="ee" placeholder="search"> </input> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="Homepage"><i class="fa fa-refresh" style="font-size:35px;color:#e8e8e8"></i></a>

			</div>
		</div>
	</div>



		<div id="main"> 
		<div class="hh">
		<div class="ff" class="entry" onclick="openEntry()">
			<span style="cursor: poniter; margin-left: 17px;">make a note...</span>
			<div id="newNote" class="dd" style="display: none;">
					<form action="addNotes" method="get" style="padding: 00px">
						<table>
			          	<tr>
							<td><input type="text" name="title" placeholder="title" size="100" outline="none"></td>
						</tr>
						<tr>
							<td><input type="text" name="description" placeholder="description" size="100" outline="none"></td>
                        </tr>				
				        </table>
                   	<table>
                      <tr>              
                         <td><input type="submit" value="DONE"></td>
                      </tr>
                    </table>
                 </form>
			</div>
		</div>
</div>
   
 
		</form>
			<div class="note2">
				<c:forEach items="${dataList}" var="listofdata">
					<div class="note"
						onclick="popUp('${listofdata.title}','${listofdata.description}')"
						style="word-wrap: break-word;">
						<span style="margin-left: 30px;">${listofdata.title}</span></br> <span
							style="margin-left: 30px;">${listofdata.description}</span>
					</div>

					<div class="note1">
						<a href="<c:url value='update?id=${listofdata.id}'/>">	<i class="fa fa-edit" style="font-size:28px;color:#41474B"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="<c:url value='deleteNote?id=${listofdata.id}'/>"><i class="fa fa-trash" style="font-size:28px;color:#41474B"></i></a>
					</div>
			
			</c:forEach>
		 </div>
		</a>
		</div>
</body>
</html>