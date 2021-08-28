package com.medical.soft.persistence;

import com.medical.soft.domain.SystemReview;
import com.medical.soft.domain.repository.SystemReviewRepository;
import com.medical.soft.persistence.crud.RevisionSistemaCrudRepository;
import com.medical.soft.persistence.entity.RevisionSistema;
import com.medical.soft.persistence.mapper.SystemReviewMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class RevisionSistemaRepository implements SystemReviewRepository {
    @Autowired
    private RevisionSistemaCrudRepository revisionSistemaCrudRepository;

    @Autowired
    private SystemReviewMapper mapper;

    @Override
    public Optional<SystemReview> getSystemReview(int systemReviewId) {
        return revisionSistemaCrudRepository.findById(systemReviewId)
                .map(revisionSistema -> mapper.toSystemReview(revisionSistema));
    }

    @Override
    public SystemReview save(SystemReview systemReview) {
        RevisionSistema revisionSistema = mapper.toRevisionSistema(systemReview);
        return mapper.toSystemReview(revisionSistemaCrudRepository.save(revisionSistema));
    }
}
