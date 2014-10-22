<h1 class="ls-title-intro ls-ico-users"> <fmt:message key="label.cadastro.cachorro"/> </h1>
<p>
	<a href="<c:url value="/cachorro/${cachorro.id}/edit"/>" class="ls-btn"> <fmt:message
			key="label.padrao.alterar" />
	</a>
</p>

<div class="ls-box">
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.nome"/>:</b>
	      	${cachorro.nome}
      	</span>
      </label>
	      	  
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.idade"/>:</b>
	      	${cachorro.dataNascimento}
      	</span>
      </label>
      
      <label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.raca"/>:</b>
	      	${cachorro.raca.descricao}
      	</span>
      </label>
      
 </div>