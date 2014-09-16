package br.com.dog.trainer.sessao;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.dog.trainer.model.Usuario;

@SessionScoped
@Named("usuarioLogada")
public class UsuarioLogado implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Usuario usuario;
	
	public void logar(Usuario usuario ){
		this.usuario = usuario;
	}
	
	public boolean isLogado(){
		return usuario != null;
	}
	
	public void deslogar(){
		this.usuario = null;
	}
	
	public Usuario getUsuario(){
		return this.usuario;
	}

}
