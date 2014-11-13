<script>
	$(document).ready(function() {


		$("#salvar").click(function() {

			$("form").submit();

		});

	});
</script>

<h1 class="ls-title-intro ls-ico-users">
	<fmt:message key="label.cadastro.comando" />
</h1>

	<p>
		<button type="submit" class="ls-btn ls-btn-primary" id="salvar">
		<i class="fa fa-floppy-o"></i>
			<fmt:message key="label.padrao.salvar" />
		</button>
		
		<c:choose>
			<c:when test="${empty comando.id}">
				<a href="<c:url value='/listarComandos'/>" class="ls-btn-danger">
					<i class="fa fa-close"></i>
					<fmt:message key="label.padrao.cancelar" />
				</a>
			</c:when>
			<c:otherwise>
				<a href="<c:url value='/comando/verComando/${comando.id}'/>" class="ls-btn-danger">
					<i class="fa fa-close"></i>
					<fmt:message key="label.padrao.cancelar" />
				</a>
			</c:otherwise>
		</c:choose>

	</p>

	<form action="<c:url value='/comando'/>"
		class="ls-form ls-form-horizontal row " data-ls-module="form"
		method="post">

		<c:choose>
			<c:when test="${empty comando.id}">
				<input type="hidden" name="_method" value="post" />
			</c:when>
			<c:otherwise>
				<input type="hidden" name="comando.id" value="${comando.id}" />
				<input type="hidden" name="_method" value="put" />
			</c:otherwise>
		</c:choose>

		<div class="ls-box">

			<div class="row">
				<label class="ls-label col-md-4"> <span class="ls-label-text" ><fmt:message key="label.nome" /></span> <input
					type="text" name="comando.nome" value="${comando.nome}" style="float:left;">
				</label>
			</div>
			
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message key="label.descricao" /></span> <input
					type="text" name="comando.descricao" value="${comando.descricao}">
				</label>
			</div>
			
		</div>
	</form>