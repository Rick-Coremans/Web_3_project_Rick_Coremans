<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div id="container">
<header>
<h1><span>XXX</span></h1>
<nav>
<ul>
<li><a href="Controller">Home</a></li>
<li><a href="Controller?command=Overview">Overview</a></li>
<li id="actual"><a href="Controller?command=Register">Register</a></li>
    <li><a href="Controller?command=ChangePasswordPagina">Verander paswoord</a></li>
</ul>
</nav>
<h2>
Register
</h2>

</header><main>
    <c:if test="${error != null}">
	<div class="alert-danger">
		<ul>
            <c:forEach var="errormessage" items="${error}">
			<li>${errormessage}</li>
		</ul>
        </c:forEach>
	</div>
    </c:if>

    <form method="post" action="Controller?command=CreateAccount" novalidate="novalidate">
    	<!-- novalidate in order to be able to run tests correctly -->
        <p><label for="userid">User id</label><input type="text" id="userid" name="userid"
         required value="${previousUserid}" > </p>
        <p><label for="firstName">First Name</label><input type="text" id="firstName" name="firstName"
         required value="${previousFirstName}"> </p>
        <p><label for="lastName">Last Name</label><input type="text" id="lastName" name="lastName"
         required value="${previousLastName}"> </p>
        <p><label for="email">Email</label><input type="email" id="email" name="email" required value="${previousEmail}"></p>
        <p><label for="password">Password</label><input type="password" id="password"  name="password"
         required value="${previousPassword}"> </p>
        <p><input type="submit" id="signUp" value="Sign Up"></p>
        
    </form>
</main>
<footer>
&copy; Webontwikkeling 3, UC Leuven-Limburg
</footer>
</div>
</body>
</html>



