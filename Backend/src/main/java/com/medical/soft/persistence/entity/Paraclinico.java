package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "paraclinicos")
public class Paraclinico {

    @Id
    @Column(name = "cod_paraclinico")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codParaclinico;

    // Attributes
    @Column(name = "nomb_paraclinico")
    private String nomb_paraclinico;

    // Methods
    public Integer getCodParaclinico() {
        return codParaclinico;
    }

    public void setCodParaclinico(Integer codParaclinico) {
        this.codParaclinico = codParaclinico;
    }

    public String getNomb_paraclinico() {
        return nomb_paraclinico;
    }

    public void setNomb_paraclinico(String nomb_paraclinico) {
        this.nomb_paraclinico = nomb_paraclinico;
    }
}
