package com.medical.soft.domain.repository;

import com.medical.soft.domain.PhysicalExam;

import java.util.Optional;

public interface PhysicalExamRepository {
    Optional<PhysicalExam> getPhysicalExam(int physicalExamId);
    PhysicalExam save(PhysicalExam physicalExam);
}
