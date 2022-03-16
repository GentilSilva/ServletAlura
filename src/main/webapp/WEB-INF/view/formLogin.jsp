<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/unicaEntrada" var="linkUnicaEntradaServlet" />    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Tela de Login</title>
		
	</head>
	<body>
		<form action="${linkUnicaEntradaServlet}" method="post">
			Login: <input type="text" name="login" />
			Password: <input type="password" name="senha" />
			<input type="submit" value="Entrar">
			<input type="hidden" name="acao" value="Login" />
	
		</form>
		
	</body>
</html>