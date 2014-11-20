package br.com.dog.trainer.dao;

 import java.util.List;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import br.com.dog.trainer.model.Proprietario;

@RequestScoped
public class ProprietarioDao{


	private final EntityManager entityManager;
	
	public ProprietarioDao() {
		this(null);
	}

	@Inject
	public ProprietarioDao(EntityManager entityManager){
		this.entityManager = entityManager;
		
	}
	public Proprietario buscarPorId(Long id) {
		return entityManager.find(Proprietario.class, id);
	}
	
	public Proprietario buscarProprietarioPorId(Long idUsuario) {
			try {
				Query query = entityManager.createQuery("from Proprietario where usuario_id = ?");
				query.setParameter(1, idUsuario);
				return (Proprietario) query.getSingleResult();
				
			} catch (NoResultException e) {
				return null;
			}
	}

	public void inserir(Proprietario proprietario) {
		
		entityManager.persist(proprietario);
	}
	
	public void atualizar(Proprietario proprietario) {
		
		entityManager.merge(proprietario);
	}
	
	public void excluir(Proprietario proprietario) {
		entityManager.remove(entityManager.merge(proprietario));
	}	

	@SuppressWarnings("unchecked")
	public List<Proprietario> buscarTodosDoAdestrador(Long idAdestrador) {
		
		Query query = entityManager.createQuery("from Proprietario where adestrador_id = ?");
		query.setParameter(1, idAdestrador);
		return (List<Proprietario>) query.getResultList();
	}

}
