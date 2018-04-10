<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />    

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Shop Homepage - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${css}/shop-homepage.css" rel="stylesheet">

  </head>

  <body>
	<!-- Navigation -->
    <%@include file="./common/navbar.jsp" %>
    
   <!-- Load only when user clicks the index or home page -->
    <c:if test="${userClicksHome == true}">
	    <!-- index page -->
		<%@include file="./main/index.jsp" %>
	</c:if>

	<!-- Load only when user clicks about page -->
    <c:if test="${userClicksAbout == true}">
	    <!-- index page -->
		<%@include file="./main/about.jsp" %>
	</c:if>

	<!-- Load only when user clicks contact page -->
    <c:if test="${userClicksContact == true}">
	    <!-- index page -->
		<%@include file="./main/contact.jsp" %>
	</c:if>
    
    <!-- Footer -->
    <%@include file="./common/footer.jsp" %>

    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquery.min.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>

  </body>

</html>
