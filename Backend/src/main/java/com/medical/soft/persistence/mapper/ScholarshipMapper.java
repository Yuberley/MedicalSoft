package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Scholarship;
import com.medical.soft.persistence.entity.Escolaridad;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface ScholarshipMapper {
    @Mappings({
            @Mapping(source = "codEscolaridad", target = "scholarshipId"),
            @Mapping(source = "nombreEscolaridad", target = "ScholarshipName")
    })
    Scholarship toScholarship(Escolaridad escolaridad);

    @InheritInverseConfiguration
    @Mapping(target = "pacientes", ignore = true)
    Escolaridad toEscolaridad(Scholarship scholarship);
}
