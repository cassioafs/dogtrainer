package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.brutauth.auth.annotations.CustomBrutauthRules;
import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Put;
import br.com.caelum.vraptor.Result;
import br.com.dog.trainer.dao.PessoaDao;
import br.com.dog.trainer.model.Pessoa;
import br.com.dog.trainer.rules.LogadoRule;

@Controller
public class PessoaController {

	@Inject private PessoaDao pessoaDao;
	@Inject private Result result;

	@CustomBrutauthRules(LogadoRule.class)
	@Path("/pessoa/form")
	public void form() { }

	@Get("/pessoa/show/{pessoa.id}")
	public Pessoa show(Pessoa pessoa) {
		return pessoaDao.findById(pessoa.getId());

	}

	@Post("/pessoa")
	public void insert(Pessoa pessoa) {
		pessoaDao.insert(pessoa);
		
		result.redirectTo(PessoaController.class).show(pessoa);
	}
	
	@Get("/pessoa/{pessoa.id}/edit")
	public Pessoa edit(Pessoa pessoa){
		return pessoaDao.findById(pessoa.getId());
	}
	
	@Put("/pessoa")
	public void update(Pessoa pessoa) {
		pessoaDao.update(pessoa);
		result.redirectTo(PessoaController.class).show(pessoa);
	}
	
	
}
