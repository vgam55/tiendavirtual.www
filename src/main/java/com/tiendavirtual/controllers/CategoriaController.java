package com.tiendavirtual.controllers;

import com.tiendavirtual.DAO.CategoriaDAO;
import com.tiendavirtual.DAO.RolDAO;
import com.tiendavirtual.modelos.Categoria;
import com.tiendavirtual.modelos.Rol;
import com.tiendavirtual.modelos.Subcategoria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.ArrayList;

@Controller
public class CategoriaController {
    @Autowired
    private CategoriaDAO categoriaDAO;
    @RequestMapping(value="/categorias", method= RequestMethod.GET)
    public String getAll(Model modelo)
    {
        ArrayList<Categoria> categorias1=new ArrayList<Categoria>();
        ArrayList<Subcategoria> subcategorias=new ArrayList<Subcategoria>();
        categorias1=(ArrayList<Categoria>) categoriaDAO.getAllCategoria();

        modelo.addAttribute("categorias1",categorias1);
        return "Prueba_cat_subcat";
    }

}
