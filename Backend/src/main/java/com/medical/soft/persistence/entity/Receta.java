package com.medical.soft.persistence.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "receta")
public class Receta {

    // Key compuesta
    @Id
    @Column(name = "cod_medicamentos")
    private Integer codMedicamento;

}
