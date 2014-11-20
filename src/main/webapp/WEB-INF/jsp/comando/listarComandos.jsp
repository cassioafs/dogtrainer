<h1 class="ls-title-intro">
	<fmt:message key="label.menu.comandos" />
</h1>
<form action="<c:url value='/formComando'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
	<button type="submit" class="ls-btn-primary" id="incluir" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.incluir"/></p>" data-placement="right">
		<i class="fa fa-plus-circle"></i>
	</button>
</form>

<table class="ls-table ls-table-striped">
  <thead>
    <tr>
      <th><fmt:message key="label.nome"/></th>
      <th><fmt:message key="label.descricao"/></th>
      <th><fmt:message key="label.padrao.acao"/></th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${comandos}" var="comando">

		<tr>
			<td>${comando.nome}</td>
			<td>${comando.descricao}</td>
			<td>
				<form action="<c:url value='/comando/${comando.id }'/>" method="POST">
					<a href="<c:url value='/comando/verComando/${comando.id }'/>" class="ls-btn" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.ver"/></p>" data-placement="top">
						<i class="fa fa-eye"></i>
					</a>
				
					<a href="<c:url value='/comando/editarComando/${comando.id }'/>" class="ls-btn" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.editar"/></p>" data-placement="top" >
						<i class="fa fa-edit"></i>
					</a>
					<button type="submit" onclick="return confirm('Deseja realmente remover?');"
							class="ls-btn ls-btn-danger" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.excluir"/></p>" data-placement="top">
						<i class="fa fa-trash"></i>
					</button> 
					<input type="hidden" name="_method" value="DELETE">
				</form>
			</td>
		</tr>

	</c:forEach>
</table>