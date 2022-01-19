<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

<head>

	<title>Lista de Clientes</title>
	
	<link type="text/css" 
	rel="stylesheet" 
	href="${pageContext.request.contextPath}/resources/css/style.css"/> 

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2> Gerenciador de Relacionamento com Cliente</h2>
		</div>	
	</div>

	<div id="container">
		<div id="content">
			
			<input type="button" value="Adicionar cliente"
				onClick="window.location.href='showFormAdd'; return false"
				class="add-button"/>	
		
			<table>
			<tr>
				<th>Primeiro nome</th>
				<th>Sobrenome</th>
				<th>Email</th>	
				<th>Ação</th>				
			</tr>			
				<c:forEach var="tempCustomer" items="${customers}">
				
						<c:url var="updateLink" value="/customer/showFormUpdate">
							<c:param name="customerId" value="${tempCustomer.id}"/>
						</c:url>				
						<tr>
							<td> ${tempCustomer.firstName}</td>
							<td> ${tempCustomer.lastName} </td>
							<td> ${tempCustomer.email}</td>		
							<td> 
								<a href="${updateLink}">Atualizar</a>
							</td>					
						</tr>				
				</c:forEach>		
			</table>	
		</div>	
	</div>		
</body>
</html>