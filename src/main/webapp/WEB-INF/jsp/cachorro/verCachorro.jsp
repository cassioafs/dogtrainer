<h1 class="ls-title-intro ls-ico-users"> <fmt:message key="label.cadastro.cachorro"/> </h1>
<p>
	<a href="<c:url value="/listarCachorros"/>" class="ls-btn">
		<i class="fa fa-reply"></i>
		<fmt:message key="label.padrao.voltar" />
	</a>
	
	<a href="<c:url value="/cachorro/${cachorro.id}/editarCachorro"/>" class="ls-btn-primary"> 
		<i class="fa fa-edit"></i>
		<fmt:message key="label.padrao.alterar" />
	</a>
	
	<a href="<c:url value="/cachorro/${cachorro.id}/editarCachorro"/>" class="ls-btn-danger">
		<i class="fa fa-minus-circle"></i> 
		<fmt:message key="label.padrao.excluir" />
	</a>
</p>

<div class="ls-box">
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text" ><fmt:message key="label.nome"/>:</b>
	      	${cachorro.nome} 
      	</span>
      </label>
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.idade"/>:</b>
	      	${cachorro.dataFormatada}
      	</span>
      </label>
   	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.raca"/>:</b>
	      	${cachorro.raca.descricao}
      	</span>
      </label>
   	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.proprietario"/>:</b>
	      	${cachorro.proprietario.nome}
      	</span>
      </label>
 </div>