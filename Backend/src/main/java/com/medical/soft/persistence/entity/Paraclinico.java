package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

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

    // Relationships
    @OneToMany(mappedBy = "paraclinico")
    private List<Solicita> solicitudes;

    // Methods
    public List<Solicita> getSolicitudes() {
        return solicitudes;
    }

    public void setSolicitudes(List<Solicita> solicitudes) {
        this.solicitudes = solicitudes;
    }

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
