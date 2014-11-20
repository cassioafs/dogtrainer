package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.brutauth.auth.annotations.CustomBrutauthRules;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.ProprietarioDao;
import br.com.dog.trainer.model.Adestrador;
import br.com.dog.trainer.model.Proprietario;
import br.com.dog.trainer.rules.LogadoRule;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
@CustomBrutauthRules(LogadoRule.class)
public class ProprietarioController {

	@Inject private ProprietarioDao proprietarioDao;
	@Inject UsuarioLogado usuarioLogado;
	@Inject private Result result;

	@Path("/formProprietario")
	public void formProprietario() { 
		
	}
	
	@Path("/listarProprietarios")
	public void listarProprietarios() {
		result.include("proprietarios",proprietarioDao.buscarTodosDoAdestrador(usuarioLogado.getUtilizadorDoSistema().getId()));
	}
	
	@Get("/proprietario/verProprietario/{proprietario.id}")
	public Proprietario verProprietario(Proprietario proprietario) {
		return proprietarioDao.buscarPorId(proprietario.getId());
	}

	@Post("/proprietario")
	public void inserir(Proprietario proprietario) {

		this.setAdestrador(proprietario);
		proprietarioDao.inserir(proprietario);
		
		result.redirectTo(this).verProprietario(proprietario);
	}

	private void setAdestrador(Proprietario proprietario) {
		Long idAdestrador = usuarioLogado.getUtilizadorDoSistema().getId();
		
		Adestrador adestrador = new Adestrador();
		
		adestrador.setId(idAdestrador);
		
		proprietario.setAdestrador(adestrador);
	}
	
	@Get("/proprietario/editarProprietario/{proprietario.id}")
	public Proprietario editarProprietario(Proprietario proprietario){
		
		return proprietarioDao.buscarPorId(proprietario.getId());
		
	}
	
	@Put("/proprietario")
	public void atualizar(Proprietario proprietario) {
		this.setAdestrador(proprietario);
		proprietarioDao.atualizar(proprietario);
		result.redirectTo(ProprietarioController.class).verProprietario(proprietario);
	}
	
	
	@Delete("/proprietario/{proprietario.id}")
	public void remove(Proprietario proprietario) {
		proprietarioDao.excluir(proprietario);
		result.redirectTo(this).listarProprietarios();
	}
}
