package com.medical.soft.domain.repository;

import com.medical.soft.domain.Evolution;

import java.util.List;
import java.util.Optional;

public interface EvolutionRepository {
    Optional<Evolution> getEvolutionByLastDate(int patientId);
    List<Evolution> getAllEvolutions(int patientId);
    Evolution save(Evolution evolution);
}

