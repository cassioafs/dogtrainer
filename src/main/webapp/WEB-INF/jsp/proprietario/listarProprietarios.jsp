<h3 class="ls-title-intro ls-ico-users"> 	<fmt:message key="label.cadastro.proprietario" /> </h3>
	<button type="submit" class="ls-btn" id="incluir">
		<fmt:message key="label.padrao.incluir" />
	</button>
	
<form action="<c:url value='/formProprietario'/>" id="incluir" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
</form>

<table class="ls-table ls-table-striped">
  <thead>
    <tr>
      <th><fmt:message key="label.codigo"/></th>
      <th><fmt:message key="label.nome"/></th>
      <th class="hidden-xs"><fmt:message key="label.email"/></th>
      <th><fmt:message key="label.telefone"/></th>
      <th class="hidden-xs"><fmt:message key="label.celular"/></th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${proprietarios}" var="proprietario">

		<tr>
			<td><a href="<c:url value='/proprietario/verProprietario/${proprietario.id }'/>"># ${proprietario.id}</a></td>
			<td>${proprietario.nome}</td>
			<td>${proprietario.email}</td>
			<td>${proprietario.telefone}</td>
			<td>${proprietario.celular}</td>
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