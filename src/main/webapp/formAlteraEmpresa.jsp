<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/alteraEmpresa" var="linkServletAlteraEmpresa" /> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Cadastrando nova Empresa</title>
	</head>
	<body>
		<form action="${linkServletAlteraEmpresa}" method="post">
			Nome: <input type="text" name="nome" value="${empresa.nome}"/>
			Data Abertura: <input type="text" name="data" value="<fmt:formatDate value="${empresa.dataAbertura}" type="both" pattern="dd/MM/yyyy"/>" />
			<input type="hidden" name="id" value="${empresa.id}" />
			<input type="submit" value="cadastrar" />
			
		</form>
	
	</body>
</html>