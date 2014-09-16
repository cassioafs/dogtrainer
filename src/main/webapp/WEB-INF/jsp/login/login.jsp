<!DOCTYPE html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
  <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
  <title>Tela de Login</title>
  <meta name="description" content="">
  <meta name="keywords" content="">
			<link href="http://assets.locaweb.com.br/locastyle/3.3.0/stylesheets/locastyle.css" rel="stylesheet" type="text/css"/>
</head>
<body>

<div class="ls-login-parent">
  <div class="ls-login-inner">

    <div class="ls-login-box">
    <h3 class="ls-brand-name">
			<a class="ls-ico-earth"href="/locawebstyle/documentacao/exemplos/boilerplate"><fmt:message key="label.nome.app"/></a>
		</h3>
		<!-- 
      <h1 class="ls-login-logo"><img title="Logo login" src="../../../assets/images/locastyle/logo-locaweb.jpg" />
      </h1> -->
      <form role="form" class="ls-form ls-login-form" action="<c:url value="/autenticar"/>" method="post">
        <fieldset>

          <label class="ls-label">
            <input class="ls-login-bg-user ls-field-lg" type="text" name="usuario.email" placeholder="<fmt:message key="label.email"/>" required autofocus>
          </label>

          <label class="ls-label">
            <b class="ls-label-text ls-hidden-accessible"><fmt:message key="label.senha"/></b>
            <input class="ls-login-bg-password ls-field-lg" type="password" name="usuario.senha" placeholder="<fmt:message key="label.senha"/>" required >
          </label>

          <p><a class="ls-login-forgot" href="forgot-password"><fmt:message key="label.esqueci.senha"/></a></p>

          <input type="submit" value="Entrar" class="ls-btn-primary ls-btn-block ls-btn-lg">
          <p class="ls-txt-center ls-login-signup"> <a href="/pessoa/form" ><fmt:message key="label.cadastre"/></a></p>

        </fieldset>
      </form>
    </div>

  </div>
</div>


</body>

<script>
	<c:if test="${not empty erro}">
		alert("${erro}");
	</c:if>
	
</script>
</html>
