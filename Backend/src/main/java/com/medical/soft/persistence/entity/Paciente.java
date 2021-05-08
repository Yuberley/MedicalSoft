package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name = "pacientes")
public class Paciente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cod_paciente")
    private Integer codPaciente;

    // Foreign keys
    @Column(name = "cod_eps")
    private Integer codEPS;
    @Column(name = "cod_st")
    private Integer codST;
    @Column(name = "cod_escolaridad")
    private Integer codEscolaridad;
    private Integer cc;

    // Attributes
    private String ocupacion;
    private String religion;
    private String raza;
    private String lateralidad;
    private String informante;
    private String parentesco;
    private String rh;
    private String confiabilidad;
    private String habitacion;

    // LocalDateTime is type data for date and hours
    @Column(name = "fech_ingreso")
    private LocalDateTime fechIngreso;

    public Integer getCodPaciente() {
        return codPaciente;
    }

    public void setCodPaciente(Integer codPaciente) {
        this.codPaciente = codPaciente;
    }

    public Integer getCodEPS() {
        return codEPS;
    }

    public void setCodEPS(Integer codEPS) {
        this.codEPS = codEPS;
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

    public String getHabitacion() {
        return habitacion;
    }

    public void setHabitacion(String habitacion) {
        this.habitacion = habitacion;
    }

    public LocalDateTime getFechIngreso() {
        return fechIngreso;
    }

    public void setFechIngreso(LocalDateTime fechIngreso) {
        this.fechIngreso = fechIngreso;
    }
}
