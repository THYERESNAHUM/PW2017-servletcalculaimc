<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>Calcula IMC - JSP</title>

<style>
form[role=moldura] {
	color: #5d5d5d;
	background: #F0F0E8;
	padding: 25px;
	border-radius: 15px;
	-moz-border-radius: 15 px;
	-webkit-border-radius: 15px;
}
</style>
</head>
<meta charset="utf-8">
<link href="bootstrap/css/bootstrapcerulean.min.css" rel="stylesheet">
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<br>
				<form role="moldura" class="form-horizontal" action="calculaimc" method="post">
				<fieldset>
					<div align="center">
							<h3>Calcula IMC - Servlet</h3>
					</div>
					<div class="form-group">
						<label class="col-md-3 control-label" for="peso">Peso</label>
						<div class="col-md-6">
							<input id="peso" name="peso" placeholder="Informe o peso"
								class="form-control input-md" type="text">

						</div>
					</div>

					<!-- Text input-->
					<div class="form-group">
						<label class="col-md-3 control-label" for="altura">Altura</label>
						<div class="col-md-6">
							<input id="altura" name="altura" placeholder="Informe a altura"
								class="form-control input-md" type="text">

						</div>
					</div>

					<!-- Select Basic -->
					<div class="form-group">
						<label class="col-md-3 control-label" for="sexo">Sexo</label>
						<div class="col-md-5">
							<select id="sexo" name="sexo" class="form-control">
								<option value="" disabled selected>Selecionar</option>
								<option value="F">Feminino</option>
								<option value="M">Masculino</option>
							</select>
						</div>
					</div>

					<!-- Button -->
					<div class="form-group">
						<label class="col-md-3 control-label" for=""></label>
						<div class="col-md-3">
							<button id="bt" name="bt" class="btn btn-info">Calcular</button>
						</div>
					</div>
					</br>					
						<div class="form-group">
							<div class="col-md-4"></div>
							<c:if test="${not empty resultado}">
								<div class="alert alert-success fade in">						
										<strong>${resultado}</strong>
								</div>
							</c:if>
						</div>
				</fieldset>					
				</form>
			</div>
		</div>			
	</div>		
</body>
</html>
