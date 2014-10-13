package br.com.dog.trainer.dao;

import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.dog.trainer.model.Usuario;

public class UsuarioDao {

	private final EntityManager entityManager;
	
	public UsuarioDao() {
		this(null);
	}
	
	@Inject
	public UsuarioDao(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	

	public Usuario autenticar ( String email, String senha ){
		try {
			Query query = entityManager.createQuery("from Usuario where email = ? and senha = ?");
			query.setParameter(1, email);
			query.setParameter(2, senha);
			Usuario usuario = (Usuario) query.getSingleResult();
			System.out.println("UsuarioDao.autenticar() "+email);
			System.out.println("UsuarioDao.autenticar() "+senha);
			System.out.println(query);
			return usuario;
			
		} catch (NoResultException e) {
			return null;
		}
	}
	
	public void insert(Usuario usuario){ 
		entityManager.persist(usuario);
	}
}