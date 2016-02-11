<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista de produtos</title>
</head>
<body>
	<table>
	<c:forEach var="produto" items="${produtoList }" >
		<tr>
			<td>${produto.nome }</td>
			<td>${produto.descricao }</td>
			<td>${produto.cor }</td>
			<td>${produto.preco }</td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>