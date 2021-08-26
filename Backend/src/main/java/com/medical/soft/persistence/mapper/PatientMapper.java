package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Patient;
import com.medical.soft.persistence.entity.Paciente;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring", uses = {PersonMapper.class})
public interface PatientMapper {
    @Mappings({
            @Mapping(source = "codPaciente", target = "patientId"),
            @Mapping(source = "ocupacion", target = "occupation"),
            @Mapping(source = "religion", target = "religion"),
            @Mapping(source = "raza", target = "race"),
            @Mapping(source = "lateralidad", target = "laterality"),
            @Mapping(source = "informante", target = "informant"),
            @Mapping(source = "parentesco", target = "relationship"),
            @Mapping(source = "rh", target = "rh"),
            @Mapping(source = "confiabilidad", target = "reliability"),
            @Mapping(source = "habitacion", target = "room"),
            @Mapping(source = "fechIngreso", target = "admissionDate"),
            @Mapping(source = "persona", target = "person"),
            @Mapping(source = "codEPS", target = "hpeId"),
            @Mapping(source = "codST", target = "maritalStatusId"),
            @Mapping(source = "codEscolaridad", target = "scholarshipId"),
            @Mapping(source = "cc", target = "personId"),
            @Mapping(source = "codLugar", target = "placeId")
    })
    Patient toPatient(Paciente paciente);

    @InheritInverseConfiguration
    @Mappings({
            @Mapping(target = "", ignore = true),
            @Mapping(target = "", ignore = true),
            @Mapping(target = "", ignore = true)
    })
    Paciente toPaciente(Patient patient);
}
