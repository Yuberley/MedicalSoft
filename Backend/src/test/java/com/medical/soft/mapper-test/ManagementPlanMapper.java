package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.ManagementPlan;
import com.medical.soft.persistence.entity.PlanManejo;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface ManagementPlanMapper {
    @Mappings({
            @Mapping(source = "codPM", target = "mpId"),
            @Mapping(source = "descripcion", target = "description"),
            @Mapping(source = "codEvolucion", target = "evolutionId")
    })
    ManagementPlan toManagementPlan(PlanManejo planManejo);

    @InheritInverseConfiguration
    PlanManejo toPlanManejo(ManagementPlan managementPlan);
}
