package br.com.dog.trainer.dao;

import java.io.Serializable;

import javax.enterprise.context.SessionScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.dog.trainer.model.Adestrador;

public class UsuarioDao {

	private final EntityManager entityManager;
	
	public UsuarioDao() {
		this(null);
	}
	
	@Inject
	public UsuarioDao(EntityManager entityManager) {
		this.entityManager = entityManager;
	}
	

	public Adestrador autenticar ( String email, String senha ){
		try {
			Query query = entityManager.createQuery("from Usuario where email = ? and senha = ?");
			query.setParameter(1, email);
			query.setParameter(2, senha);
			return (Adestrador) query.getSingleResult();
			
		} catch (NoResultException e) {
			return null;
		}
	}
}