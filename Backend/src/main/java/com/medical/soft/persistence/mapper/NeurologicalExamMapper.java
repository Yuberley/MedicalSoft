package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.NeurologicalExam;
import com.medical.soft.persistence.entity.ExamenNeurologico;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface NeurologicalExamMapper {
    @Mappings({
            @Mapping(source = "codEN", target = "neurologicalExamId"),
            @Mapping(source = "mental", target = "mental"),
            @Mapping(source = "paresCraneales", target = "cranialNerves"),
            @Mapping(source = "motorRaquideo", target = "spinalMotor"),
            @Mapping(source = "sensitivoRaquideo", target = "spinalSesitive"),
            @Mapping(source = "reflejos", target = "reflexes"),
            @Mapping(source = "coordinacion", target = "coordination"),
            @Mapping(source = "marcha", target = "march")
    })
    NeurologicalExam toNeurologicalExam(ExamenNeurologico examenNeurologico);

    @InheritInverseConfiguration
    @Mapping(target = "historiasClinicas", ignore = true)
    ExamenNeurologico toExamenNeurologico(NeurologicalExam neurologicalExam);
}
