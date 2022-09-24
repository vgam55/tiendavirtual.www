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

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id_producto")
    @Getter
    @Setter
    private Integer idProducto;

    @Getter
    @Setter
    @Column(name="referencia")
    private String referencia;

    @Getter
    @Setter
    @Column(name="nombre")
    private String nombre;

    @Getter
    @Setter
    @Column(name="peso")
    private String peso;

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
    @Column(name="vista_general")
    private String vistaGeneral;

    @Getter
    @Setter
    @Column(name="caracteristicas")
    private String caracteristicas;

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
    @Column(name="usos_sugeridos")
    private String usosSugeridos;

    @Getter
    @Setter
    @Column(name="id_subcat")
    private Integer id_subcat;
}
