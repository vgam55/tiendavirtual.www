package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Categoria;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;
@Repository
@Transactional
public class CategoriaDAOImpl implements CategoriaDAO {
    EntityTransaction tx=null;
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Categoria> getAllCategoria() {
        String selectAll="SELECT categoria FROM Categoria categoria";
        Query query;
        List<Categoria> listaCategorias=new ArrayList<Categoria>();
        query=entityManager.createQuery(selectAll);
        listaCategorias=query.getResultList();
        return listaCategorias;
    }

    @Override
    public void addCategoria(Categoria categoria) {

    }

    @Override
    public void deleteCategoria(Integer id) {

    }

    @Override
    public Categoria findCategoriaById(Integer id) {
        return null;
    }

    @Override
    public void actualizarCategoria(Categoria categoria) {

    }
}
