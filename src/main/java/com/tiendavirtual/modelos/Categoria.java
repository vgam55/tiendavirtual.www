package com.tiendavirtual.modelos;

import lombok.*;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name="categorias")
@NoArgsConstructor
@AllArgsConstructor

public class Categoria {
    @Column(name="id_categoria", insertable=false, updatable=false )
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Getter
    @Setter
    private Integer id_categoria;

    @Column(name="nombre")
    @Getter
    @Setter
    private String nombre;

    @Column(name="descripcion")
    @Getter
    @Setter
    private String descripcion;

    @Column(name="miniatura")
    @Getter
    @Setter
    private String miniatura;

    @Override
    public String toString() {
        return "nombre: "+nombre+", subcategoria: "+subCat;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Categoria)) return false;
        Categoria categoria = (Categoria) o;
        return Objects.equals(id_categoria, categoria.id_categoria) && Objects.equals(nombre, categoria.nombre) && Objects.equals(descripcion, categoria.descripcion) && Objects.equals(miniatura, categoria.miniatura);
    }


    @OneToMany(mappedBy = "categoria", fetch = FetchType.EAGER)
    @Getter
    @Setter
    private List<Subcategoria> subCat;

}
