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
	<table>
		<form action='<c:url value="/produto/adiciona"/>' method="post">
		<tr>
			Nome: <td><input type="text" name="produto.nome" /></td>
			Descrição: <td><input type="text" name="produto.descricao" /></td>
			Preço: <td><input type="text" name="produto.preco" /></td>
			<td><input type="submit" value="Adicionar" /></td>
		</tr>
		</form>
	</table>
</body>
</html>