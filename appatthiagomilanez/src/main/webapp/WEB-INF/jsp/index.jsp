<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>APP AT Java EE</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	
<style>
.marca {
  position: absolute;
  color: #F5F5F5;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}

 
</style>
</head>
<body>

	<div class="container">
	
		<div class="container">
			<div class="panel-group">
				<div class="panel panel-default">
					<div class="panel-heading">
					<h1 class="marca">Hamburgueria Lovely</h1>
					<img src="https://respostas.sebrae.com.br/wp-content/uploads/2020/06/como_fazer_hamburguer_caseiro-806x440.jpg" alt="HamburgueriaLovely.com" style="width:1106px;height:540px;">
						<h2>${user.nome}</h2>
						<h3>${user.email}</h3>
						<h3><a href="${user.git}">GIT</a></h3>
						<div class="panel-body">
					<div class="btn-group">
						<form action="/">
							<button type="submit" class="btn btn-primary">Home</button>
						</form>
					</div>					
				</div>
				<div class="panel-body">
					<div class="btn-group">
						<form action="/cadastroItem/cadastrodeitem">
							<button type="submit" class="btn btn-primary">Cadastro de Itens</button>
						</form>
					</div>
				</div>
						
					</div>


				</div>
				<div class="panel-body">
					<div class="btn-group">
						<form action="/cliente">
							<button type="submit" class="btn btn-primary">Novo Cliente</button>
						</form>
					</div>
				</div>
				
				<div class="panel-body">
					<div class="btn-group">
						<form action="/pedido">
							<button type="submit" class="btn btn-primary active">Novo Pedido</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>