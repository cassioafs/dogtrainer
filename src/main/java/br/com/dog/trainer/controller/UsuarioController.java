package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.model.Usuario;

@Controller
public class UsuarioController {

	@Inject Result result;

	@Path("/usuario/form")
	public void form() { }
	
	@Post("/usuario")
	public void salvar(Usuario usuario){
		
		result.redirectTo(LoginController.class).login();
		
		System.out.println("email "+usuario.getEmail());
		System.out.println("senha "+usuario.getSenha());
	}
}