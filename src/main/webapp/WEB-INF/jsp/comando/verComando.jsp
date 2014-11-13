<h1 class="ls-title-intro ls-ico-users"> <fmt:message key="label.cadastro.comando"/> </h1>
<p>
	<a href="<c:url value="/listarComandos"/>" class="ls-btn">
		<i class="fa fa-reply"></i>
		<fmt:message key="label.padrao.voltar" />
	</a>
	
	<a href="<c:url value="/comando/${comando.id}/editarComando"/>" class="ls-btn-primary"> 
		<i class="fa fa-edit"></i>
		<fmt:message key="label.padrao.alterar" />
	</a>
	
	<a href="<c:url value="/comando/${comando.id}/editarComando"/>" class="ls-btn-danger">
		<i class="fa fa-minus-circle"></i> 
		<fmt:message key="label.padrao.excluir" />
	</a>
</p>

<div class="ls-box">
 	
 	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text" ><fmt:message key="label.nome"/>:</b>
	      	${comando.nome} 
      	</span>
      </label>
   	<label class="ls-label col-md-6 col-lg-8">
 		<span>
        <b class="ls-label-text"><fmt:message key="label.descricao"/>:</b>
	      	${comando.descricao}
      	</span>
      </label>
 </div>