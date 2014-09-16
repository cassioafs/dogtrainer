<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
			<link href="http://assets.locaweb.com.br/locastyle/3.3.0/stylesheets/locastyle.css" rel="stylesheet" type="text/css"/>
			<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"/>
<title>Insert title here</title>
</head>
<body>

<form action="<c:url value='/usuario'/>" class="ls-form ls-form-horizontal row " data-ls-module="form" method="post">
	<button type="submit" class="ls-btn" id="salvar">
			<fmt:message key="label.padrao.salvar" />
		</button>
		
		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.email" /></span> <input type="text" name="usuario.email">
			</label>
		</div>
		<div class="row">
			<label class="ls-label col-md-4"> <span class="ls-label-text"><fmt:message
						key="label.senha" /></span> <input type="text" name="usuario.senha">
			</label>
		</div>
</form>

<script type="text/javascript"
			src="http://code.jquery.com/jquery-2.0.3.min.js"></script>
			<script
			src="http://assets.locaweb.com.br/locastyle/3.3.0/javascripts/locastyle.js"
			type="text/javascript"></script>

</body>
</html>