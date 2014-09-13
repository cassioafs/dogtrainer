package br.com.dog.trainer.rules;

import javax.inject.Inject;

import br.com.caelum.brutauth.auth.handlers.RuleHandler;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.controller.LoginController;

public class LogadoHandler implements RuleHandler{

	@Inject Result result;
	
	@Override
	public void handle() {
		result.include("erro","Você precisa estar logado para acessar essa área").redirectTo(LoginController.class).login();
	}

}
