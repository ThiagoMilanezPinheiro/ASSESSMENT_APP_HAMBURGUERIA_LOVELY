<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT APP JAVA EE</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<style>
.marca {
	position: absolute;
	color: #F5F5F5;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

.w3-btn {
	margin-bottom: 15px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
					<img
						src="https://respostas.sebrae.com.br/wp-content/uploads/2020/06/como_fazer_hamburguer_caseiro-806x440.jpg"
						alt="HamburgueriaLovely.com" style="width: 1106px; height: 540px;">

					<h1 class="marca">Hamburgueria Lovely</h1>
				</div>
				
					
				<div class="panel-body">
					<div class="btn-group">
						<form action="/cadastro">
							<button type="submit" class="btn btn-primary">Novo Usuário</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		
		<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
			<strong>Atenção!!! </strong>${mensagem}
		</div>
		</c:if>
		<form action="/usuario/login" method="post">

			<div class="form-group">
				<label>Informe o E-mail</label> <input type="text" name="email"
					class="form-control">
			</div>
			<div class="form-group">
				<label>Informe sua Senha</label> <input type="text" name="senha"
					class="form-control">
			</div>

			<button type="submit"
				class="btn btn-primary">Logar</button>
		</form>


	</div>
</body>
</html>