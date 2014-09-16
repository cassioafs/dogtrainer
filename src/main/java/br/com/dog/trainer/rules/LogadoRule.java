package br.com.dog.trainer.rules;

import javax.inject.Inject;

import br.com.caelum.brutauth.auth.annotations.HandledBy;
import br.com.caelum.brutauth.auth.rules.CustomBrutauthRule;
import br.com.dog.trainer.sessao.UsuarioLogado;

@HandledBy(LogadoHandler.class)
public class LogadoRule implements CustomBrutauthRule{
	
	@Inject UsuarioLogado usuarioLogado;

	public boolean isAllowed(){
		return usuarioLogado.isLogado();
	}

}
