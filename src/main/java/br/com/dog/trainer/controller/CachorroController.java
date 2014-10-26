package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.CachorroDao;
import br.com.dog.trainer.dao.RacaDao;
import br.com.dog.trainer.model.Cachorro;

@Controller
public class CachorroController {

	@Inject private CachorroDao cachorroDao;
	@Inject private RacaDao racaDao;
	@Inject private Result result;

	@Path("/cachorro/form")
	public void form() {
		result.include("racaCachorroList", racaDao.findAll());
	}

	@Get("/cachorro/show/{cachorro.id}")
	public Cachorro show(Cachorro cachorro) {
		return cachorroDao.findById(cachorro.getId());
	}

	@Post("/cachorro")
	public void insert(Cachorro cachorro) {
		cachorroDao.insert(cachorro);
		result.redirectTo(this).show(cachorro);
	}
	
	@Get("/cachorro/{cachorro.id}/edit")
	public Cachorro edit(Cachorro cachorro){
		result.include("racaCachorroList", racaDao.findAll());
		return cachorroDao.findById(cachorro.getId());
	}
	
	@Put("/cachorro")
	public void update(Cachorro cachorro) {
		cachorroDao.update(cachorro);
		result.redirectTo(CachorroController.class).show(cachorro);
	}

}
