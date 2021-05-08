package com.medical.soft.persistence.entity;

import javax.persistence.*;
import java.time.LocalDateTime;

@Entity
@Table(name = "historia_clinica")
public class HistoriaClinica {

    @Id
    @Column(name = "cod_hc")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer codHC;

    @Column(name = "motivo_consulta")
    private String motivoConsulta;

    @Column(name = "enfermedad_actual")
    private String enfermedadActual;

    private String analisis;
    private String diagnosticos;

    @Column(name = "fech_hc")
    private LocalDateTime fechHC;



}
