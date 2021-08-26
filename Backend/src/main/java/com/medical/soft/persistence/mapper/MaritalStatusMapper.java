package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.MaritalStatus;
import com.medical.soft.persistence.entity.EstadoCivil;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface MaritalStatusMapper {
    @Mappings({
            @Mapping(source = "codST", target = "maritalStatusId"),
            @Mapping(source = "nombreST", target = "maritalStatusName")
    })
    MaritalStatus toMaritalStatus(EstadoCivil estadoCivil);

    @InheritInverseConfiguration
    @Mapping(target = "pacientes", ignore = true)
    EstadoCivil toEstadoCivil(MaritalStatus maritalStatus);
}
