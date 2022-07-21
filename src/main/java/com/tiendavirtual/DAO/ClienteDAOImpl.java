package com.tiendavirtual.DAO;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import com.tiendavirtual.modelos.Cliente;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class ClienteDAOImpl implements ClienteDAO {

    EntityTransaction tx=null;
    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public List<Cliente> getAllClientes() {
        String selectAll="SELECT cliente FROM Cliente cliente";
        Query query;
        List<Cliente> listaClientes=new ArrayList<Cliente>();
        query=entityManager.createQuery(selectAll);
        listaClientes=query.getResultList();
        return listaClientes;

    }

    @Override
    public void addCliente(Cliente cliente) {
        entityManager.persist(cliente);

    }

    @Override
    public void deleteCliente(Integer id) {
        Cliente cliente;
        tx=entityManager.getTransaction();
        tx.begin();
        cliente=entityManager.find(Cliente.class, id);
        if(cliente!=null)
        {
            entityManager.remove(cliente);
        }
        tx.commit();

    }

    @Override
    public Cliente findClienteById(Integer id) {
        Cliente cliente;
        cliente=entityManager.find(Cliente.class,id);
        return cliente;
    }

    @Override
    public void actualizarCliente(Cliente cliente) {
        Cliente cliente1;
        cliente1=entityManager.find(Cliente.class, cliente.getIdCliente());
        if(cliente.getNombre()!=null)
        {
            cliente1.setNombre(cliente.getNombre());
        }

        if(cliente.getApellido1()!=null)
        {
            cliente1.setApellido1(cliente.getApellido1());
        }

        if(cliente.getApellido2()!=null)
        {
            cliente1.setApellido2(cliente.getApellido2());
        }

        if(cliente.getApellido1()!=null)
        {
            cliente1.setApellido1(cliente.getApellido1());
        }

        if(cliente.getEmail()!=null)
        {
            cliente1.setEmail(cliente.getEmail());
        }

        if(cliente.getContrasenia()!=null)
        {
            cliente1.setContrasenia(cliente.getContrasenia());
        }

        if(cliente.getDireccionFacturacion()!=null)
        {
            cliente1.setDireccionFacturacion(cliente.getDireccionFacturacion());
        }

        if(cliente.getPoblacionFacturacion()!=null)
        {
            cliente1.setPoblacionFacturacion(cliente.getPoblacionFacturacion());
        }

        if(cliente.getCpFacturacion()!=null)
        {
            cliente1.setCpFacturacion(cliente.getCpFacturacion());
        }

        cliente1.setPaisFacturacion("España");

        if(cliente.getDireccionEnvio()!=null)
        {
            cliente1.setDireccionEnvio(cliente.getDireccionEnvio());
        }

        if(cliente.getPoblacionEnvio()!=null)
        {
            cliente1.setPoblacionEnvio(cliente.getPoblacionEnvio());
        }

        if(cliente.getCpEnvio()!=null)
        {
            cliente1.setCpEnvio(cliente.getCpEnvio());
        }

        cliente1.setPaisEnvio("España");

        if(cliente.getTelefono()!=null)
        {
            cliente1.setTelefono(cliente.getTelefono());
        }

        if(cliente.getIdRol()!=null)
        {
            cliente1.setIdRol(cliente.getIdRol());
        }
    }

    public Cliente findClienteByEmail(String email)
    {
        Cliente cliente1=null;
        return cliente1;
    }

}

