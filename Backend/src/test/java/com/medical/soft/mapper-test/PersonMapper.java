package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Person;
import com.medical.soft.persistence.entity.Persona;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;
import java.util.Optional;

@Mapper(componentModel = "spring")
public interface PersonMapper {
    @Mappings({
            @Mapping(source = "cc", target = "personId"),
            @Mapping(source = "nombre", target = "firstName"),
            @Mapping(source = "apellidos", target = "lastName"),
            @Mapping(source = "edad", target = "age"),
            @Mapping(source = "sexo", target = "sex"),
            @Mapping(source = "fechNacimiento", target = "birthDate")
    })
    Person toPerson(Persona persona);
    List<Person> toPeople(List<Persona> personas);

    @InheritInverseConfiguration
    @Mapping(target = "pacientes", ignore = true)
    Persona toPersona(Person person);

}
