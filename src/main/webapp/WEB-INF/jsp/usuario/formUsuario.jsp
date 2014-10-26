<!DOCTYPE html>

<html class="ls-theme-light-green ls-screen-lg">
<head>
<title>Dog Trainer</title>

			<link href="http://assets.locaweb.com.br/locastyle/3.3.0/stylesheets/locastyle.css" rel="stylesheet" type="text/css"/>
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>

<h1 class="ls-title-intro ls-ico-users">
	<fmt:message key="label.cadastro.usuario" />
</h1>

<p>
	<button type="submit" class="ls-btn" id="salvar">
		<fmt:message key="label.padrao.salvar" />
	</button>
</p>

<form action="<c:url value='/usuario/salvar'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">

	<div class="ls-box">

		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.email" /></span> <input type="text" name="usuario.login">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.senha" /></span> <input type="text" name="usuario.senha">
			</label>
		</div>
		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.tipo.usuario" /></span> 
						<select name="usuario.tipoUsuario">
							<option/>
							<c:forEach items="${tipoUsuarioList }" var="tipo">
								
								<option value="${tipo.valor}"> ${tipo.descricao}</option>
							
							</c:forEach>
						</select>
			</label>
		</div>
		</div>
</form>

</body>
<script type="text/javascript"
			src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
			<script
			src="http://assets.locaweb.com.br/locastyle/3.3.0/javascripts/locastyle.js"
			type="text/javascript"></script>
<script>
	$(document).ready(function() {

		$("#salvar").click(function() {

			$("form").submit();

		});

	});
</script>
</html>

