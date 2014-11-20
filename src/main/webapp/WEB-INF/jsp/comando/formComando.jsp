<h1 class="ls-title-intro">
	<fmt:message key="label.menu.comandos" />
</h1>
<form action="<c:url value='/comando'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
	<button type="submit" class="ls-btn-primary" id="salvar" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.salvar"/></p>" data-placement="top">
		<i class="fa fa-floppy-o"></i>
	</button>

	<a href="<c:url value='/listarComandos'/>" class="ls-btn-danger" data-ls-module="popover" data-trigger="hover" data-content="<p><fmt:message key="label.padrao.cancelar"/></p>" data-placement="right">
		<i class="fa fa-close"></i>
	</a>

<c:if test="${not empty comando.id}">
	<input type="hidden" name="comando.id" value="${comando.id}"/>
	<input type="hidden" name="_method" value="put"/>
</c:if>

<c:if test="${empty comando.id}">
	<input type="hidden" name="_method" value="post"/>
</c:if>
<p>

		<div class="ls-box">

			<div class="row">
				<label class="ls-label col-md-4"> <span class="ls-label-text" ><fmt:message key="label.nome" /></span> <input
					type="text" name="comando.nome" value="${comando.nome}" style="float:left;" required="required">
				</label>
			</div>
			
			<div class="row">
				<label class="ls-label col-md-4"> <span
					class="ls-label-text"><fmt:message key="label.descricao" /></span> <input
					type="text" name="comando.descricao" value="${comando.descricao}" required="required">
				</label>
			</div>
			
		</div>
	</form>