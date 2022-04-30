package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.VitalSigns;
import com.medical.soft.persistence.entity.SignosVitales;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring", uses = {
        PhysicalExamMapper.class,
        PatientMapper.class})
public interface VitalSignsMapper {
    @Mappings({
            @Mapping(source = "codSV", target = "vitalSignsId"),
            @Mapping(source = "presionArterial", target = "bloodPressure"),
            @Mapping(source = "frecuenciaCardiaca", target = "heartRate"),
            @Mapping(source = "frecuenciaRespiratoria", target = "breathingFrequency"),
            @Mapping(source = "saturacionOxigeno", target = "oxygenSaturation"),
            @Mapping(source = "glucemia", target = "bloodGlucose"),
            @Mapping(source = "fechSV", target = "vitalSignsDate"),
            @Mapping(source = "cc", target = "patientId"),
            @Mapping(source = "codEF", target = "physicalExamId"),
            @Mapping(source = "paciente", target = "patient"),
            @Mapping(source = "examenFisico", target = "physicalExam")
    })
    VitalSigns toVitalSigns(SignosVitales signosVitales);
    List<VitalSigns> toVitalSigns (List<SignosVitales> signosVitales);

    @InheritInverseConfiguration
    SignosVitales toSignosVitales(VitalSigns vitalSigns);

}