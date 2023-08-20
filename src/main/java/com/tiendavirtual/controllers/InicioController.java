package com.tiendavirtual.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class InicioController {
    @RequestMapping(value="/", method= RequestMethod.GET)
    public String inicio()
    {
        return "index";
    }
}
