package com.medical.soft.domain.repository;

import com.medical.soft.domain.NeurologicalExam;

import java.util.Optional;

public interface NeurologicalExamRepository {
    Optional<NeurologicalExam> getNeurologicalExam(int neurologicalExamId);
    NeurologicalExam save(NeurologicalExam neurologicalExam);
}
