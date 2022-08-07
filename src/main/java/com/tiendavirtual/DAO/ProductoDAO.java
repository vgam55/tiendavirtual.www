package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Cliente;
import com.tiendavirtual.modelos.Producto;

import java.util.List;

public interface ProductoDAO {
    List<Producto> getAllProductos();
    void addProducto(Producto producto);
    void deleteProducto(Integer id);
    Producto findProductoById(Integer id);
    void actualizarProducto(Producto producto);
    List<Producto>getProductoBySubCat(String subcategoria);
}
