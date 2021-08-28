package com.medical.soft.persistence;

import com.medical.soft.domain.PhysicalExam;
import com.medical.soft.domain.repository.PhysicalExamRepository;
import com.medical.soft.persistence.crud.ExamenFisicoCrudRepository;
import com.medical.soft.persistence.entity.ExamenFisico;
import com.medical.soft.persistence.mapper.PhysicalExamMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class ExamenFisicoRepository implements PhysicalExamRepository {
    @Autowired
    private ExamenFisicoCrudRepository examenFisicoCrudRepository;

    @Autowired
    private PhysicalExamMapper mapper;


    @Override
    public Optional<PhysicalExam> getPhysicalExam(int physicalExamId) {
        return examenFisicoCrudRepository.findById(physicalExamId)
                .map(examenFisico -> mapper.toPhysicalExam(examenFisico));
    }

    @Override
    public PhysicalExam save(PhysicalExam physicalExam) {
        ExamenFisico examenFisico = mapper.toExamenFisico(physicalExam);
        return mapper.toPhysicalExam(examenFisicoCrudRepository.save(examenFisico));
    }
}
