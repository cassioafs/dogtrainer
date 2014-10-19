package br.com.dog.trainer.dao;

 import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.dog.trainer.model.Adestrador;

@RequestScoped
public class AdestradorDao{


	private final EntityManager entityManager;
	
	public AdestradorDao() {
		this(null);
	}

	@Inject
	public AdestradorDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Adestrador findById(Long id) {
		return entityManager.find(Adestrador.class, id);
	}
	
	public Adestrador buscarAdestradorPorId(Long idUsuario) {
			try {
				Query query = entityManager.createQuery("from Adestrador where usuario_id = ?");
				query.setParameter(1, idUsuario);
				return (Adestrador) query.getSingleResult();
				
			} catch (NoResultException e) {
				return null;
			}
	}

	public void insert(Adestrador adestrador) {
		
		entityManager.persist(adestrador);
	}
	
	public void update(Adestrador adestrador) {
		
		entityManager.merge(adestrador);
	}	

	public List<Adestrador> findAll() {
		return entityManager.createQuery("from Pessoa", Adestrador.class).getResultList();
	}

}
