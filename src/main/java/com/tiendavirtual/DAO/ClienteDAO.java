package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Cliente;

import java.util.List;

public interface ClienteDAO {
    List<Cliente> getAllClientes();
    void addCliente(Cliente cliente);
    void deleteCliente(Integer id);
    Cliente findClienteById(Integer id);
    void actualizarCliente(Cliente cliente);
}
