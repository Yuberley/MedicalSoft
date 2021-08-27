package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.PhysicalExam;
import com.medical.soft.domain.VitalSigns;
import com.medical.soft.persistence.entity.SignosVitales;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring", uses = {
        PhysicalExamMapper.class,
        PatientMapper.class})
public interface VitalSingsMapper {
    @Mappings({
            @Mapping(source = "codSV", target = "vitalSignsId"),
            @Mapping(source = "presionArterial", target = "bloodPressure"),
            @Mapping(source = "frecuenciaCardiaca", target = "heartRate"),
            @Mapping(source = "frecuenciaRespiratoria", target = "breathingFrequency"),
            @Mapping(source = "saturacionOxigeno", target = "oxygenSaturation"),
            @Mapping(source = "glusemia", target = "bloodGlucose"),
            @Mapping(source = "fechSV", target = "vitalSignsDate"),
            @Mapping(source = "codPaciente", target = "patientId"),
            @Mapping(source = "codEF", target = "physicalExamId"),
            @Mapping(source = "paciente", target = "patient"),
            @Mapping(source = "examenFisico", target = "physicalExam")
    })
    VitalSigns toVitalSigns(SignosVitales signosVitales);

    @InheritInverseConfiguration
    SignosVitales toSignosVitales(VitalSigns vitalSigns);
}
