package com.medical.soft.persistence.entity;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "receta")
public class Receta {

    // Key compuesta
    private Integer codMedicamento;

}
