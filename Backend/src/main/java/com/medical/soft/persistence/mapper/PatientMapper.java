package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.Patient;
import com.medical.soft.domain.Place;
import com.medical.soft.persistence.entity.Lugar;
import com.medical.soft.persistence.entity.Paciente;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

import java.util.List;

@Mapper(componentModel = "spring", uses = {PersonMapper.class,
        PlaceMapper.class,
        ScholarshipMapper.class,
        MaritalStatusMapper.class,
        HpeMapper.class})
public interface PatientMapper {
    @Mappings({
            @Mapping(source = "cc", target = "patientId"),
            @Mapping(source = "ocupacion", target = "occupation"),
            @Mapping(source = "religion", target = "religion"),
            @Mapping(source = "raza", target = "race"),
            @Mapping(source = "lateralidad", target = "laterality"),
            @Mapping(source = "informante", target = "informant"),
            @Mapping(source = "parentesco", target = "relationship"),
            @Mapping(source = "rh", target = "rh"),
            @Mapping(source = "confiabilidad", target = "reliability"),
            @Mapping(source = "fechIngreso", target = "admissionDate"),
            @Mapping(source = "persona", target = "person"),
            @Mapping(source = "codEPS", target = "hpeId"),
            @Mapping(source = "codST", target = "maritalStatusId"),
            @Mapping(source = "codEscolaridad", target = "scholarshipId"),
            @Mapping(source = "nacimiento", target = "placeBirth"),
            @Mapping(source = "recidencia", target = "placeResidence"),
            @Mapping(source = "procedencia", target = "placeOrigin"),
            @Mapping(source = "lugar", target = "place"),
            @Mapping(source = "escolaridad", target = "scholarship"),
            @Mapping(source = "estadoCivil", target = "maritalStatus"),
            @Mapping(source = "eps", target = "hpe")
    })
    Patient toPatient(Paciente paciente);

    @InheritInverseConfiguration
    @Mappings({
            @Mapping(target = "historiasClinicas", ignore = true),
            @Mapping(target = "signosVitales", ignore = true),
            @Mapping(target = "evoluciones", ignore = true)
    })
    Paciente toPaciente(Patient patient);
}
