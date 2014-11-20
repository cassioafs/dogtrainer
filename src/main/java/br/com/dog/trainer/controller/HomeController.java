package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
public class HomeController {

	@Inject UsuarioLogado usuarioLogado;
	
	@Path("/home")
	public void home(){
		
		System.out.println("====================================novo==============================");
		
		System.out.println("Id "+usuarioLogado.getUtilizadorDoSistema().getNome());
		System.out.println("Nome "+usuarioLogado.getUtilizadorDoSistema().getId());
		
		System.out.println("==================================================================");
		
	}
	
}
