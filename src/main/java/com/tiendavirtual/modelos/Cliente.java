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
    @Column(name="direccionFacturacion")
    private String direccionFacturacion;

    @Getter
    @Setter
    @Column(name="poblacionFacturacion")
    private String poblacionFacturacion;

    @Getter
    @Setter
    @Column(name="cpFacturacion")
    private String cpFacturacion;

    @Getter
    @Setter
    @Column(name="paisFacturacion")
    private String paisFacturacion;

    @Getter
    @Setter
    @Column(name="direccionEnvio")
    private String direccionEnvio;

    @Getter
    @Setter
    @Column(name="poblacionEnvio")
    private String poblacionEnvio;

    @Getter
    @Setter
    @Column(name="cpEnvio")
    private String cpEnvio;

    @Getter
    @Setter
    @Column(name="paisEnvio")
    private String paisEnvio;

    @Getter
    @Setter
    @Column(name="telefono")
    private String telefono;

    @Getter
    @Setter
    @Column(name="idRol")
    private Integer idRol;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "rol_id", nullable = false, updatable = false)
    @Getter
    @Setter
    private Rol rol;




}
