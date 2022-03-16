<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List, br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Lista de empresas</title>
	</head>
	<body>
	
		<c:import url="logout-parcial.jsp"></c:import>
		<c:import url="formNovaEmpresa-partial.jsp"></c:import>
		
		
		<c:if test="${not empty empresa}">
			Empresa ${empresa} cadastrada com sucesso!
		</c:if>
	
		<h2>Lista de Empresas:</h2><br />
		
		<ul>					<%//lenguagem expression EL %>
			<c:forEach items="${empresas}" var="empresa">				
				<li>
					${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" type="both" pattern="dd/MM/yyyy"/>
					<a href="/gerenciador/unicaEntrada?acao=MostraEmpresa&id=${empresa.id}">Editar</a>					
					<a href="/gerenciador/unicaEntrada?acao=RemoveEmpresa&id=${empresa.id}">Remover</a>
				</li>
				
			</c:forEach>
		</ul>
	
	</body>
</html>