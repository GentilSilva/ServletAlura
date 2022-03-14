<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/unicaEntrada" var="linkUnicaEntradaServlet" />    

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cadastrando nova Empresa</title>
	</head>
	<body>
		<form action="${linkUnicaEntradaServlet}" method="post">
			Nome: <input type="text" name="nome" />
			Data Abertura: <input type="text" name="data" />
			<input type="submit" value="Cadastrar" />
			<input type="hidden" name="acao" value="NovaEmpresa">
			
		</form>
	
	</body>
</html>