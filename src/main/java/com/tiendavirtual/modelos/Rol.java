package com.tiendavirtual.modelos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "roles")
@NoArgsConstructor
@Getter
@Setter
@AllArgsConstructor
public class Rol {



    @Column(name="id_rol")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private @Getter @Setter Integer id_rol;



    @Column(name="rol")
    private @Getter @Setter String rol;

    @Getter
    @Setter
    @Column(name="descripcion")
    private String descripcion;


    @Override
    public String toString() {
        return "Id rol: "+this.id_rol+"\n"+
                "Rol: "+this.rol+"\n"+
                "Descricpción: "+this.descripcion;

    }

    @ManyToOne()
    @JoinColumn(name = "idRol")
    private Cliente cliente;

}
