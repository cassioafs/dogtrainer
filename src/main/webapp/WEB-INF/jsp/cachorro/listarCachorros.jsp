<h3 class="ls-title-intro"> 
	<fmt:message key="label.menu.cachorros" />
 </h3>
	
	
<form action="<c:url value='/cachorro/formCachorro'/>" id="incluir" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
	<button type="submit" class="ls-btn-primary btnIncluir">
		<i class="fa fa-plus-circle"></i>
	</button>
</form>

<table class="ls-table ls-table-striped">
  <thead>
    <tr>
      <th><fmt:message key="label.nome"/></th>
      <th><fmt:message key="label.raca"/></th>
      <th><fmt:message key="label.proprietario"/></th>
       <th> <fmt:message key="label.padrao.acao"/></th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${cachorros}" var="cachorro">

		<tr>
			<td>${cachorro.nome}</td>
			<td>${cachorro.raca.descricao}</td>
			<td>${cachorro.proprietario.nome}</td>
			<td>
				<form action="<c:url value='/cachorro/${cachorro.id }'/>" method="POST">
					<a href="<c:url value='/cachorro/verCachorro/${cachorro.id }'/>" class="ls-btn btnVer">
						<i class="fa fa-eye"></i>
					</a>
				
					<a href="<c:url value='/cachorro/editarCachorro/${cachorro.id }'/>" class="ls-btn btnEditar">
						<i class="fa fa-edit"></i>
					</a>
					<button type="submit" onclick="return confirm('Deseja realmente remover?');"
							class="ls-btn-danger btnExcluir">
						<i class="fa fa-trash"></i>
					</button> 
					<input type="hidden" name="_method" value="DELETE">
				</form>
			</td>
		</tr>

	</c:forEach>
</table>

<script>
	$(document).ready(function() {

		$("#incluir").click(function() {
			$("form").submit();

		});

	});
</script>