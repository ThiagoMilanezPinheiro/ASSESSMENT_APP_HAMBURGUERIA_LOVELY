package br.edu.infnet.appatthiagomilanez.model.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import br.edu.infnet.appatthiagomilanez.model.negocio.Cliente;

@Repository
public interface IClienteRepository extends CrudRepository<Cliente, Integer> {

	void deleteById(Cliente cliente);

}
