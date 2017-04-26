<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>datapage</title>

<style type="text/css">
  body{	
   background-color:#e8e8e8;
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
    
      width: fit;
      height:65px;
      background-color: #41474B  /*  #5D8BA5 */    /* #f5b400 */	;
      margin:0 auto;
      padding-top:30px;
      padding-left: 10px;
    
    }
    .dd
    {
    
      width: 400px;
      height:200px;
      background-color:white;
      margin:0 auto;
      margin-top: 30px;
      padding-top:0px;
      padding-left: 10px;
      border-radius: 5px;
    
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
      border-radius: 5px;
    
    }
    
    .note
    {
    width:350px;
    height:200px;
    background-color:white;
    margin:0 auto;
    margin-top:10px;
    padding-top:40px;
    padding-left:20px;
    border-radius:5px;
    }
      .ee
    {
    
      width:40% ;
      height:30px;
      background-col/or:#fff;
      margin:0 auto;
      margin-left:20%;
    }
    input[type=text]
    {
    
    width:60%;
    height:40px;
    padding-top:15px;
    margin:8px 0;
    box-sizing:border-box;
    border:2px solid white;
    border-radiux:3px;
    padding-bottom:15px;
    } 
    #innercontent{
    	padding:1%;
    }
    #logut{
    padding:10%;
    }
</style>
</head>
<body>
<div style="padding-top:16px" class="bb"> 
<!-- <div id="innercontent">
 --><font color="white"><b>Todo</b></font>
<input class="ee" placeholder="search">
</input>
</div>
</div>
  <div class="dd">
<table> 
<form action="addNotes" method="get" style="padding:30px">
<tr>
<td>
<input type="text"   name="title"       placeholder="title" size="100" outline="none" > </tr>
<tr>
<td>
<input type="text"   name="description" placeholder="description" size="100" outline="none"> 
</td>
</td>
</table>
<pre>
<table>
<tr>              
    <td>                                                              <center><input type="submit" value="DONE"></center>
    
    </td>
    </tr>
</table>
</pre>
</form>
 </div>
<c:forEach items="${dataList}" var="listofdata">
<div class="note">
<table>
<tr><td>title:<c:out value="${listofdata.title}"/></td></tr>
<tr><td>description: <c:out value="${listofdata.description}"/></td></tr>
<tr><td><a href="<c:url value='deleteNote?id=${listofdata.id}'/>">delete Note</a>
<a href="<c:url value='update?id=${listofdata.id}'/>">update Note</a></td></tr>
 </table>
</div> 
</c:forEach>
</body>
</html>