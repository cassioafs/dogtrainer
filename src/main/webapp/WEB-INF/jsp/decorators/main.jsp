<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>

<!DOCTYPE">

<html class="ls-theme-light-green ls-html-nobg  ls-screen-lg">
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
					data-target="#ls-notification-curtain"><span>Notifica��es</span></a>
			</div>

			<!-- User details -->
			<div data-ls-module="dropdown" class="ls-dropdown ls-user-account">
				<a href="#" class="ls-ico-user"> C�ssio Alves </a>
				<nav class="ls-dropdown-nav ls-user-menu">
					<ul>
						<li><a href="#">Conta</a></li>
						<li><a href="#">Logout</a></li>
					</ul>
				</nav>
			</div>
		</div>

		<span class="ls-show-sidebar ls-ico-menu"></span>

		<!-- Nome do produto/marca -->
		<h1 class="ls-brand-name">
			<a class="ls-ico-earth"href="/locawebstyle/documentacao/exemplos/boilerplate">Dog Trainer</a>
		</h1>
	</div>

	<aside class="ls-sidebar">
		<nav class="ls-menu">
			<ul>
				<li><a href="#" class="fa fa-home">P�gina inicial</a></li>
				<li><a href="#" class="fa fa-github-alt"> C�es</a></li>
				<li><a href="#" class="fa fa-user">Propriet�rios</a></li>
				<li><a href="#" class="fa fa-book">Aulas</a></li>
				<li><a href="#" class="fa fa-calendar">Agenda</a></li>
				<li><a href="#" class="fa fa-hand-o-right">Comandos</a></li>
				<li><a href="#" class="fa fa-image">Galeria</a></li>
				<li><a href="#" class="fa fa-area-chart">Relat�rios</a></li>
			</ul>
		</nav>
	</aside>
	
	
	<main class="ls-main ">
	<div class="container-fluid">
	
		<decorator:body />


	</div>
	</main>

	<script type="text/javascript"
		src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
	<script
		src="http://assets.locaweb.com.br/locastyle/3.3.0/javascripts/locastyle.js"
		type="text/javascript"></script>
</body>
</html>
