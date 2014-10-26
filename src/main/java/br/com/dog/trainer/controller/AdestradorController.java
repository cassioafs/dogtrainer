package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.brutauth.auth.annotations.CustomBrutauthRules;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.AdestradorDao;
import br.com.dog.trainer.model.Adestrador;
import br.com.dog.trainer.model.Usuario;
import br.com.dog.trainer.rules.LogadoRule;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
public class AdestradorController {

	@Inject private AdestradorDao adestradorDao;
	@Inject private UsuarioLogado usuarioLogado;
	@Inject private Result result;
	

	@Path("/adestrador/formAdestrador")
	public void formAdestrador(Usuario usuario) { 
		System.out.println("============================================================");
		
		System.out.println("AdestradorController.form() NÃO ENCONTROU, VAI CRIAR UM ADESTRADOR");
		
		System.out.println("Usuario id "+usuario.getLogin());
		
		result.include("usuario", usuario);
		
	}
	
	@Get("/adestrador/show/{adestrador.id}")
	@CustomBrutauthRules(LogadoRule.class)
	public Adestrador show(Adestrador adestrador) {
		return adestradorDao.findById(adestrador.getId());
	}

	@Post("/adestrador")
	public void insert(Adestrador adestrador) {

		adestradorDao.insert(adestrador);
		usuarioLogado.logar(adestrador);
		result.redirectTo(HomeController.class).home();
	}
	
	@Get("/adestrador/{adestrador.id}/edit")
	@CustomBrutauthRules(LogadoRule.class)
	public Adestrador edit(Adestrador adestrador){
		return adestradorDao.findById(adestrador.getId());
	}
	
	@Put("/adestrador")
	@CustomBrutauthRules(LogadoRule.class)
	public void update(Adestrador adestrador) {
		adestradorDao.update(adestrador);
		result.redirectTo(AdestradorController.class).show(adestrador);
	}
	
	
}
