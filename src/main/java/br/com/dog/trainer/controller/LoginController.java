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

		Adestrador pessoaParaAutenticar = usuarioDao.autenticar(usuario.getEmail(), usuario.getSenha());
		
		if( pessoaParaAutenticar != null ){
			
			usuarioLogado.logar(pessoaParaAutenticar);
		
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