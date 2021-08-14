package com.medical.soft.persistence.entity;

import javax.persistence.*;

@Entity
@Table(name = "receta")
public class Receta {

    // Key compuesta
    @EmbeddedId
    private RecetaPK id;

    public RecetaPK getId() {
        return id;
    }

    public void setId(RecetaPK id) {
        this.id = id;
    }
}