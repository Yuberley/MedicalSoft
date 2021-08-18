package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Person;
import com.medical.soft.persistence.entity.Persona;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface PersonMapper {
    @Mappings({
            @Mapping(source = "cc", target = "cc"),
            @Mapping(source = "nombre", target = "firstName"),
            @Mapping(source = "apellidos", target = "lastName"),
            @Mapping(source = "edad", target = "age"),
            @Mapping(source = "sexo", target = "sex"),
            @Mapping(source = "fechNacimiento", target = "birthDate")
    })
    Person toPerson(Persona persona);

    @InheritInverseConfiguration
    @Mapping(target = "pacientes", ignore = true)
    Persona toPersona(Person person);
}
