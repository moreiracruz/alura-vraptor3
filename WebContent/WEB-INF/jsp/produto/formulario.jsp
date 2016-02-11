<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Novo produto</title>
</head>
<body>
	<c:forEach items="${errors }" var="error">
		<p>${error.category } - ${error.message }</p>
	</c:forEach>
	<table>
		<form action='<c:url value="/produto/adiciona"/>' method="post">
		<tr>
			<th>
				Nome: 
			<th>
			<td>
				<input type="text" name="produto.nome" value="${produto.nome }" />
			</td>
		</tr>
		<tr>
			<th>
				Descrição: 
			<th>
			<td>
				<input type="text" name="produto.descricao" value="${produto.descricao }" />
			</td>
		</tr>
		<tr>
			<th>
				Cor:  
			<th>
			<td>
				<input type="text" name="produto.cor" value="${produto.cor }" />
			</td>
		</tr>
		<tr>
			<th>
				Preço:  
			<th>
			<td>
				<input type="text" name="produto.preco" value="${produto.preco }" />
			</td>
		</tr>
		<tr>
			<th></th>
			<td><input type="submit" value="Adicionar" /></td>
		</tr>
		</form>
	</table>
</body>
</html>