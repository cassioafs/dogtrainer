package br.com.dog.trainer.sessao;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.dog.trainer.model.UtilizadorDoSitema;

@SessionScoped
@Named("usuarioLogado")
public class UsuarioLogado implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private UtilizadorDoSitema usuario;
	
	public void logar(UtilizadorDoSitema usuario ){
		this.usuario = usuario;
	}
	
	public boolean isLogado(){
		return usuario != null;
	}
	
	public void deslogar(){
		this.usuario = null;
	}
	
	public UtilizadorDoSitema getUsuarioLogado(){
		return this.usuario;
	}
	
}
