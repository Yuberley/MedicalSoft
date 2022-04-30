package com.medical.soft.domain.repository;

import com.medical.soft.domain.ClinicHistory;
import com.medical.soft.persistence.entity.HistoriaClinica;

import java.util.Optional;

public interface ClinicHistoryRepository {
    Optional<ClinicHistory> getClinicalHistoryPatientId(int patientId);
    ClinicHistory save(ClinicHistory clinicHistory);
}
