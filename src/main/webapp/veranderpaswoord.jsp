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
                <li><a href="Controller?command=Register">Register</a></li>
                <li id="actual"><a href="Controller?command=ChangePasswordPagina">Verander paswoord</a></li>
            </ul>
        </nav>
        <h2>
            Verander paswoord
        </h2>

    </header><main>
    <c:if test="${user==null}">
        <p>Je moet eerst inloggen!</p>
    </c:if>
    <c:if test="${user != null}">
        <p>Verander je paswoord.</p>
        <form action="Controller?command=ChangePassword" method="post" novalidate="novalidate">
            <p><label for="userid">User id</label><input type="text" name="userid" id="userid" value=""></p>
            <p><label for="oudpassword">Old Password</label><input type="password" name="oudpassword" id="oudpassword" value=""></p>
            <p><label for="nieuwpassword">New Password</label><input type="password" name="nieuwpassword" id="nieuwpassword" value=""></p>
            <p><input type="submit" id="login" value="Login"></p>
        </form>
    </c:if>

</main>
    <footer>
        &copy; Webontwikkeling 3, UC Leuven-Limburg
    </footer>
</div>
</body>
</html>