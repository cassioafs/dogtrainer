<h1 class="ls-title-intro">
	<fmt:message key="label.menu.proprietarios" />
</h1>
<form action="<c:url value='/formProprietario'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
	<button type="submit" class="ls-btn-primary" id="incluir" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.incluir"/></p>" data-placement="right">
		<i class="fa fa-plus-circle"></i>
	</button>
</form>

<table class="ls-table ls-table-striped">
  <thead>
    <tr>
      <th><fmt:message key="label.nome"/></th>
      <th class="hidden-xs"><fmt:message key="label.email"/></th>
      <th class="hidden-xs"><fmt:message key="label.celular"/></th>
      <th> <fmt:message key="label.padrao.acao"/></th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${proprietarios}" var="proprietario">

		<tr>
			<td>${proprietario.nome}</td>
			<td>${proprietario.email}</td>
			<td>${proprietario.celular}</td>
			<td>
				<form action="<c:url value='/proprietario/${proprietario.id }'/>" method="POST">
					<a href="<c:url value='/proprietario/verProprietario/${proprietario.id }'/>" class="ls-btn" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.ver"/></p>" data-placement="top">
						<i class="fa fa-eye"></i>
					</a>
				
					<a href="<c:url value='/proprietario/editarProprietario/${proprietario.id }'/>" class="ls-btn" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.editar"/></p>" data-placement="top" >
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