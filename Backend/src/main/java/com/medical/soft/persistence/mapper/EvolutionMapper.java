package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Evolution;
import com.medical.soft.domain.ManagementPlan;
import com.medical.soft.persistence.entity.Evolucion;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring", uses = {
        PatientMapper.class,
        ManagementPlanMapper.class
})
public interface EvolutionMapper {

    @Mappings({
            @Mapping(source = "codEvolucion", target = "evolutionId"),
            @Mapping(source = "subjetivo", target = "subjective"),
            @Mapping(source = "objetivo", target = "objetive"),
            @Mapping(source = "analisis", target = "analysis"),
            @Mapping(source = "cc", target = "patientId"),
            @Mapping(source = "codPM", target = "managementPlanId"),
            @Mapping(source = "paciente", target = "patient"),
            @Mapping(source = "planManejo", target = "managementPlan")
    })
    Evolution toEvolution(Evolucion evolucion);
    List<Evolution> toEvolutions(List<Evolucion> evolucion);

    @InheritInverseConfiguration
    Evolucion toEvolucion(Evolution evolution);
}
