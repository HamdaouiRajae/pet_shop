<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Pet Shop</title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	
	<div id="wrap">

       <div class="header">
       		<div class="logo"><a href="index.do"><img src="images/logo.gif" alt="" title="" width="0px" border="0" /></a></div>            
        <div id="menu">
            <ul>                                                                       
            <li><a href="index.do">Home</a></li>
            <li><a href="about.do">About Us</a></li>
            <li><a href="pets.do">Pets</a></li>
            <li><a href="specials.do">Specials Pets </a></li>
            
         
           
             <c:if test="${ empty sessionScope.userid }">
            	<li><a href="myaccount.do">My Account</a></li>
	            <li><a href="register.do">Register</a></li>
            </c:if>
 	
          
            
            <li><a href="details.do?id=${modelPets.get(0).getId_p()}">Prices</a></li> <li>   
            
           
            
            <li><a href="contact.do">Contact</a></li>
            
            	 <c:if test="${ !empty sessionScope.userid }">
            	  <li> <a href="logout.do">Logout</a>
            	   </c:if>
           
            </ul>
        </div>     
     </div> 