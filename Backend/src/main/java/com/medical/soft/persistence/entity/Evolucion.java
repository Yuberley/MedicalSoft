package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDate;

@Entity
public class Evolucion {

    @Id
    @Column(name = "cod_evolucion")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codEvolucion;

    // Foraign keys
    @Column(name = "cod_paciente")
    private Integer codPaciente;
    @Column(name = "cod_pm")
    private Integer codPM;

    // Attributes
    private String subjetivo;
    private String objetivo;
    private String analisis;

    // LocalDate is data type for date, not time
    @Column(name = "fech_evolucion")
    private LocalDate fechEvolucion;

    public Integer getCodEvolucion() {
        return codEvolucion;
    }

    public void setCodEvolucion(Integer codEvolucion) {
        this.codEvolucion = codEvolucion;
    }

    public Integer getCodPaciente() {
        return codPaciente;
    }

    public void setCodPaciente(Integer codPaciente) {
        this.codPaciente = codPaciente;
    }

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }

    public String getSubjetivo() {
        return subjetivo;
    }

    public void setSubjetivo(String subjetivo) {
        this.subjetivo = subjetivo;
    }

    public String getObjetivo() {
        return objetivo;
    }

    public void setObjetivo(String objetivo) {
        this.objetivo = objetivo;
    }

    public String getAnalisis() {
        return analisis;
    }

    public void setAnalisis(String analisis) {
        this.analisis = analisis;
    }

    public LocalDate getFechEvolucion() {
        return fechEvolucion;
    }

    public void setFechEvolucion(LocalDate fechEvolucion) {
        this.fechEvolucion = fechEvolucion;
    }
}
