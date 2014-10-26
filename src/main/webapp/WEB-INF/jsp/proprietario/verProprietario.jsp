<h1 class="ls-title-intro ls-ico-users"> 	<fmt:message key="label.cadastro.proprietario" /> </h1>
<p>
	<a href="<c:url value="/proprietario/${proprietario.id}/editarProprietario"/>" class="ls-btn"> <fmt:message
			key="label.padrao.alterar" />
	</a>
	<a href="<c:url value="/listarProprietarios"/>" class="ls-btn"> <fmt:message
			key="label.padrao.voltar" />
	</a>
</p>

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