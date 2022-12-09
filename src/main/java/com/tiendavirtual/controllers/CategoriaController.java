package com.tiendavirtual.controllers;

import com.tiendavirtual.DAO.CategoriaDAO;
import com.tiendavirtual.modelos.Categoria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
public class CategoriaController {
    @Autowired
    private CategoriaDAO categoriaDAO;
    @RequestMapping(value="/categorias", method= RequestMethod.GET)
    @ResponseBody
    public List<Categoria> getAllCategorias() {
            ArrayList<Categoria> categorias1 = new ArrayList<Categoria>();
            categorias1 = (ArrayList<Categoria>) categoriaDAO.getAllCategoria();
            return categorias1;
    }

    @RequestMapping(value="/findCategoriaByIdAdmin/{id}")
    @ResponseBody
    public Categoria findCategoriaById(@PathVariable Integer id)
    {
        Categoria categoria2=categoriaDAO.findCategoriaById(id);
        return categoria2;
    }
    @RequestMapping(value="/crearCategoriAdmin/{categoria}", method=RequestMethod.POST)
    @ResponseBody
    public Integer crearCategoria(@PathVariable Categoria categoria)
    {
        int creado=categoriaDAO.addCategoria(categoria);
        return creado;
    }
    @RequestMapping(value="/categoriasAdmin", method=RequestMethod.GET)
    public String getAllCategoriasAdmin(Model model)
    {
        ArrayList<Categoria> listaCategoriasAdmin= (ArrayList<Categoria>) categoriaDAO.getAllCategoria();
        model.addAttribute("listaCategoriasAdmin", listaCategoriasAdmin);
        return "categorias";
    }

    @RequestMapping(value="/borrarCategoriaAdmin/{id}", method=RequestMethod.DELETE)
    @ResponseBody
    public Integer borrarCategoria (@PathVariable Integer id)
    {
        int borrado=categoriaDAO.deleteCategoria(id);
        return borrado;
    }

    @RequestMapping(value="/actualizarCategoriasAdmin/{categoria]", method=RequestMethod.POST)
    @ResponseBody
    public Integer actualizarCategoria(@PathVariable Categoria categoria)
    {
        int actualizado=categoriaDAO.actualizarCategoria(categoria);
        return actualizado;
    }
    }
