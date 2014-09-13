package br.com.dog.trainer.sessao;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

import br.com.dog.trainer.model.Pessoa;

@SessionScoped
@Named("pessoaLogada")
public class PessoaLogada implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Pessoa pessoa;
	
	public void logar(Pessoa pessoa ){
		this.pessoa = pessoa;
	}
	
	public boolean isLogado(){
		return pessoa != null;
	}
	
	public void deslogar(){
		this.pessoa = null;
	}
	

}
