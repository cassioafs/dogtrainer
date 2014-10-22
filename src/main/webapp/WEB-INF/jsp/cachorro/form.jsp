<!DOCTYPE html>

<html class="ls-theme-light-green ls-screen-lg">
<head>
<title>Dog Trainer</title>

<script type="text/javascript">
	$(document).ready(function() {
		$("#date").mask("00/00/0000");

	});

	$(document).ready(function() {

		$("#salvar").click(function() {

			$("form").submit();

		});

	});

	function validarData() {

		var dataValida = dataUtils.isValida($("#date").val());
		alert('A data ' + $("#date").val() + ' é valida: ' + dataValida);
	}
</script>
</head>
<body>
	<h1 class="ls-title-intro ls-ico-users">
		<c:choose>
			<c:when test="${empty cachorro.id}">
				<fmt:message key="label.cadastro.cachorro" />
			</c:when>
			<c:otherwise>
				<fmt:message key="label.edicao.cachorro" />
			</c:otherwise>
		</c:choose>
	</h1>

	<p>
		<button type="submit" class="ls-btn" id="salvar">
			<fmt:message key="label.padrao.salvar" />
		</button>

		<c:choose>
			<c:when test="${empty cachorro.id}">
				<a href="<c:url value='/cachorro'/>" class="ls-btn-danger">
					<fmt:message key="label.padrao.cancelar" />
				</a>
			</c:when>
			<c:otherwise>
				<a href="<c:url value='/cachorro/show/${cachorro.id}'/>" class="ls-btn-danger">
					<fmt:message key="label.padrao.cancelar" />
				</a>
			</c:otherwise>
		</c:choose>

	</p>

	<form action="<c:url value='/cachorro'/>"
		class="ls-form ls-form-horizontal row " data-ls-module="form"
		method="post">

		<c:choose>
			<c:when test="${empty cachorro.id}">
				<input type="hidden" name="_method" value="post" />
			</c:when>
			<c:otherwise>
				<input type="hidden" name="cachorro.id" value="${cachorro.id}" />
				<input type="hidden" name="_method" value="put" />
			</c:otherwise>
		</c:choose>

		<div class="ls-box">

			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message key="label.nome" /></span> <input
					type="text" name="cachorro.nome" value="${cachorro.nome}">
				</label>
			</div>
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message key="label.raca" /></span> <br>
					<select style="width: 200px; height: 30px;"
					data-ls-module="dropdown" class="ls-dropdown ls-pos-right"
					name="cachorro.raca.id">
						<option hidden="hidden"><fmt:message
								key="label.seleciona.raca" /></option>
						<c:forEach var="raca" items="${racaCachorroList}">

							<c:choose>
								<c:when test="${raca.id eq cachorro.raca.id}">
									<option selected="selected" value="${raca.id}">${raca.descricao}</option>
								</c:when>
								<c:otherwise>
									<option value="${raca.id}">${raca.descricao}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
				</select>
				</label>
			</div>
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message
							key="label.data.nascimento" /></span> <input type="text"
					name="cachorro.dataNascimento" value="${cachorro.dataNascimento}"
					placeholder="dd/mm/aaaa" id="date" class="datepicker">
				</label>
			</div>
		</div>
	</form>

</body>
</html>

