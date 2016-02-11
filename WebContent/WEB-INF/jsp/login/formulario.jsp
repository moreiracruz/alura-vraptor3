<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<table>
		<form action='<c:url value="/login/loga"/>' method="post">
			<tr>
				<th>Usuário: </th>
				<td>
					<input type="text" name="login" />
				</td>
			</tr>
			<tr>
				<th>Senha: </th>
				<td>
					<input type="password" name="senha" />
				</td>
			</tr>
			<tr>
				<th></th>
				<td>
					<input type="submit" value="Entrar" />
				</td>
			</tr>
		</form>
	</table>
</body>
</html>