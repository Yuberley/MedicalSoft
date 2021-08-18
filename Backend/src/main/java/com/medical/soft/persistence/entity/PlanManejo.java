package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "plan_manejo")
public class PlanManejo {

    @Id
    @Column(name = "cod_pm")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codPM;

    // Attributes
    private String descripcion;
    @Column(name = "cod_evolucion")
    private Integer codEvolucion;

    // Relationships
    @OneToMany(mappedBy = "planManejo")
    private List<HistoriaClinica> historiasClinicas;

    @OneToMany(mappedBy = "planManejo")
    private List<Evolucion> evoluciones;

    @OneToMany(mappedBy = "planManejo")
    private List<Solicita> solicitudes;

    @OneToMany(mappedBy = "planManejo")
    private List<Receta> recetas;

    // Methods
    public List<Receta> getRecetas() {
        return recetas;
    }

    public void setRecetas(List<Receta> recetas) {
        this.recetas = recetas;
    }

    public List<Solicita> getSolicitudes() {
        return solicitudes;
    }

    public void setSolicitudes(List<Solicita> solicitudes) {
        this.solicitudes = solicitudes;
    }

    public List<Evolucion> getEvoluciones() {
        return evoluciones;
    }

    public void setEvoluciones(List<Evolucion> evoluciones) {
        this.evoluciones = evoluciones;
    }

    public List<HistoriaClinica> getHistoriasClinicas() {
        return historiasClinicas;
    }

    public void setHistoriasClinicas(List<HistoriaClinica> historiasClinicas) {
        this.historiasClinicas = historiasClinicas;
    }

    public Integer getCodPM() {
        return codPM;
    }

    public void setCodPM(Integer codPM) {
        this.codPM = codPM;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Integer getCodEvolucion() {
        return codEvolucion;
    }

    public void setCodEvolucion(Integer codEvolucion) {
        this.codEvolucion = codEvolucion;
    }
}
