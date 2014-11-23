<script type="text/javascript">
	$(document).ready(function() {

		$("#date").mask("00/00/0000");
      	
		$("#selecionaRaca").select2();
		$("#selecionaProprietario").select2();

	});

	function validarData() {

		var dataValida = dataUtils.isValida($("#date").val());
		alert('A data ' + $("#date").val() + ' é valida: ' + dataValida);
	}
</script>
<h1 class="ls-title-intro">
	<fmt:message key="label.menu.cachorros" />
</h1>

<form action="<c:url value='/cachorro'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
	<button type="submit" class="ls-btn-primary btnSalvar">
		<i class="fa fa-floppy-o"></i>
	</button>

	<a href="<c:url value='/listarCachorros'/>" class="ls-btn-danger btnCancelar">
		<i class="fa fa-close"></i>
	</a>

<c:if test="${not empty cachorro.id}">
	<input type="hidden" name="cachorro.id" value="${cachorro.id}"/>
	<input type="hidden" name="_method" value="put"/>
</c:if>

<c:if test="${empty cachorro.id}">
	<input type="hidden" name="_method" value="post"/>
</c:if>

<p>
		<div class="ls-box">

			<div class="row">
				<label class="ls-label col-md-4"> <span class="ls-label-text" ><fmt:message key="label.nome" /></span> <input
					type="text" name="cachorro.nome" value="${cachorro.nome}" required>
				</label>
			</div>
			
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message key="label.apelido" /></span> <input
					type="text" name="cachorro.apelido" value="${cachorro.apelido}" required>
				</label>
			</div>
			
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message key="label.raca" /></span> <br>
					<select style="width: 200px; height: 30px;"
						data-ls-module="dropdown" class="ls-dropdown ls-pos-right"
						name="cachorro.raca.id"
						id="selecionaRaca"
						required
						>
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
					class="ls-label-text"><fmt:message key="label.proprietario" /></span> <br>
					<select style="width: 200px; height: 30px;"
					data-ls-module="dropdown" class="ls-dropdown ls-pos-right"
					name="cachorro.proprietario.id"
					id="selecionaProprietario"
					required
					>
						<option hidden="hidden"><fmt:message
								key="label.seleciona.proprietario" /></option>
						<c:forEach var="proprietario" items="${proprietarioList}">

							<c:choose>
								<c:when test="${proprietario.id eq cachorro.proprietario.id}">
									<option selected="selected" value="${proprietario.id}">${proprietario.nome}</option>
								</c:when>
								<c:otherwise>
									<option value="${proprietario.id}">${proprietario.nome}</option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
				</select>
				</label>
			</div>
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message
							key="label.data.nascimento" /></span> 
					<input type="text"
					name="cachorro.dataNascimento" value="${cachorro.dataNascimento}"
					placeholder="dd/mm/aaaa" id="date" class="datepicker" required>
				</label>
			</div>
		</div>
	</form>