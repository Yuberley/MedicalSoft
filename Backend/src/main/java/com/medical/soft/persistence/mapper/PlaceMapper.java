package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Place;
import com.medical.soft.persistence.entity.Lugar;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface PlaceMapper {
    @Mappings({
            @Mapping(source = "codLugar", target = "placeId"),
            @Mapping(source = "nacimiento", target = "PlaceBirth"),
            @Mapping(source = "recidencia", target = "PlaceResidence"),
            @Mapping(source = "procedencia", target = "PlaceOrigin")
    })
    Place toPlace(Lugar lugar);

    @InheritInverseConfiguration
    @Mapping(target = "pacientes", ignore = true)
    Lugar toLugar(Place place);
}
