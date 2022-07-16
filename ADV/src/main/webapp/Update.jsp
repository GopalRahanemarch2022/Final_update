<%@ page import="com.cdac.entity.Student" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateStudentMark</title>
<style>
	.student {
		width: 350px;
		margin: auto;
	}
	div {
		margin-top: 10px;
	}
	label {
		font-weight: bold;
	}
	input {
 		width: 100%;
  		padding: 12px 20px;
  		margin: 8px 0;
  		box-sizing: border-box;
  		border: 2px solid red;
  		border-radius: 4px;
	}
</style>
</head>
<body>
 </div> 
            <nav>
               <ul style="list-style:none ;">
                   <li><a href="index.html">Home</a></li>
                   <li><a href="Student.jsp">Click Here To Add Student</a></li>     
             </ul>
            </nav>
        
  </div>
<div class="student">

<h2>${ message }</h2>
<form action="Update.cdac">
 <input type="hidden" name="id"value="${ student.id }" /> <br />
Enter Student Roll_NO : <input type="text" name="roll_no"value="${ student.rollNo }" /> <br />
Enter Student Name : <input type="text" name="name" value="${ student.name }" /> <br />
Enter Student Surname : <input type="text" name="surname" value="${ student.surname }"/> <br />
Enter Student Mother Name : <input type="text" name="mother"value="${ student.motherName }" /> <br />
Enter Student Passing_year : <input type="number" name="passing_year"value="${ student.passingYear}" /> <br />
Enter Mark English : <input type="number" name="english" value="${ student.englishMark }"/> <br />
Enter Mark Marathi : <input type="number" name="marathi"value="${ student.marathiMark }" /> <br />
Enter Mark Hindi : <input type="number" name="hindi"value="${ student.hindiMark }" /> <br />
Enter Mark Math : <input type="number" name="math"value="${ student.mathMark }" /> <br />
Enter Mark Science : <input type="number" name="science"value="${ student.scienceMark }" /> <br />

<button type="submit">Update_Details</button>
</form>
</div>
</body>
</html>