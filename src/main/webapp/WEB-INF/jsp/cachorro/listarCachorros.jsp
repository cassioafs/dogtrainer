<h3 class="ls-title-intro ls-ico-users"> 
	<fmt:message key="label.cadastro.cachorro" />
 </h3>
	<button type="submit" class="ls-btn-primary" id="incluir">
		<i class="fa fa-plus-circle"></i>
		<fmt:message key="label.padrao.incluir" />
	</button>
	
<form action="<c:url value='/cachorro/formCachorro'/>" id="incluir" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
</form>

<table class="ls-table ls-table-striped">
  <thead>
    <tr>
      <th><fmt:message key="label.codigo"/></th>
      <th><fmt:message key="label.nome"/></th>
      <th class="hidden-xs"><fmt:message key="label.apelido"/></th>
      <th><fmt:message key="label.raca"/></th>
      <th><fmt:message key="label.proprietario"/></th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${cachorros}" var="cachorro">

		<tr>
			<td><a href="<c:url value='/cachorro/verCachorro/${cachorro.id }'/>"># ${cachorro.id}</a></td>
			<td>${cachorro.nome}</td>
			<td>${cachorro.apelido}</td>
			<td>${cachorro.raca.descricao}</td>
			<td>${cachorro.proprietario.nome}</td>
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