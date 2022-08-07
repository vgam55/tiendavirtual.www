package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Categoria;

import java.util.List;


public interface CategoriaDAO {
    List<Categoria> getAllCategoria();
    void addCategoria(Categoria categoria);
    void deleteCategoria(Integer id);
    Categoria findCategoriaById(Integer id);
    void actualizarCategoria(Categoria categoria);

}
