package com.tiendavirtual.modelos;

import lombok.*;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="categorias")
@NoArgsConstructor
@AllArgsConstructor
@ToString
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

    @OneToMany(mappedBy = "categoria", fetch = FetchType.EAGER)
    @Getter
    @Setter
    private List<Subcategoria> subCat;

}
