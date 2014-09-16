package br.com.dog.trainer.controller;

import br.com.caelum.brutauth.auth.annotations.CustomBrutauthRules;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.dog.trainer.rules.LogadoRule;

@Controller
@CustomBrutauthRules(LogadoRule.class)
public class HomeController {

	@Path("/home")
	public void home(){}
	
}
