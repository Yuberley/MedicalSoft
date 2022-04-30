package com.medical.soft.persistence.mapper;

import com.medical.soft.domain.SystemReview;
import com.medical.soft.persistence.entity.RevisionSistema;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.Mappings;

@Mapper(componentModel = "spring")
public interface SystemReviewMapper {
    @Mappings({
            @Mapping(source = "codRS", target = "srId"),
            @Mapping(source = "nepuropsiquiatrico", target = "neuropsychiatric"),
            @Mapping(source = "mamas", target = "mammary"),
            @Mapping(source = "sintomasGenerales", target = "generalSymptoms"),
            @Mapping(source = "cabezaSentidos", target = "headSenses"),
            @Mapping(source = "linforreticular", target = "lymphoreticular"),
            @Mapping(source = "cardiopulmonar", target = "cardiopulmonary"),
            @Mapping(source = "gastrointestinal", target = "gastrointestinal"),
            @Mapping(source = "psicogenicos", target = "psychogenic"),
            @Mapping(source = "genitourinario", target = "gynecologicalUrinary"),
            @Mapping(source = "musculoesqueletico", target = "skeletalMuscle"),
            @Mapping(source = "pielFaneras", target = "pierlAppendages"),
            @Mapping(source = "endocrino", target = "endocrine"),
            @Mapping(source = "venereos", target = "venereal"),
    })
    SystemReview toSystemReview(RevisionSistema revisionSistema);

    @InheritInverseConfiguration
    @Mapping(target = "historiasClinicas", ignore = true)
    RevisionSistema toRevisionSistema(SystemReview systemReview);
}
