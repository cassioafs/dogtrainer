<h1 class="ls-title-intro">
	<fmt:message key="label.menu.cachorros"/> 
</h1>
<form action="<c:url value='/cachorro/${cachorro.id }'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">

	<a href="<c:url value="/listarCachorros"/>" class="ls-btn btnVoltar">
		<i class="fa fa-reply"></i> 
	</a>
	
	<a href="<c:url value="/cachorro/editarCachorro/${cachorro.id}"/>" class="ls-btn btnEditar">
		<i class="fa fa-edit"></i> 
	</a>
	
	<button type="submit" onclick="return confirm('Deseja realmente remover esse projeto?');"
			class="ls-btn ls-btn-danger btnExcluir">
		<i class="fa fa-trash"></i>
	</button> 
	<input type="hidden" name="_method" value="DELETE">
	
</form>
<p>

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