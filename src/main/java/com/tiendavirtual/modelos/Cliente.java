package com.tiendavirtual.modelos;
import javax.persistence.*;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Entity
@Table(name="clientes")
@NoArgsConstructor
@AllArgsConstructor
public class Cliente {

    @Getter
    @Setter
    @Column(name="id_cliente")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer idCliente;

    @Getter
    @Setter
    @Column(name="nombre")
    private String nombre;

    @Getter
    @Setter
    @Column(name="apellido1")
    private String apellido1;

    @Getter
    @Setter
    @Column(name="apellido2")
    private String apellido2;

    @Getter
    @Setter
    @Column(name="email")
    private String email;

    @Getter
    @Setter
    @Column(name="contrasenia")
    private String contrasenia;

    @Getter
    @Setter
    @Column(name="direccion_facturacion")
    private String direccionFacturacion;

    @Getter
    @Setter
    @Column(name="poblacion_facturacion")
    private String poblacionFacturacion;

    @Getter
    @Setter
    @Column(name="cp_facturacion")
    private String cpFacturacion;

    @Getter
    @Setter
    @Column(name="pais_fssacturacion")
    private String paisFacturacion;

    @Getter
    @Setter
    @Column(name="direccion_envio")
    private String direccionEnvio;

    @Getter
    @Setter
    @Column(name="poblacion_envio")
    private String poblacionEnvio;

    @Getter
    @Setter
    @Column(name="cp_envio")
    private String cpEnvio;

    @Getter
    @Setter
    @Column(name="pais_envio")
    private String paisEnvio;

    @Getter
    @Setter
    @Column(name="telefono")
    private String telefono;

    @Getter
    @Setter
    @Column(name="id_rol")
    private Integer idRol;
}
