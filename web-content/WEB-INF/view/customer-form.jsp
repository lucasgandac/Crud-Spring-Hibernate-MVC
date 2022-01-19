<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Salvar Cliente</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>Gerenciador de Relacionamento com Cliente</h2>
		</div>
	</div>

	<div id="container">
		<h3>Salvar Cliente</h3>
	
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		
			<table>
				<tbody>
					<tr>
						<td><label>Primeiro nome:</label></td>
						<td><form:input path="firstName" /></td>
					</tr>
				
					<tr>
						<td><label>Sobrenome:</label></td>
						<td><form:input path="lastName" /></td>
					</tr>

					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Salvar" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list">Voltar para lista</a>
		</p>
	
	</div>

</body>

</html>