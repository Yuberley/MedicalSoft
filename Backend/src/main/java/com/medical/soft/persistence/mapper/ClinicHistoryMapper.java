package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.ClinicHistory;
import com.medical.soft.domain.ManagementPlan;
import com.medical.soft.persistence.entity.HistoriaClinica;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring", uses = {
        PatientMapper.class,
        PhysicalExamMapper.class,
        BackgroundMapper.class,
        SystemReviewMapper.class,
        NeurologicalExamMapper.class,
        ManagementPlan.class})
public interface ClinicHistoryMapper {
    @Mappings({
            @Mapping(source = "codHC", target = "clinicalHistoryId"),
            @Mapping(source = "motivoConsulta", target = "reasonConsultation"),
            @Mapping(source = "enfermedadActual", target = "currentIllness"),
            @Mapping(source = "analisis", target = "analysis"),
            @Mapping(source = "diagnosticos", target = "diagnostics"),
            @Mapping(source = "fechHC", target = "clinicalHistoryDate"),
            @Mapping(source = "codEF", target = "physicalExamId"),
            @Mapping(source = "codPM", target = "managementPlanId"),
            @Mapping(source = "codPaciente", target = "patientId"),
            @Mapping(source = "codEN", target = "neurologicalExamId"),
            @Mapping(source = "codRS", target = "systemReviewId"),
            @Mapping(source = "codAntecedente", target = "backgroundId"),
            @Mapping(source = "planManejo", target = "managementPlan"),
            @Mapping(source = "paciente", target = "patient"),
            @Mapping(source = "examenFisico", target = "physicalExam"),
            @Mapping(source = "antecedente", target = "background"),
            @Mapping(source = "revisionSistema", target = "systemReview"),
            @Mapping(source = "examenNeurologico", target = "neurologicalExam")
    })
    ClinicHistory toClinicHistory(HistoriaClinica historiaClinica);

    @InheritInverseConfiguration
    HistoriaClinica toHistoriaClinica(ClinicHistory clinicHistory);

}
