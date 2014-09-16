package br.com.dog.trainer.dao;

 import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.dog.trainer.model.Adestrador;

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
