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

@Controller
public class UsuarioController {

	@Inject private UsuarioDao usuarioDao;
	@Inject private Result result;
	
	@Path("/criarUsuario")
	public void formularioUsuario() {
		TipoUsuario[] values = TipoUsuario.values();
		result.include("tipoUsuarioList", values);
		for (TipoUsuario tipoUsuario : values) {
			System.out.println("Tipo "+tipoUsuario.getValor() + " - "+tipoUsuario.getDescricao());
		}
		
	}
	
	
	@Post("/salvarUsuario")
	public void insert(Usuario usuario){
		System.out.println("User "+usuario.getEmail());
		System.out.println("senha "+usuario.getSenha());
		System.out.println("Tipo "+usuario.getTipoUsuario().getValor());
		usuarioDao.insert(usuario);
		result.redirectTo(HomeController.class).home();
	}

}