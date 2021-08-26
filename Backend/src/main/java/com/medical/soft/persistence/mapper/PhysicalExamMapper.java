package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.PhysicalExam;
import com.medical.soft.persistence.entity.ExamenFisico;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface PhysicalExamMapper {
    @Mappings({
            @Mapping(source = "codEF", target = "physicalExamId"),
            @Mapping(source = "torax", target = "chest"),
            @Mapping(source = "abdomen", target = "abdomen"),
            @Mapping(source = "extremidades", target = "extremities"),
            @Mapping(source = "columna", target = "column")
    })
    PhysicalExam toPhysicalExam(ExamenFisico examenFisico);

    @InheritInverseConfiguration
    @Mappings({
            @Mapping(target = "historiasClinicas", ignore = true),
            @Mapping(target = "signosVitales", ignore = true)
    })
    ExamenFisico toExamenFisico(PhysicalExam physicalExam);
}
