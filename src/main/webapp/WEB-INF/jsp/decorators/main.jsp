<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE html>

<html class="ls-theme-light-green ls-screen-lg">
<head>
<title>Dog Trainer</title>

<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
			<link href="http://assets.locaweb.com.br/locastyle/3.3.0/stylesheets/locastyle.css" rel="stylesheet" type="text/css"/>
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
				<a href="#" class="ls-ico-user"> ${pessoaLogada.pessoa.nome} </a>
				<nav class="ls-dropdown-nav ls-user-menu">
					<ul>
						<li><a href="<c:url value='/pessoa/show/${pessoaLogada.pessoa.id}'/>"><fmt:message key="label.conta"/></a></li>
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
				<li><a href="#" class="fa fa-github-alt"><fmt:message key="label.menu.caes"/></a></li>
				<li><a href="#" class="fa fa-user"> <fmt:message key="label.menu.proprietarios"/></a></li>
				<li><a href="#" class="fa fa-book"><fmt:message key="label.menu.aulas"/></a></li>
				<li><a href="#" class="fa fa-calendar"><fmt:message key="label.menu.agenda"/></a></li>
				<li><a href="#" class="fa fa-hand-o-right"><fmt:message key="label.menu.comandos"/></a></li>
				<li><a href="#" class="fa fa-image"><fmt:message key="label.menu.galeria"/></a></li>
				<li><a href="#" class="fa fa-area-chart"><fmt:message key="label.menu.relatorios"/></a></li>
			</ul>
		</nav>
	</aside>
	
	
	<main class="ls-main ">
	<div class="container-fluid">
		<script type="text/javascript"
			src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
	
		<decorator:body />

	</div>
	</main>
	
		<script
			src="http://assets.locaweb.com.br/locastyle/3.3.0/javascripts/locastyle.js"
			type="text/javascript"></script>
</body>
</html>
