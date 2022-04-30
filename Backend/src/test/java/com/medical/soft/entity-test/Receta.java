package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "receta")
public class Receta {

    // Key compuesta
    @EmbeddedId
    private RecetaPK id;

    // Relationships
    @ManyToOne
    @JoinColumn(name = "cod_pm", insertable = false, updatable = false)
    private PlanManejo planManejo;

    @ManyToOne
    @JoinColumn(name = "cod_medicamentos", insertable = false, updatable = false)
    private Medicamento medicamento;

    // Methods
    public PlanManejo getPlanManejo() {
        return planManejo;
    }

    public void setPlanManejo(PlanManejo planManejo) {
        this.planManejo = planManejo;
    }

    public Medicamento getMedicamento() {
        return medicamento;
    }

    public void setMedicamento(Medicamento medicamento) {
        this.medicamento = medicamento;
    }

    public RecetaPK getId() {
        return id;
    }

    public void setId(RecetaPK id) {
        this.id = id;
    }
}