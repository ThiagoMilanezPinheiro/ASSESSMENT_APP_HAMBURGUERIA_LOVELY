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
margin-bottom:15px;
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
					
					<div class="panel-body">
					<div class="btn-group">
						<form action="/">
							<button type="submit" class="btn btn-primary">Home</button>
						</form>
					</div>
				</div>
				</div>
			</div>
		</div>
		
		<c:if test="${not empty mensagem}">
		<div class="alert alert-warning">
			<strong>Atenção!!! </strong>${mensagem}
		</div>
		</c:if>
		
		<form action="/cadastroUsuario/cadastro" >

			
			<div class="form-group">
				<label>Informe seu Email</label> <input type="email" name="email"
					class="form-control">
			</div>
			<div class="form-group">
				<label>Informe o Nome</label> <input type="text" name="nome"
					class="form-control">
			</div>
			<div class="form-group">
				<label>Senha</label> <input type="password" name="senha"
					class="form-control">
			</div>
			

			<button type="submit" class="btn btn-primary">Cadastrar</button>
		</form>

		<c:if test="${not empty lista}">
			<h4>Listagem de Clientes.</h4>

			<table class="table table-striped">
				<thead>
					<tr>
						<th>Nome</th>
						<th>Email</th>
						<th>Senha</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach var="s" items="${lista}">
						<tr>
							<td>${s.email}</td>
							<td>${s.nome}</td>
							<td>${s.senha}</td>
							<td><a href="/cliente/${s.id}/excluir">excluir</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</c:if>

<!--  	<c:if test="${empty lista}">
			<h4>Nenhum Cliente cadastrado!!!</h4>
		</c:if> -->	
	</div>
</body>
</html>