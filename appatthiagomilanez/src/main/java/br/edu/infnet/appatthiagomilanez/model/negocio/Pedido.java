package br.edu.infnet.appatthiagomilanez.model.negocio;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TPedido")
public class Pedido {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String descricao;
	private String combo;
	private String porcao;
	@OneToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "idCliente")
	private Cliente cliente;
	private String telefone;
	
	
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;
		
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
		
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public String getCombo() {
		return combo;
	}
	public void setCombo(String combo) {
		this.combo = combo;
	}
	public String getPorcao() {
		return porcao;
	}
	public void setPorcao(String porcao) {
		this.porcao = porcao;
	}
	public String getTelefone() {
		return telefone;
	}
	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	
	
}
