<h1 class="ls-title-intro">
	<fmt:message key="label.menu.comandos" />
</h1>
<form action="<c:url value='/comando/${comando.id }'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">

	<a href="<c:url value="/listarComandos"/>" class="ls-btn" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.voltar"/></p>" data-placement="top">
		<i class="fa fa-reply"></i> 
	</a>
	
	<a href="<c:url value="/comando/editarComando/${comando.id}"/>" class="ls-btn" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.alterar"/></p>" data-placement="top">
		<i class="fa fa-edit"></i> 
	</a>
	
	<button type="submit" onclick="return confirm('Deseja realmente remover?');"
			class="ls-btn ls-btn-danger" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.excluir"/></p>" data-placement="top">
		<i class="fa fa-trash"></i>
	</button> 
	<input type="hidden" name="_method" value="DELETE">
	
</form>
<p>	
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