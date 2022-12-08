package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Categoria;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.PathVariable;

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
    public Integer addCategoria(Categoria categoria) {
        int aniadido=0;
        //Query para obtener el ultimo registro añadido
        String selectAll="SELECT categoria FROM Categoria categoria WHERE id_categoria=SCOPE_IDENTITY()";
        Query query;
        Categoria categoria1=null;
        tx=entityManager.getTransaction();
        tx.begin();
             entityManager.merge(categoria);
             query=entityManager.createQuery(selectAll);
             aniadido=query.getMaxResults();
        tx.commit();
        return aniadido;
    }

    @Override
    public Integer deleteCategoria(Integer id) {
        int borrado=0;
        Categoria categoria = entityManager.find(Categoria.class, id);
        if (categoria!=null)
        {
            borrado=1;
            entityManager.remove(categoria);
        }

        return borrado;
    }

    @Override
    public Categoria findCategoriaById(@PathVariable  Integer id) {
        Categoria categoria=entityManager.find(Categoria.class,id);
        return categoria;
    }

    @Override
    public Integer actualizarCategoria(Categoria categoria)
    {
        int actualizado=0;
        tx=entityManager.getTransaction();
        tx.begin();
        Categoria categoria1=entityManager.find(Categoria.class, categoria.getId_categoria());
        if(!"".equals(categoria.getNombre()))
        {
            categoria1.setNombre(categoria.getNombre());
        }
        if(!"".equals(categoria.getDescripcion()))
        {
            categoria1.setDescripcion(categoria.getDescripcion());
        }
        if(!"".equals(categoria.getMiniatura()))
        {
            categoria.setMiniatura(categoria1.getMiniatura());
        }
        categoria1=entityManager.find(Categoria.class, categoria.getId_categoria());
        if (categoria1.equals(categoria))
        {
            actualizado=1;
        }
        tx.commit();
        return actualizado;
    }
}
