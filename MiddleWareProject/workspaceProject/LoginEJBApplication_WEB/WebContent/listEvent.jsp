<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Check seat by Event</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<style>
body {
 font-size: 20px;
 color: teal;
 font-family: Calibri;
}

td {
 font-size: 15px;
 color: black;
 width: 100px;
 height: 22px;
 text-align: left;
}

.heading {
 font-size: 18px;
 color: white;
 font: bold;
 background-color: orange;
 border: thick;
}
</style>
</head>
<body>
<center>
<table >                      
<tr>
<th>ID ARTISTE</th>
<th>ARTISTE NAME</th>
<th>ARTISTE CATEGORY</th>				  
<th>DATE</th>
</tr>                
<tbody >   
                     <c:forEach var="ArtisteServlet" items="${Artiste}">  
                    <tr>
                    <td><c:out value="${ArtisteServlet.id_artiste}"/></td>
                       <td><c:out value="${ArtisteServlet.a_name}"/></td>
                        <td><c:out value="${ArtisteServlet.a_category}"/></td>
                        <td><c:out value="${ArtisteServlet.date}"/> </td>  
<td> <a href="ArtisteServlet?action=viewSeatDispo&seat=${ArtisteServlet.seat.idSeat}" >CHECK</a> |            
</tr>
</c:forEach> 
 </tbody>
</table>
</center>
</body>
</html>