<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
	<div id="container">
		<header>
			<h1>
				<span>XXX</span>
			</h1>
			<nav>
				<ul>
					<li id="actual"><a href="Controller">Home</a></li>
					<li><a href="Controller?command=Overview">Overview</a></li>
					<li><a href="Controller?command=Register">Register</a></li>
				</ul>
			</nav>
			<h2>Home</h2>

		</header>
		<main><p> Sed ut perspiciatis unde omnis iste natus error sit
		voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque
		ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae
		dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
		aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos
		qui ratione voluptatem sequi .</p>
		<c:if test="${error != null}">
		<p>No valid userid/password</p>
		</c:if>
		<c:if test="${user == null}">
			<form action="Controller?command=Login" method="post">
				<p><label for="userid">User id</label><input type="text" name="userid" id="userid" value=""></p>
				<p><label for="password">Password</label><input type="password" name="password" id="password" value=""></p>
				<p><input type="submit" id="login" value="Login"></p>
			</form>
		</c:if>
		<c:if test="${user != null}">
			<p>Welcome ${user.firstName}</p>
			<p><a href="Controller?command=Logout">Logout</a></p>
		</c:if>
		</main>
		<footer> &copy; Webontwikkeling 3, UC Leuven-Limburg </footer>
	</div>
</body>
</html>