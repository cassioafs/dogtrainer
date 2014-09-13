<h1 class="ls-title-intro ls-ico-users"> <fmt:message key="label.cadastro.pessoas"/> </h1>
<p>
	<a href="<c:url value="/pessoa/${pessoa.id}/edit"/>" class="ls-btn"> <fmt:message
			key="label.padrao.alterar" />
	</a>
</p>

<p>
	<a href="<c:url value="/usuario/form"/>" class="ls-btn"> <fmt:message
			key="label.padrao.criar.usuario" />
	</a>
</p>

<div class="ls-box">
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.nome"/>:</b>
	      	${pessoa.nome}
      	</span>
      </label>
	      	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.email"/>:</b>
	      	${pessoa.email}
      	</span>
      </label>
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.senha"/>:</b>
	      	${pessoa.senha}
      	</span>
      </label>

 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.sobrenome"/>:</b>
	      	${pessoa.sobrenome}
      	</span>
      </label>
      
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.idade"/>:</b>
	      	${pessoa.idade}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.telefone"/>:</b>
	      	${pessoa.telefone}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.celular"/>:</b>
	      	${pessoa.celular}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.cep"/>:</b>
	      	${pessoa.cep}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.endereco"/>:</b>
	      	${pessoa.logradouro}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.numero"/>:</b>
	      	${pessoa.numero}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.complemento"/>:</b>
	      	${pessoa.complemento}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.bairro"/>:</b>
	      	${pessoa.bairro}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.cidade"/>:</b>
	      	${pessoa.cidade}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.estado"/>:</b>
	      	${pessoa.estado}
      	</span>
      </label>
 </div>