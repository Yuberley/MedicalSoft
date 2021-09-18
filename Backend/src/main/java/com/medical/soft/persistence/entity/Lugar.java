package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.List;

@Entity
@Table(name = "lugar")
public class Lugar implements Externalizable {
    @Id
    @Column(name = "cod_lugar")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codLugar;

    // Attributes
    private String lugar;

    // Relationships
    @ManyToMany(mappedBy = "lugar")
    private List<Paciente> pacientes;

    // Methods
    public String getLugar() {
        return lugar;
    }

    public void setLugar(String lugar) {
        this.lugar = lugar;
    }

    public Integer getCodLugar() {
        return codLugar;
    }

    public void setCodLugar(Integer codLugar) {
        this.codLugar = codLugar;
    }

    public List<Paciente> getPacientes() {
        return pacientes;
    }

    public void setPacientes(List<Paciente> pacientes) {
        this.pacientes = pacientes;
    }

    @Override
    public void writeExternal(ObjectOutput out) throws IOException {

    }

    @Override
    public void readExternal(ObjectInput in) throws IOException, ClassNotFoundException {

    }
}
