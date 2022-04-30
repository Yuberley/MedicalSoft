package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Hpe;
import com.medical.soft.persistence.entity.Eps;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface HpeMapper {
    @Mappings({
            @Mapping(source = "codEPS", target = "hpeId"),
            @Mapping(source = "nombreEPS", target = "hpsName")
    })
    Hpe toHpe(Eps eps);

    @InheritInverseConfiguration
    @Mapping(target = "pacientes", ignore = true)
    Eps toEps(Hpe hpe);
}
