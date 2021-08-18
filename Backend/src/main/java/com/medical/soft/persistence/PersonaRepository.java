package com.medical.soft.persistence;

import com.medical.soft.persistence.crud.PersonaCrudRepository;
import com.medical.soft.persistence.entity.Persona;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class PersonaRepository {
    private PersonaCrudRepository personaCrudRepository;

    public List<Persona> getAll() {
        return (List<Persona>) personaCrudRepository.findAll();
    }

    public Optional<Persona> getPersonaById(int cc) {
        return personaCrudRepository.findById(cc);
    }

    public Persona save(Persona persona) {
        return personaCrudRepository.save(persona);
    }

    public void delete(int cc) {
        personaCrudRepository.deleteById(cc);
    }

}
