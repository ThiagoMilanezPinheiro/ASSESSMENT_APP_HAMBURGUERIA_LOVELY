<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AT APP JAVA EE</title>
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
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">
				<img src="https://respostas.sebrae.com.br/wp-content/uploads/2020/06/como_fazer_hamburguer_caseiro-806x440.jpg" alt="HamburgueriaLovely.com" class="w3-round" alt="Norway" style="width:1106px;height:540px;">
				
					<h1 class="marca">Hamburgueria Lovely</h1>
				</div>

				<div class="panel-body">
					<div class="btn-group">
						<form action="/home">
							<button type="submit" class="btn btn-primary active">Home</button>
						</form>
					</div>
				</div>
			</div>
			</div>
			<form action="/pedido/incluir" method="post">
						
				<div class="form-group">
				<label>Informe seu Pedido</label>
				<input type="text" name="descricao" class="form-control">
				</div>
				<div class="form-group">
				<label>Combos</label>
				<input type="text" name="combo" class="form-control">
				</div>
				<div class="form-group">
				<label>Porções</label>
				<input type="text" name="porcao" class="form-control">
				</div>
				
				<div class="form-group">
				<label>Informe o Cliente</label>
				<select class="form-control" name="cliente.id">
				<c:forEach var="c" items="${clientes}">
					<option value="${c.id}">${c.nome}</option>
				</c:forEach>
				</select>
				</div>
				<div class="form-group">
				<label>Telefone</label>
				<input type="text" name="telefone" class="form-control">
				</div>
				
				
				<button type="submit" class="btn btn-primary active">Cadastrar</button>
			</form>

			<c:if test="${not empty lista}">
				<h4>Listagem de Pedidos.</h4>

				<table class="table table-striped">
					<thead>
						<tr>
							<th>Descrição do Pedido</th>
							<th>Combos</th>
							<th>Porções</th>
							<th>Cliente</th>
							<th>Telefone</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="p" items="${lista}">
							<tr>
								<td>${p.descricao}</td>
								<td>${p.combo}</td>
								<td>${p.porcao}</td>
								<td>${p.cliente.nome}</td>
								<td>${p.telefone}</td>
								<td><a href="/pedido/${p.id}/excluir">excluir</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</c:if>

			<c:if test="${empty lista}">
				<h4>Nenhum Pedido cadastrado!!!</h4>
			</c:if>
		</div>
</body>
</html>