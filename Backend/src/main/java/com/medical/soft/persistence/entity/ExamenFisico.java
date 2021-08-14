package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "examen_fisico")
public class ExamenFisico {

    @Id
    @Column(name = "cod_ef")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEF;

    // Foreign keys
    @Column(name = "cod_sv")
    private Integer codSV;

    // Attributes
    private String torax;
    private String abdomen;
    private String extremidades;
    private String columna;

    // Relationships
    @OneToMany(mappedBy = "examenFisico")
    private List<HistoriaClinica> historiasClinicas;


    // Methods
    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodEF() {
        return codEF;
    }

    public void setCodEF(Integer codEF) {
        this.codEF = codEF;
    }

    public Integer getCodSV() {
        return codSV;
    }

    public void setCodSV(Integer codSV) {
        this.codSV = codSV;
    }

    public String getTorax() {
        return torax;
    }

    public void setTorax(String torax) {
        this.torax = torax;
    }

    public String getAbdomen() {
        return abdomen;
    }

    public void setAbdomen(String abdomen) {
        this.abdomen = abdomen;
    }

    public String getExtremidades() {
        return extremidades;
    }

    public void setExtremidades(String extremidades) {
        this.extremidades = extremidades;
    }

    public String getColumna() {
        return columna;
    }

    public void setColumna(String columna) {
        this.columna = columna;
    }
}
