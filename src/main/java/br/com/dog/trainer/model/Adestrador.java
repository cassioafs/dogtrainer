package br.com.dog.trainer.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class Adestrador {
	
	@Id @GeneratedValue
	private Long id;
	private String tempoExperiencia;
	private int quantidadeCaesTreinados;
	@OneToOne 
	private Pessoa pessoa;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getTempoExperiencia() {
		return tempoExperiencia;
	}
	public void setTempoExperiencia(String tempoExperiencia) {
		this.tempoExperiencia = tempoExperiencia;
	}
	public int getQuantidadeCaesTreinados() {
		return quantidadeCaesTreinados;
	}
	public void setQuantidadeCaesTreinados(int quantidadeCaesTreinados) {
		this.quantidadeCaesTreinados = quantidadeCaesTreinados;
	}
	
}
