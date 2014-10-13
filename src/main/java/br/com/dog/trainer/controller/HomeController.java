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
		
		System.out.println("==================================================================");
		
		System.out.println("Id "+usuarioLogado.getUsuarioLogado().getNome());
		System.out.println("Nome "+usuarioLogado.getUsuarioLogado().getId());
		
		System.out.println("==================================================================");
		
	}
	
}
