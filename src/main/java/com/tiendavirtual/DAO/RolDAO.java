package com.tiendavirtual.DAO;

import com.tiendavirtual.modelos.Rol;

import java.util.List;

public interface RolDAO {
    List<Rol> getAllRoles();
    void addRol(Rol rol);
    void deleteRol(Integer id);
    Rol findRolById(Integer id);
    boolean actualizarRol(Rol rol);
}
