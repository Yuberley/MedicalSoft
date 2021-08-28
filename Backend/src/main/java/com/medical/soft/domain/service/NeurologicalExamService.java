package com.medical.soft.domain.service;

import com.medical.soft.domain.NeurologicalExam;
import com.medical.soft.domain.repository.NeurologicalExamRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class NeurologicalExamService {
    @Autowired
    private NeurologicalExamRepository neurologicalExamRepository;

    public Optional<NeurologicalExam> getNeurologicalExam(int neurologicalExamId) {
        return neurologicalExamRepository.getNeurologicalExam(neurologicalExamId);
    }

    public NeurologicalExam save(NeurologicalExam neurologicalExam) {
        return neurologicalExamRepository.save(neurologicalExam);
    }
}
