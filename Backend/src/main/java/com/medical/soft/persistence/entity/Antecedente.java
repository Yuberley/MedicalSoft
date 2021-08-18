package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "antecedentes")
public class Antecedente {

    @Id
    @Column(name ="cod_antecedente")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codAntecedente;

    // Attributes
    private String psicososiales;
    private String familiares;
    private String quirurgicos;
    private String hospitalarios;
    private String patologicos;
    private String farmacologicos;
    @Column(name = "toxico_alergicos")
    private String toxicoAlergicos;
    private String traumaticos;
    @Column(name = "gineco_obstetrico")
    private String ginecoObstetrico;
    private String inmunologicos;
    private String psiquiatricos;

    // Relationships
    @OneToMany(mappedBy = "antecedente")
    private List<HistoriaClinica> historiasClinicas;

    // Methods
    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodAntecedente() {
        return codAntecedente;
    }

    public void setCodAntecedente(Integer codAntecedente) {
        this.codAntecedente = codAntecedente;
    }

    public String getPsicososiales() {
        return psicososiales;
    }

    public void setPsicososiales(String psicososiales) {
        this.psicososiales = psicososiales;
    }

    public String getFamiliares() {
        return familiares;
    }

    public void setFamiliares(String familiares) {
        this.familiares = familiares;
    }

    public String getQuirurgicos() {
        return quirurgicos;
    }

    public void setQuirurgicos(String quirurgicos) {
        this.quirurgicos = quirurgicos;
    }

    public String getHospitalarios() {
        return hospitalarios;
    }

    public void setHospitalarios(String hospitalarios) {
        this.hospitalarios = hospitalarios;
    }

    public String getPatologicos() {
        return patologicos;
    }

    public void setPatologicos(String patologicos) {
        this.patologicos = patologicos;
    }

    public String getFarmacologicos() {
        return farmacologicos;
    }

    public void setFarmacologicos(String farmacologicos) {
        this.farmacologicos = farmacologicos;
    }

    public String getToxicoAlergicos() {
        return toxicoAlergicos;
    }

    public void setToxicoAlergicos(String toxicoAlergicos) {
        this.toxicoAlergicos = toxicoAlergicos;
    }

    public String getTraumaticos() {
        return traumaticos;
    }

    public void setTraumaticos(String traumaticos) {
        this.traumaticos = traumaticos;
    }

    public String getGinecoObstetrico() {
        return ginecoObstetrico;
    }

    public void setGinecoObstetrico(String ginecoObstetrico) {
        this.ginecoObstetrico = ginecoObstetrico;
    }

    public String getInmunologicos() {
        return inmunologicos;
    }

    public void setInmunologicos(String inmunologicos) {
        this.inmunologicos = inmunologicos;
    }

    public String getPsiquiatricos() {
        return psiquiatricos;
    }

    public void setPsiquiatricos(String psiquiatricos) {
        this.psiquiatricos = psiquiatricos;
    }
}
