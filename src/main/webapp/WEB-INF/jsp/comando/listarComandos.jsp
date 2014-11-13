<h3 class="ls-title-intro ls-ico-users"> 
	<fmt:message key="label.cadastro.comando" />
 </h3>
	<button type="submit" class="ls-btn-primary" id="incluir">
		<i class="fa fa-plus-circle"></i>
		<fmt:message key="label.padrao.incluir" />
	</button>
	
<form action="<c:url value='/comando/formComando'/>" id="incluir" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
</form>

<table class="ls-table ls-table-striped">
  <thead>
    <tr>
      <th><fmt:message key="label.codigo"/></th>
      <th><fmt:message key="label.nome"/></th>
      <th class="hidden-xs"><fmt:message key="label.descricao"/></th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach items="${comandos}" var="comando">

		<tr>
			<td><a href="<c:url value='/comando/verComando/${comando.id }'/>"># ${comando.id}</a></td>
			<td>${comando.nome}</td>
			<td>${comando.descricao}</td>
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