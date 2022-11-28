package com.tiendavirtual.controllers;

import com.tiendavirtual.DAO.CategoriaDAO;
import com.tiendavirtual.DAO.ProductoDAO;
import com.tiendavirtual.modelos.Producto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;

@Controller
public class ProductoController {

    @Autowired
    private ProductoDAO productoDAO;

    @Autowired
    private CategoriaDAO categoriaDAO;

    @RequestMapping(value="/productosAdmin", method= RequestMethod.GET)
    public String getAll(Model modelo)
    {
        ArrayList<Producto> productos2=new ArrayList<Producto>();
        productos2=(ArrayList<Producto>) productoDAO.getAllProductos();
        modelo.addAttribute("productos2",productos2);
        return "productos";
    }

    @RequestMapping(value="/productosCli/{subcategoria}", method=RequestMethod.GET)
    public String getProductosbySubCat(Model model, @PathVariable Integer subcategoria)
    {
        ArrayList<Producto> listaProductos= (ArrayList<Producto>) productoDAO.getProductoBySubCat(subcategoria);
        model.addAttribute("listaProductos", listaProductos);
        return "navegacion";
    }

}
