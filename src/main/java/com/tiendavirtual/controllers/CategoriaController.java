package com.tiendavirtual.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class CategoriaController {
    @Autowired
    private CategoriaDAO categoriaDAO;
    @RequestMapping(value="/categorias", method= RequestMethod.GET)
    @ResponseBody
    public List<Categoria> getAllCategorias() {
            ObjectMapper mapper = new ObjectMapper();
            ArrayList<Categoria> categorias1 = new ArrayList<Categoria>();
            categorias1 = (ArrayList<Categoria>) categoriaDAO.getAllCategoria();
            return categorias1;
    }

    }
