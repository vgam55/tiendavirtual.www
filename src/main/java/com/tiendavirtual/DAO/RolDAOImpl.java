package com.tiendavirtual.DAO;
import com.tiendavirtual.modelos.Rol;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Query;

@Repository
@Transactional

public class RolDAOImpl implements RolDAO {

    EntityTransaction tx=null;
    @PersistenceContext
    private EntityManager entityManager;


    @Override
    public List<Rol> getAllRoles() {
        String selectAll="SELECT rol FROM Rol rol";
        Query query=null;
        List<Rol> listaRoles=new ArrayList<Rol>();
        query=entityManager.createQuery(selectAll);
        listaRoles=query.getResultList();
        return listaRoles;
    }

    @Override
    public void addRol(Rol rol) {
        entityManager.persist(rol);

    }

    @Override
    public void deleteRol(Integer id) {
        Rol rol=null;
        tx=entityManager.getTransaction();
        tx.begin();
        rol=entityManager.find(Rol.class, id);
        if(rol!=null)
        {
            entityManager.remove(rol);
        }
        tx.commit();

    }

    @Override
    public Rol findRolById(Integer id) {
        Rol rol=null;
        rol=entityManager.find(Rol.class,id);
        return rol;
    }

    @Override
    public boolean actualizarRol(Rol rol) {
        Rol rol1=null;
        rol1=entityManager.find(Rol.class, rol.getId_rol());
        rol1.setRol(rol.getRol());
        rol1.setDescripcion(rol.getDescripcion());
        return false;
    }

}

