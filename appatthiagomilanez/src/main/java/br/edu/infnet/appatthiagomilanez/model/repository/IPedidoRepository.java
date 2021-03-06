package br.edu.infnet.appatthiagomilanez.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatthiagomilanez.model.negocio.Pedido;

@Repository
public interface IPedidoRepository extends CrudRepository<Pedido, Integer>{
	
	@Query("from Pedido p where p.usuario.id=:id")
	List<Pedido> obterLista(Integer id, Sort by);

}
