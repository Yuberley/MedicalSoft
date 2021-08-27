package com.medical.soft.domain.repository;

import com.medical.soft.domain.VitalSigns;

import java.util.List;

public interface VitalSignsRepository {
    List<VitalSigns> getVitalSigns(int patientId);
    VitalSigns save(VitalSigns vitalSigns);
}
