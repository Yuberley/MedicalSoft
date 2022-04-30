package com.medical.soft.domain.service;

import com.medical.soft.domain.PhysicalExam;
import com.medical.soft.domain.repository.PhysicalExamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PhysicalExamService {
    @Autowired
    private PhysicalExamRepository physicalExamRepository;

    public Optional<PhysicalExam> getPhysicalExam(int physicalExamId) {
        return physicalExamRepository.getPhysicalExam(physicalExamId);
    }

    public PhysicalExam save(PhysicalExam physicalExam) {
        return physicalExamRepository.save(physicalExam);
    }
}
