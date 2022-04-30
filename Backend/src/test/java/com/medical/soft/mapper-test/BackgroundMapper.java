package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Background;
import com.medical.soft.persistence.entity.Antecedente;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface BackgroundMapper {
    @Mappings({
            @Mapping(source = "codAntecedente", target = "backgroundId"),
            @Mapping(source = "psicososiales", target = "psychosocial"),
            @Mapping(source = "familiares", target = "relatives"),
            @Mapping(source = "quirurgicos", target = "surgical"),
            @Mapping(source = "hospitalarios", target = "hospitable"),
            @Mapping(source = "patologicos", target = "pathological"),
            @Mapping(source = "farmacologicos", target = "pharmacological"),
            @Mapping(source = "toxicoAlergicos", target = "toxicAllergies"),
            @Mapping(source = "traumaticos", target = "traumatic"),
            @Mapping(source = "ginecoObstetrico", target = "obstetricGynecology"),
            @Mapping(source = "inmunologicos", target = "immunological"),
            @Mapping(source = "psiquiatricos", target = "psychiatric"),
    })
    Background toBackground(Antecedente antecedente);

    @InheritInverseConfiguration
    @Mapping(target = "historiasClinicas", ignore = true)
    Antecedente toAntecedente(Background background);
}
