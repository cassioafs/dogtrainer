package br.com.dog.trainer.sessao;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.dog.trainer.model.Adestrador;

@SessionScoped
@Named("pessoaLogada")
public class UsuarioLogado implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Adestrador pessoa;
	
	public void logar(Adestrador pessoa ){
		this.pessoa = pessoa;
	}
	
	public boolean isLogado(){
		return pessoa != null;
	}
	
	public void deslogar(){
		this.pessoa = null;
	}
	
	public Adestrador getPessoa(){
		return this.pessoa;
	}

}
