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
import br.com.dog.trainer.dao.UsuarioDao;
import br.com.dog.trainer.model.Adestrador;
import br.com.dog.trainer.model.Usuario;
import br.com.dog.trainer.rules.LogadoRule;

@Controller
public class AdestradorController {

	@Inject private AdestradorDao adestradorDao;
	@Inject private UsuarioDao usuarioDao;
	@Inject private Result result;

	@Path("/adestrador/form")
	public void form() { }

	@Get("/adestrador/show/{adestrador.id}")
	@CustomBrutauthRules(LogadoRule.class)
	public Adestrador show(Adestrador adestrador) {
		return adestradorDao.findById(adestrador.getId());
	}

	@Post("/adestrador")
	public void insert(Adestrador adestrador) {
	
		Usuario usuario = adestrador.getUsuario();
		usuarioDao.insert(usuario);
		adestradorDao.insert(adestrador);
		result.redirectTo(LoginController.class).login();
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
