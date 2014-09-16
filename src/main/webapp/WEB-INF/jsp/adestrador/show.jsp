<h1 class="ls-title-intro ls-ico-users"> <fmt:message key="label.cadastro.adestradors"/> </h1>
<p>
	<a href="<c:url value="/adestrador/1/edit"/>" class="ls-btn"> <fmt:message
			key="label.padrao.alterar" />
	</a>
	
	<a href="<c:url value="/usuario/form"/>" class="ls-btn">Criar usuario
	</a>
</p>

<div class="ls-box">
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.nome"/>:</b>
	      	${adestrador.nome}
      	</span>
      </label>
	      	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.sobrenome"/>:</b>
	      	${adestrador.sobrenome}
      	</span>
      </label>
      
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.idade"/>:</b>
	      	${adestrador.idade}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.telefone"/>:</b>
	      	${adestrador.telefone}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.celular"/>:</b>
	      	${adestrador.celular}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.cep"/>:</b>
	      	${adestrador.cep}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.endereco"/>:</b>
	      	${adestrador.logradouro}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.numero"/>:</b>
	      	${adestrador.numero}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.complemento"/>:</b>
	      	${adestrador.complemento}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.bairro"/>:</b>
	      	${adestrador.bairro}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.cidade"/>:</b>
	      	${adestrador.cidade}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.estado"/>:</b>
	      	${adestrador.estado}
      	</span>
      </label>
 </div>