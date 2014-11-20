package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.ComandoDao;
import br.com.dog.trainer.model.Adestrador;
import br.com.dog.trainer.model.Comando;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
public class ComandoController {

	@Inject private ComandoDao comandoDao;
	@Inject UsuarioLogado usuarioLogado;
	@Inject private Result result;
	private Long idAdestrador;

	
	@Path("/formComando")
	public void formComando() {
		idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
	}

	@Path("/listarComandos")
	public void listarComandos() {
		idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		result.include("comandos",comandoDao.buscarTodosDoAdestrador(idAdestrador));
	}
	
	@Get("/comando/verComando/{comando.id}")
	public Comando verComando(Comando comando) {
		return comandoDao.buscarPorId(comando.getId());
	}

	@Post("/comando")
	public void insert(Comando comando) {
		
		this.setAdestrador(comando);
		
		comandoDao.inserir(comando);
		result.redirectTo(this).verComando(comando);
	}
	
	@Get("/comando/editarComando/{comando.id}")
	public Comando editarComando(Comando comando){
		return comandoDao.buscarPorId(comando.getId());
	}
	
	@Put("/comando")
	public void update(Comando comando) {
		this.setAdestrador(comando);
		comandoDao.alterar(comando);
		result.redirectTo(this).verComando(comando);
	}
	
	@Delete("/comando/{comando.id}")
	public void delete(Comando comando) {
		comandoDao.excluir(comando);
		result.redirectTo(this).listarComandos();
	}


	private void setAdestrador(Comando comando) {
		Long idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		
		Adestrador adestrador = new Adestrador();
		
		adestrador.setId(idAdestrador);
		
		comando.setAdestrador(adestrador);
	}
}
