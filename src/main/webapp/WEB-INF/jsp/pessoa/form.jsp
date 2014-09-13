<h1 class="ls-title-intro ls-ico-users">
	<fmt:message key="label.cadastro.pessoas" />
</h1>

<p>
	<button type="submit" class="ls-btn" id="salvar">
		<fmt:message key="label.padrao.salvar" />
	</button>

	<a href="<c:url value='/pessoa/show/2'/>" class="ls-btn-danger"> <fmt:message
			key="label.padrao.cancelar" />
	</a>
</p>

<c:if test="${empty pessoa.id}">
		<input type="hidden" name="_method" value="post"/>
</c:if>

<form action="<c:url value='/pessoa'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">


<c:if test="${not empty pessoa.id}">
		<input type="hidden" name="pessoa.id" value="${pessoa.id}"/>
		<input type="hidden" name="_method" value="put"/>
</c:if>
	<div class="ls-box">

		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.nome" /></span> <input type="text" name="pessoa.nome"
				value="${pessoa.nome}">
			</label>
		</div>
		
		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.email" /></span> <input type="text" name="pessoa.email"
				value="${pessoa.email}">
			</label>
		</div>
		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.senha" /></span> <input type="text" name="pessoa.senha"
				value="${pessoa.senha}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.sobrenome" /></span> <input type="text"
				name="pessoa.sobrenome" value="${pessoa.sobrenome}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.idade" /></span> <input type="text" name="pessoa.idade"
				value="${pessoa.idade}">
			</label>
		</div>
	
	<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.telefone" /></span> <input type="text" name="pessoa.telefone"
				value="${pessoa.telefone}" class="ls-mask-phone8_with_ddd"
				placeholder="(99) 9999-9999">
			</label>
		</div>


		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.celular" /></span> <input type="text" name="pessoa.celular"
				value="${pessoa.celular}" class="ls-mask-phone9_with_ddd"
				placeholder="(99) 99999-9999">
			</label>
		</div>


		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.cep" /></span> <input type="text" name="pessoa.cep"
				value="${pessoa.cep}" class="ls-mask-cep" placeholder="00000-000">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-6"> <span class="ls-label-text"><fmt:message
						key="label.endereco" /></span> <input type="text"
				name="pessoa.logradouro" value="${pessoa.logradouro}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.numero" /></span> <input type="text" name="pessoa.numero"
				value="${pessoa.numero}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.complemento" /></span> <input type="text"
				name="pessoa.complemento" value="${pessoa.complemento}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-3"> <span class="ls-label-text"><fmt:message
						key="label.bairro" /></span> <input type="text" name="pessoa.bairro"
				value="${pessoa.bairro}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.cidade" /></span> <input type="text" name="pessoa.cidade"
				value="${pessoa.cidade}">
			</label>
		</div>

		<div class="row">
			<label class="ls-label col-md-2"> <span class="ls-label-text"><fmt:message
						key="label.estado" /></span> <input type="text" name="pessoa.estado"
				value="${pessoa.estado}">
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
