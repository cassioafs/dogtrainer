package br.com.dog.trainer.model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

@Entity
public class Cachorro {
	@Id @GeneratedValue
	private Long id;
	
	private String nome;
	private String apelido;
	private Date dataNascimento;
	
	@ManyToOne
	private Raca raca;
	
	@OneToOne
	private Adestrador adestrador;
	
	@OneToOne
	private Proprietario proprietario;
	
	public Long getId() {
		return id;
	}
	
	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public Date getDataNascimento() {
		return dataNascimento;
	}
	
	public void setDataNascimento(Date dataNascimento) {
		
		this.dataNascimento = dataNascimento;
	}
	
	public Raca getRaca() {
		return raca;
	}

	public void setRaca(Raca raca) {
		this.raca = raca;
	}

	public String getApelido() {
		return apelido;
	}

	public void setApelido(String apelido) {
		this.apelido = apelido;
	}

	public Adestrador getAdestrador() {
		return adestrador;
	}

	public void setAdestrador(Adestrador adestrador) {
		this.adestrador = adestrador;
	}

	public Proprietario getProprietario() {
		return proprietario;
	}

	public void setProprietario(Proprietario proprietario) {
		this.proprietario = proprietario;
	}
	
	public String getDataFormatada(){
		SimpleDateFormat dt = new SimpleDateFormat("dd/mm/yyyy");
		
		return dt.format(dataNascimento);
	}
}
