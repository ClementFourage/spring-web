<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>AdministrationMessages</title>

</head>

<body>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<img
			src="https://getbootstrap.com/docs/4.1/assets/brand/bootstrap-solid.svg"
			width="30" height="30" alt="">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="<c:url value='lister' />">Admin</a>
				<a class="nav-item nav-link" href="#">Chat</a>
			</div>
		</div>
	</nav>

	<div class="container-fluid">
		<h1>Administration des messages</h1>
		<div class=" row">
			<div class="col-12 ">
				<a href="http://localhost:8080/humancontact/admin/messages/new" class="btn btn-outline-dark float-right active" role="button" aria-pressed="true">Créer un message</a>
			</div>
		</div>
	
		<form>
			<table class="table mt-2">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Expéditeur</th>
						<th scope="col">Destinataire</th>
						<th scope="col">Message</th>
						<th scope="col">Date Heure</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${msg}" var="v">
						<tr>
							<th><c:out value="${v.expediteur}"><th></c:out>
							<th><c:out value="${v.destinataire}"><th></c:out>
							<th><c:out value="${v.message}"><th></c:out>
							<th><c:out value="${v.heure}"><th></c:out>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</form>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>