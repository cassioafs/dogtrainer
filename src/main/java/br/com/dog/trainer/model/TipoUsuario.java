package br.com.dog.trainer.model;

public enum TipoUsuario {

	ADESTRADOR(0, "Adestrador"), 
	PROPRIETARIO(1, "Proprietário");

	private int valor;
	private String descricao;

	private TipoUsuario(int valor, String descricao) {
		this.valor = valor;
		this.descricao = descricao;

	}

	public int getValor() {
		return valor;
	}

	public String getDescricao() {
		return descricao;
	}

}
