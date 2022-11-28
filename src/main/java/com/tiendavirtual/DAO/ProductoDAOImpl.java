package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Cliente;
import com.tiendavirtual.modelos.Producto;
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
public class ProductoDAOImpl implements ProductoDAO{

    EntityTransaction tx=null;
    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public List<Producto> getAllProductos() {
        String selectAll="SELECT p FROM Producto p";
        Query query;
        List<Producto> listaProductos=new ArrayList<Producto>();
        query=entityManager.createQuery(selectAll);
        listaProductos=query.getResultList();
        return listaProductos;
    }

    @Override
    public void addProducto(Producto producto) {

    }

    @Override
    public void deleteProducto(Integer id) {

    }

    @Override
    public Producto findProductoById(Integer id) {
        return null;
    }

    @Override
    public void actualizarProducto(Producto producto) {

    }

    public List<Producto>getProductoBySubCat(Integer subcategoria)
    {
        String select="SELECT p FROM Producto p WHERE id_subcat= "+subcategoria;
        Query query;
        List<Producto> listaProductos=new ArrayList<Producto>();
        query=entityManager.createQuery(select);
        listaProductos=query.getResultList();

        return listaProductos;
    }
}
