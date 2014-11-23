<h1 class="ls-title-intro">
	<fmt:message key="label.menu.proprietarios" />
</h1>
<form action="<c:url value='/proprietario/${proprietario.id }'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">

	<a href="<c:url value="/listarProprietarios"/>" class="ls-btn btnVoltar">
		<i class="fa fa-reply"></i> 
	</a>
	
	<a href="<c:url value="/proprietario/editarProprietario/${proprietario.id}"/>" class="ls-btn btnEditar">
		<i class="fa fa-edit"></i> 
	</a>
	
	<button type="submit" onclick="return confirm('Deseja realmente remover?');"
			class="ls-btn ls-btn-danger btnExcluir">
		<i class="fa fa-trash"></i>
	</button> 
	<input type="hidden" name="_method" value="DELETE">
	
</form>
<p>
<div class="ls-box">
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.nome"/>:</b>
	      	${proprietario.nome}
      	</span>
      </label>
	      	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.sobrenome"/>:</b>
	      	${proprietario.sobrenome}
      	</span>
      </label>
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.email"/>:</b>
	      	${proprietario.email}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.telefone"/>:</b>
	      	${proprietario.telefone}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.celular"/>:</b>
	      	${proprietario.celular}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.cep"/>:</b>
	      	${proprietario.cep}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.endereco"/>:</b>
	      	${proprietario.logradouro}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.numero"/>:</b>
	      	${proprietario.numero}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.complemento"/>:</b>
	      	${proprietario.complemento}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.bairro"/>:</b>
	      	${proprietario.bairro}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.cidade"/>:</b>
	      	${proprietario.cidade}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.estado"/>:</b>
	      	${proprietario.estado}
      	</span>
      </label>
 </div>