package com.tiendavirtual.modelos;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name="subcategorias")
@NoArgsConstructor
@AllArgsConstructor
public class Subcategoria {
    @Column(name="id_subcat")
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Getter
    @Setter
    private Integer id_subcat;

    @Column(name="nombre")
    @Getter
    @Setter
    private String nombre;

    @Override
    public String toString() {
        return "Id: "+id_subcat+" Nombre: "+ nombre;
    }

    @Column(name="descripcion")
    @Getter
    @Setter
    private String descripcion;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="id_cat")
    private Categoria categoria;

}
