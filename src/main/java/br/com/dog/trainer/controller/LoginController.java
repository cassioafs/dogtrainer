package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.PessoaDao;
import br.com.dog.trainer.model.Pessoa;
import br.com.dog.trainer.sessao.PessoaLogada;

@Controller
public class LoginController {

	@Inject private PessoaLogada usuarioLogado;
	
	@Inject private PessoaDao pessoaDao;
	
	@Inject private Result result;
	
	@Path("/login")
	public void login() { }
	
	
	@Post("/autenticar")
	public void autenticar(Pessoa pessoa){
		System.out.println("======================== email "+pessoa.getEmail());
		System.out.println("======================== senha "+pessoa.getSenha());
		Pessoa pessoaParaAutenticar = pessoaDao.autenticar(pessoa.getEmail(), pessoa.getSenha());
		
		if( pessoaParaAutenticar != null ){
			
			usuarioLogado.logar(pessoaParaAutenticar);
		
			result.redirectTo(PessoaController.class).form();
			
		}else{
			
			result.include("erro","Email ou Senha incorreto").redirectTo(this).login();
			
		}
	}
	
	public void logout(){
		usuarioLogado.deslogar();
		result.redirectTo(this).login();
	}
}