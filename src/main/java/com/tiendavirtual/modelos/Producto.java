package com.tiendavirtual.modelos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name = "productos")
@NoArgsConstructor
@AllArgsConstructor
public class Producto {
    @Getter
    @Setter
    @Column(name="idProducto")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer idProducto;

    @Getter
    @Setter
    @Column(name="referencia")
    private String referencia;

    @Getter
    @Setter
    @Column(name="referencia")
    private String nombre;

    @Getter
    @Setter
    @Column(name="precio")
    private Double precio;

    @Getter
    @Setter
    @Column(name="miniatura")
    private String miniatura;

    @Getter
    @Setter
    @Column(name="imagen")
    private String imagen;

    @Getter
    @Setter
    @Column(name="stock")
    private Integer stock;

    @Getter
    @Setter
    @Column(name="vistaGeneral")
    private String vistaGeneral;

    @Getter
    @Setter
    @Column(name="beneficios")
    private String beneficios;

    @Getter
    @Setter
    @Column(name="ingredientes")
    private String ingredientes;

    @Getter
    @Setter
    @Column(name="usosSugeridos")
    private String usosSugeridos;

}
