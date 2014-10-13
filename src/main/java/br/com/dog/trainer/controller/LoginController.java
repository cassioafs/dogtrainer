package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.AdestradorDao;
import br.com.dog.trainer.dao.UsuarioDao;
import br.com.dog.trainer.model.Proprietario;
import br.com.dog.trainer.model.TipoUsuario;
import br.com.dog.trainer.model.Usuario;
import br.com.dog.trainer.model.UtilizadorDoSitema;
import br.com.dog.trainer.sessao.UsuarioLogado;

@Controller
public class LoginController {

	@Inject private UsuarioDao usuarioDao;
	@Inject private AdestradorDao adestradorDao;
	@Inject private UsuarioLogado usuarioLogado;
	private UtilizadorDoSitema utilizador;
	@Inject private Result result;
	
	@Path("/login")
	public void login() { }
	
	@Post("/autenticar")
	public void autenticar(Usuario usuario){

		Usuario usuarioParaAutenticar = usuarioDao.autenticar(usuario.getEmail(), usuario.getSenha()  );
		
		if( usuarioParaAutenticar != null ){
			
			if(usuarioParaAutenticar.getTipoUsuario().getValor() == TipoUsuario.ADESTRADOR.getValor() ){

				utilizador = adestradorDao.buscarAdestradorPorId(usuarioParaAutenticar.getId());
				
				if(utilizador == null){
					result.redirectTo(AdestradorController.class).form();
				}else{
					result.redirectTo(HomeController.class).home();
					
				}
					
			}else{
				utilizador = new Proprietario();
			}
			
			usuarioLogado.logar(utilizador);
			
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