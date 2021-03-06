<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html>

<html class="ls-theme-green">
<head>
<title>Dog Trainer</title>

<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
			<script src="${jsDir}/jquery-2.1.1.min.js"></script>
			<link href="${cssDir}/locastyle.css" rel="stylesheet" type="text/css"/>
<script>
		
	$(document).ready(function(){
		
		var map = {
				".btnIncluir":'<fmt:message key="label.padrao.incluir"/>',
				".btnVer":'<fmt:message key="label.padrao.ver"/>',
				".btnVoltar":'<fmt:message key="label.padrao.voltar"/>',
				".btnCancelar":'<fmt:message key="label.padrao.cancelar"/>',
				".btnSalvar":'<fmt:message key="label.padrao.salvar"/>',
				".btnExcluir":'<fmt:message key="label.padrao.excluir"/>',
				".btnEditar":'<fmt:message key="label.padrao.editar"/>',
		};
		
		
		
		adcionaAtributosBotoes(map);
	});
	
	
	function adcionaAtributosBotoes(map){
		
		
		$.map( map, function( value, key ) {
			var $botao = $(key);
			$botao.addClass("ls-btn");
			$botao.attr("data-ls-module","popover");
			$botao.attr("data-trigger","hover");
			$botao.attr("data-content",'<p>'+value+'</p>');
			$botao.attr("data-placement","top");
		});
	}
	
</script>
			<link href="${cssDir}/select2.css" rel="stylesheet" type="text/css"/>
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>

			
<decorator:head />


</head>
<body>

	<div class="ls-topbar">

		<!-- Notification bar -->
		<div class="ls-notification-topbar">
			<!-- Link of support/help -->
			<div class="ls-alerts-list">
				<a href="#" class="ls-ico-bell-o" data-counter="5"
					data-ls-module="topbarCurtain"
					data-target="#ls-notification-curtain"><span><fmt:message key="label.notificaoes"/></span></a>
			</div>

			<!-- User details -->
			<div data-ls-module="dropdown" class="ls-dropdown ls-user-account">
				<a href="#" class="ls-ico-user"> </a>
				<nav class="ls-dropdown-nav ls-user-menu">
					<ul>
						<li><a href="<c:url value='/adestrador/show/2'/>"><fmt:message key="label.conta"/></a></li>
						<li><a href="<c:url value='/logout'/>"><fmt:message key="label.sair"/></a></li>
					</ul>
				</nav>
			</div>
		</div>

		<span class="ls-show-sidebar ls-ico-menu"></span>

		<!-- Nome do produto/marca -->
		<h2 class="ls-brand-name">
			<a class="ls-ico-earth"href="/locawebstyle/documentacao/exemplos/boilerplate"><fmt:message key="label.nome.app"/></a>
		</h2>
	</div>

	<aside class="ls-sidebar">
		<nav class="ls-menu">
			<ul>
				<li><a href="#" class="fa fa-home"> <fmt:message key="label.menu.pagina.inicial"/></a></li>
				<li><a href="<c:url value='/listarProprietarios'/>" class="fa fa-user"> <fmt:message key="label.menu.proprietarios"/></a></li>
				<li><a href="<c:url value='/listarCachorros'/>" class="fa fa-github-alt"><fmt:message key="label.menu.cachorros"/></a></li>
				<li><a href="<c:url value='/listarComandos'/>" class="fa fa-hand-o-right"><fmt:message key="label.menu.comandos"/></a></li>
				<li><a href="#" class="fa fa-book"><fmt:message key="label.menu.aulas"/></a></li>
				<li><a href="#" class="fa fa-calendar"><fmt:message key="label.menu.agenda"/></a></li>
				<li><a href="#" class="fa fa-image"><fmt:message key="label.menu.galeria"/></a></li>
				<li><a href="#" class="fa fa-area-chart"><fmt:message key="label.menu.relatorios"/></a></li>
			</ul>
		</nav>
	</aside>
	
	
	<main class="ls-main ">
	<div class="container-fluid">
				<decorator:body />

	</div>
	</main>
	
		<script src="${jsDir}/locastyle.js"></script>
		<script src="${jsDir}/select2.js"></script>
</body>
</html>
