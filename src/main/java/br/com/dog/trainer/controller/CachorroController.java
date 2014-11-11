package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.CachorroDao;
import br.com.dog.trainer.dao.ProprietarioDao;
import br.com.dog.trainer.dao.RacaDao;
import br.com.dog.trainer.model.Adestrador;
import br.com.dog.trainer.model.Cachorro;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
public class CachorroController {

	@Inject private RacaDao racaDao;
	@Inject private ProprietarioDao proprietarioDao;
	@Inject private CachorroDao cachorroDao;
	@Inject UsuarioLogado usuarioLogado;
	@Inject private Result result;
	private Long idAdestrador;

	
	@Path("/cachorro/formCachorro")
	public void formCachorro() {
		idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		result.include("racaCachorroList", racaDao.findAll());
		result.include("proprietarioList", proprietarioDao.buscarTodosDoAdestrador(idAdestrador));
	}

	@Path("/listarCachorros")
	public void listarCachorros() {
		idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		result.include("cachorros",cachorroDao.buscarTodosDoAdestrador(idAdestrador));
	}
	
	@Get("/cachorro/verCachorro/{cachorro.id}")
	public Cachorro verCachorro(Cachorro cachorro) {
		return cachorroDao.findById(cachorro.getId());
	}

	@Post("/cachorro")
	public void insert(Cachorro cachorro) {
		
		Long idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		
		Adestrador adestrador = new Adestrador();
		
		adestrador.setId(idAdestrador);
		
		cachorro.setAdestrador(adestrador);
		
		cachorroDao.insert(cachorro);
		result.redirectTo(this).verCachorro(cachorro);
	}
	
	@Get("/cachorro/{cachorro.id}/editarCachorro")
	public Cachorro editarCachorro(Cachorro cachorro){
		
		idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		result.include("racaCachorroList", racaDao.findAll());
		result.include("proprietarioList", proprietarioDao.buscarTodosDoAdestrador(idAdestrador));
		
		return cachorroDao.findById(cachorro.getId());
	}
	
	@Put("/cachorro")
	public void update(Cachorro cachorro) {
		cachorroDao.update(cachorro);
		result.redirectTo(CachorroController.class).verCachorro(cachorro);
	}

}
