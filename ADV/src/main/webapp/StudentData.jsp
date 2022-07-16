<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="com.cdac.entity.Student" %>
   <%@ page import="java.util.*" %>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StudentDetailsTable</title>
<style>
table, tr, td, th {
	border: 1px solid;
	text-align: center;
	padding: 5px;
}
.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
</head>
<body>
<%String str = (String)session.getAttribute("em"); 
if(str == null){ 
	response.sendRedirect("index.jsp");
}else{
%>

<h2>All Student Details is here!</h2>
 </div> 
            <nav>
               <ul style="list-style:none ;">
                   <li><a href="index.html">Home</a></li>
                   <li><a href="Student.jsp">Click Here To Add Student</a></li>  
                    <li><a href="logout.cdac">Log_out</a></li>   
             </ul>
            </nav>
        
  </div>

<br>
<br>
<br>
<table class="center">
	<tr>
	<th>Id</th><th>RollNo</th><th>Name</th><th>Surname</th><th>MotherName</th><th>PassingYear</th><th>English_Mark</th><th>Marathi_Mark</th><th>Hindi_Mark</th><th>Math_Mark</th><th>Science_Mark</th><th>Update</th><th>Delete</th>
	</tr>
	<c:forEach items="${ listOfStudent }" var="student">
	<tr>
	
        <td>${ student.id}</td> 
	    <td>${ student.rollNo }</td> 
		<td>${ student.name }</td>
		<td>${ student.surname }</td>
		<td>${ student.motherName }</td>
		<td>${ student.passingYear}</td>
		<td>${ student.englishMark }</td>
		<td>${ student.marathiMark }</td>
		<td>${ student.hindiMark }</td>
		<td>${ student.mathMark }</td>
		<td>${ student.scienceMark }</td>
		<%Student student=new Student(); %>
		<td> <a href="fetch.cdac?id=${ student.id }" type="button" >Update</a></td>
		<td> <a href="fetchDelet.cdac?id=${ student.id }" type="button">Delete</a></td>
		
	</tr>
	</c:forEach>
</table>
<%} %>
</body>
</html>