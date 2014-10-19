<!DOCTYPE html>

<html class="ls-theme-light-green ls-screen-lg">
<head>
<title>Dog Trainer</title>

			<link href="http://assets.locaweb.com.br/locastyle/3.3.0/stylesheets/locastyle.css" rel="stylesheet" type="text/css"/>
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
</head>
<body>

<h1 class="ls-title-intro ls-ico-users">
	<fmt:message key="label.cadastro.adestrador" />
</h1>

<p>
	<button type="submit" class="ls-btn" id="salvar">
		<fmt:message key="label.padrao.salvar" />
	</button>

	<a href="<c:url value='/adestrador/show/1'/>" class="ls-btn-danger"> <fmt:message
			key="label.padrao.cancelar" />
	</a>
</p>

<c:if test="${empty adestrador.id}">
	<input type="hidden" name="_method" value="post"/>
</c:if>

<form action="<c:url value='/adestrador'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">


<c:if test="${not empty adestrador.id}">
	<input type="hidden" name="adestrador.id" value="${adestrador.id}"/>
	<input type="hidden" name="_method" value="put"/>
</c:if>

<c:if test="${empty adestrador.id}">
	<input type="hidden" name="adestrador.usuario.id" value="${usuario.id}"/>
</c:if>


	<div class="ls-box">

		<div class="row">
			<label class="ls-label col-md-4"> 
				<span class="ls-label-text">
					<fmt:message key="label.nome" /> cassioooooo ${usuario.id}
				</span> 
				<input type="text" name="adestrador.nome" value="${adestrador.nome}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.sobrenome" /></span> <input type="text"
				name="adestrador.sobrenome" value="${adestrador.sobrenome}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.idade" /></span> <input type="text" name="adestrador.idade"
				value="${adestrador.idade}">
			</label>
		</div>
	
	<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.telefone" /></span> <input type="text" name="adestrador.telefone"
				value="${adestrador.telefone}" class="ls-mask-phone8_with_ddd"
				placeholder="(99) 9999-9999">
			</label>
		</div>


		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.celular" /></span> <input type="text" name="adestrador.celular"
				value="${adestrador.celular}" class="ls-mask-phone9_with_ddd"
				placeholder="(99) 99999-9999">
			</label>
		</div>


		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.cep" /></span> <input type="text" name="adestrador.cep"
				value="${adestrador.cep}" class="ls-mask-cep" placeholder="00000-000">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-6"> <span class="ls-label-text"><fmt:message
						key="label.endereco" /></span> <input type="text"
				name="adestrador.logradouro" value="${adestrador.logradouro}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.numero" /></span> <input type="text" name="adestrador.numero"
				value="${adestrador.numero}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.complemento" /></span> <input type="text"
				name="adestrador.complemento" value="${adestrador.complemento}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.bairro" /></span> <input type="text" name="adestrador.bairro"
				value="${adestrador.bairro}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.cidade" /></span> <input type="text" name="adestrador.cidade"
				value="${adestrador.cidade}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.estado" /></span> <input type="text" name="adestrador.estado"
				value="${adestrador.estado}">
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

