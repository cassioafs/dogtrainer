package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.UsuarioDao;
import br.com.dog.trainer.model.TipoUsuario;
import br.com.dog.trainer.model.Usuario;

@Controller
public class UsuarioController {

	@Inject private UsuarioDao usuarioDao;
	@Inject private Result result;
	
	@Path("/usuario/criar")
	public void formUsuario() {
		TipoUsuario[] values = TipoUsuario.values();
		result.include("tipoUsuarioList", values);
	}
	
	
	@Post("/usuario/salvar")
	public void insert(Usuario usuario){
		usuarioDao.insert(usuario);
		result.redirectTo(LoginController.class).login();
	}

}