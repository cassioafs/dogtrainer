package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.UsuarioDao;
import br.com.dog.trainer.model.Adestrador;
import br.com.dog.trainer.model.Usuario;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
public class LoginController {

	@Inject private UsuarioLogado usuarioLogado;
	
	@Inject private UsuarioDao usuarioDao;
	
	@Inject private Result result;
	
	@Path("/login")
	public void login() { }
	
	
	@Post("/autenticar")
	public void autenticar(Usuario usuario){

		System.out.println("Email "+usuario.getEmail());
		System.out.println("Senha "+usuario.getSenha());
		Usuario usuarioParaAutenticar = usuarioDao.autenticar(usuario.getEmail(), usuario.getSenha());
		
		if( usuarioParaAutenticar != null ){
			
			usuarioLogado.logar(usuarioParaAutenticar);
		
			result.redirectTo(HomeController.class).home();
			
		}else{
			
			result.include("erro","Email ou Senha incorreto").redirectTo(this).login();
			
		}
	}

	@Post("/logout")
	public void logout(){
		usuarioLogado.deslogar();
		result.redirectTo(this).login();
	}
}