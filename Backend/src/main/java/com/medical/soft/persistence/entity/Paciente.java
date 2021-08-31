package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "pacientes")
public class Paciente {

    @Id
    private Integer cc;

    // Foreign keys
    @Column(name = "cod_eps")
    private Integer codEPS;
    @Column(name = "cod_st")
    private Integer codST;
    @Column(name = "cod_escolaridad")
    private Integer codEscolaridad;
    @Column(name = "cod_lugar")
    private Integer codLugar;

    // Attributes
    private String ocupacion;
    private String religion;
    private String raza;
    private String lateralidad;
    private String informante;
    private String parentesco;
    private String rh;
    private String confiabilidad;

    // LocalDateTime is type data for date and hours
    @Column(name = "fech_ingreso")
    private LocalDateTime fechIngreso;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cod_eps", insertable = false, updatable = false) // It means you can insert and update from this entity
    private Eps eps;

    @ManyToOne
    @JoinColumn(name = "cod_escolaridad", insertable = false, updatable = false)
    private Escolaridad escolaridad;

    @OneToOne
    @JoinColumn(name = "cc", insertable = false, updatable = false)
    private Persona persona;

    @ManyToOne
    @JoinColumn(name = "cod_st", insertable = false, updatable = false)
    private EstadoCivil estadoCivil;

    @ManyToOne
    @JoinColumn(name = "cod_lugar", insertable = false, updatable = false)
    private Lugar lugar;

    @OneToMany(mappedBy = "paciente")
    private List<HistoriaClinica> historiasClinicas;

    @OneToMany(mappedBy = "paciente")
    private List<SignosVitales> signosVitales;

    @OneToMany(mappedBy = "paciente")
    private List<Evolucion> evoluciones;

    // Methods
    public Integer getCodLugar() {
        return codLugar;
    }

    public void setCodLugar(Integer codLugar) {
        this.codLugar = codLugar;
    }

    public Lugar getLugar() {
        return lugar;
    }

    public void setLugar(Lugar lugar) {
        this.lugar = lugar;
    }

    public List<Evolucion> getEvoluciones() {
        return evoluciones;
    }

    public void setEvoluciones(List<Evolucion> evoluciones) {
        this.evoluciones = evoluciones;
    }

    public List<SignosVitales> getSignosVitales() {
        return signosVitales;
    }

    public void setSignosVitales(List<SignosVitales> signosVitales) {
        this.signosVitales = signosVitales;
    }

    public Integer getCodEPS() {
        return codEPS;
    }

    public void setCodEPS(Integer codEPS) {
        this.codEPS = codEPS;
    }

    public Eps getEps() {
        return eps;
    }

    public void setEps(Eps eps) {
        this.eps = eps;
    }

    public Escolaridad getEscolaridad() {
        return escolaridad;
    }

    public void setEscolaridad(Escolaridad escolaridad) {
        this.escolaridad = escolaridad;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public EstadoCivil getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(EstadoCivil estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodST() {
        return codST;
    }

    public void setCodST(Integer codST) {
        this.codST = codST;
    }

    public Integer getCodEscolaridad() {
        return codEscolaridad;
    }

    public void setCodEscolaridad(Integer codEscolaridad) {
        this.codEscolaridad = codEscolaridad;
    }

    public Integer getCc() {
        return cc;
    }

    public void setCc(Integer cc) {
        this.cc = cc;
    }

    public String getOcupacion() {
        return ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getRaza() {
        return raza;
    }

    public void setRaza(String raza) {
        this.raza = raza;
    }

    public String getLateralidad() {
        return lateralidad;
    }

    public void setLateralidad(String lateralidad) {
        this.lateralidad = lateralidad;
    }

    public String getInformante() {
        return informante;
    }

    public void setInformante(String informante) {
        this.informante = informante;
    }

    public String getParentesco() {
        return parentesco;
    }

    public void setParentesco(String parentesco) {
        this.parentesco = parentesco;
    }

    public String getRh() {
        return rh;
    }

    public void setRh(String rh) {
        this.rh = rh;
    }

    public String getConfiabilidad() {
        return confiabilidad;
    }

    public void setConfiabilidad(String confiabilidad) {
        this.confiabilidad = confiabilidad;
    }


    public LocalDateTime getFechIngreso() {
        return fechIngreso;
    }

    public void setFechIngreso(LocalDateTime fechIngreso) {
        this.fechIngreso = fechIngreso;
    }
}
