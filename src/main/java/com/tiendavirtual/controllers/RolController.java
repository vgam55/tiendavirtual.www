package com.tiendavirtual.controllers;

import java.util.ArrayList;

import com.tiendavirtual.DAO.RolDAO;
import com.tiendavirtual.modelos.Rol;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.ui.Model;



@Controller
public class RolController {

    @Autowired
    private RolDAO rolDAO;


    @RequestMapping(value="/rol", method=RequestMethod.GET)
    public String getAll(Model modelo)
    {
        ArrayList<Rol> roles1=new ArrayList<Rol>();
        roles1=(ArrayList<Rol>) rolDAO.getAllRoles();
        modelo.addAttribute("roles1",roles1);
        return "papeles";
    }

    @RequestMapping(value="/savenote", method=RequestMethod.POST)
    public String saveNote(Model model,
                           @RequestParam String title,
                           @RequestParam String page,
                           @RequestParam String note) {
        model.addAttribute("title",title);
        model.addAttribute("page",page);
        model.addAttribute("note",note);

        return "note_view";
    }
}
