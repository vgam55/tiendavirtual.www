package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Categoria;

import java.util.List;


public interface CategoriaDAO {
    List<Categoria> getAllCategoria();
    Integer addCategoria(Categoria categoria);
    Integer deleteCategoria(Integer id);
    Categoria findCategoriaById(Integer id);
    Integer actualizarCategoria(Categoria categoria);

}
