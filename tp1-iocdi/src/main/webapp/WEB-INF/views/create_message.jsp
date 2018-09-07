<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<title>Créer Message</title>

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
				<a class="nav-item nav-link" href="/humancontact/admin/messages">Admin</a>
				<a class="nav-item nav-link" href="#">Chat</a>
			</div>
		</div>
	</nav>

<div class="container mt-5">
	
	<h3>Créer un message</h3>

	<c:url var="formAction" value="${requestScope['javax.servlet.forward.servlet_path']}/admin/messages" />

		<form:form modelAttribute="message" action="${formAction}">
		
		<form id="formulaireAjouterNouveauCollab" class="needs-validation" novalidate>
			<div class="form-row">

				<div class="col-md-6 mb-3">
					<form:label path="expediteur" for="expediteur" class="col-sm-2 col-from-label"> Expediteur </form:label> 
					<form:input path="expediteur" type="text" class="form-control" id="expediteur" placeholder="Utilisateur expéditeur" />
					<div class="invalid-feedback">L'expéditeur est obligatoire</div>
				</div>
				
				<div class="col-md-6 mb-3">
					<form:label path="destinataire" for="destinataire" class="col-sm-2 col-from-label">Destinataire</form:label> 
					<form:input path="destinataire" type="text" class="form-control" id="destinataire" placeholder="Utilisateur destinataire" />
					<div class="invalid-feedback">Le destinataire est obligatoire</div>
				</div>

				<div class="col-md-6 mb-3">
					<form:label path="message" for="message" class="col-sm-2 col-from-label"></form:label>
   					<form:input path="message" type="text" class="form-control" id="message" placeholder=" Message" />
					<div class="invalid-feedback">Le message est obligatoire</div>
				</div>

			</div>

			<div class="col-6">
          		<input type="submit" value="Créer"/>
			</div>

		</form>
			
		</form:form>
	</div>
</body>
</html>