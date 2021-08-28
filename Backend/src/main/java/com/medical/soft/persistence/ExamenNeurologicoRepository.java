package com.medical.soft.persistence;

import com.medical.soft.domain.NeurologicalExam;
import com.medical.soft.domain.repository.NeurologicalExamRepository;
import com.medical.soft.persistence.crud.ExamenNeurologicoCrudRepository;
import com.medical.soft.persistence.entity.ExamenNeurologico;
import com.medical.soft.persistence.mapper.NeurologicalExamMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class ExamenNeurologicoRepository implements NeurologicalExamRepository {
    @Autowired
    private ExamenNeurologicoCrudRepository examenNeurologicoCrudRepository;
    @Autowired
    private NeurologicalExamMapper mapper;

    @Override
    public Optional<NeurologicalExam> getNeurologicalExam(int neurologicalExamId) {
        return examenNeurologicoCrudRepository.findById(neurologicalExamId)
                .map(examenNeurologico -> mapper.toNeurologicalExam(examenNeurologico));
    }

    @Override
    public NeurologicalExam save(NeurologicalExam neurologicalExam) {
        ExamenNeurologico examenNeurologico = mapper.toExamenNeurologico(neurologicalExam);
        return mapper.toNeurologicalExam(examenNeurologicoCrudRepository.save(examenNeurologico));
    }
}
