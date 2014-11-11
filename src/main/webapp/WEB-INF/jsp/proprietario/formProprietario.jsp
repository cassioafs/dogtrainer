<h1 class="ls-title-intro ls-ico-users">
	<fmt:message key="label.cadastro.proprietario" />
</h1>


<c:if test="${empty proprietario.id}">
	<input type="hidden" name="_method" value="post"/>
</c:if>

<form action="<c:url value='/proprietario'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
<p>
	<button type="submit" class="ls-btn-primary" id="salvar">
		<i class="fa fa-floppy-o"></i>
		<fmt:message key="label.padrao.salvar" />
	</button>

	<a href="<c:url value='/listarProprietarios'/>" class="ls-btn-danger">
		<i class="fa fa-close"></i>
		<fmt:message key="label.padrao.cancelar" />
	</a>
</p>

<c:if test="${not empty proprietario.id}">
	<input type="hidden" name="proprietario.id" value="${proprietario.id}"/>
	<input type="hidden" name="_method" value="put"/>
</c:if>


	<div class="ls-box">

		<div class="row">
			<label class="ls-label col-md-4"> 
				<span class="ls-label-text">
					<fmt:message key="label.nome" /> 
				</span> 
				<input type="text" name="proprietario.nome" value="${proprietario.nome}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.sobrenome" /></span> <input type="text"
				name="proprietario.sobrenome" value="${proprietario.sobrenome}">
			</label>
		</div>
		
		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.email" /></span> <input type="text"
				name="proprietario.email" value="${proprietario.email}">
			</label>
		</div>

	<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.telefone" /></span> <input type="text" name="proprietario.telefone"
				value="${proprietario.telefone}" class="ls-mask-phone8_with_ddd"
				placeholder="(99) 9999-9999">
			</label>
		</div>


		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.celular" /></span> <input type="text" name="proprietario.celular"
				value="${proprietario.celular}" class="ls-mask-phone9_with_ddd"
				placeholder="(99) 99999-9999">
			</label>
		</div>


		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.cep" /></span> <input type="text" name="proprietario.cep"
				value="${proprietario.cep}" class="ls-mask-cep" placeholder="00000-000">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-6"> <span class="ls-label-text"><fmt:message
						key="label.endereco" /></span> <input type="text"
				name="proprietario.logradouro" value="${proprietario.logradouro}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.numero" /></span> <input type="text" name="proprietario.numero"
				value="${proprietario.numero}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.complemento" /></span> <input type="text"
				name="proprietario.complemento" value="${proprietario.complemento}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.bairro" /></span> <input type="text" name="proprietario.bairro"
				value="${proprietario.bairro}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.cidade" /></span> <input type="text" name="proprietario.cidade"
				value="${proprietario.cidade}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.estado" /></span> <input type="text" name="proprietario.estado"
				value="${proprietario.estado}">
			</label>
		</div>

	</div>
</form>

<script>
	$(document).ready(function() {

		$("#salvar").click(function() {
			$("form").submit();

		});

	});
</script>
</html>

