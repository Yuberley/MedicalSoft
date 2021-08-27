package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.RevisionSistemaCrudRepository;
import com.medical.soft.persistence.entity.RevisionSistema;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class RevisionSistemaRepository {
    private RevisionSistemaCrudRepository revisionSistemaCrudRepository;

    public Optional<RevisionSistema> getRevisionSistema(int codRS) {
        return revisionSistemaCrudRepository.findById(codRS);
    }

    public RevisionSistema save(RevisionSistema revisionSistema) {
        return revisionSistemaCrudRepository.save(revisionSistema);
    }
}
