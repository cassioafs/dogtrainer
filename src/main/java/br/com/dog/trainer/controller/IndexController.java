package br.com.dog.trainer.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.dog.trainer.dao.PessoaDao;

@Controller
public class IndexController {

	@Inject
	private PessoaDao pessoaDao;
	
	@Path("/")
	public void index(){
		
		System.out.println("=============== "+pessoaDao.buscarTodos().size());
		
		
		
	}
}
