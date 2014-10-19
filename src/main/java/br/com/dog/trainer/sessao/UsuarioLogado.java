package br.com.dog.trainer.sessao;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.dog.trainer.model.UtilizadorDoSitema;

@SessionScoped
@Named("usuarioLogado")
public class UsuarioLogado implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private UtilizadorDoSitema utilizadorDoSistema;
	
	public void logar(UtilizadorDoSitema usuario ){
		this.utilizadorDoSistema = usuario;
	}
	
	public boolean isLogado(){
		return utilizadorDoSistema != null;
	}
	
	public void deslogar(){
		this.utilizadorDoSistema = null;
	}
	
	public UtilizadorDoSitema getUtilizadorDoSistema(){
		return this.utilizadorDoSistema;
	}
	
	public int getTipoDeUsuario(){
		return this.utilizadorDoSistema.getUsuario().getTipoUsuario().getValor();
	}
	
}
