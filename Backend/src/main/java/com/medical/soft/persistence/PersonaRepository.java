package com.medical.soft.persistence;

import com.medical.soft.domain.Person;
import com.medical.soft.domain.repository.PersonRepository;
import com.medical.soft.persistence.crud.PersonaCrudRepository;
import com.medical.soft.persistence.entity.Persona;
import com.medical.soft.persistence.mapper.PersonMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class PersonaRepository implements PersonRepository {

    @Autowired
    private PersonaCrudRepository personaCrudRepository;
    @Autowired
    private PersonMapper mapper;

    @Override
    public List<Person> getAll() {
        List<Persona> personas = (List<Persona>) personaCrudRepository.findAll();
        return mapper.toPeople(personas);
    }

    @Override
    public Optional<Person> getPerson(int personId) {
        return personaCrudRepository.findById(personId).map(persona -> mapper.toPerson(persona));
    }

    @Override
    public Person save(Person person) {
        Persona persona = mapper.toPersona(person);
        return mapper.toPerson(personaCrudRepository.save(persona));
    }

    @Override
    public void delete(int personId) {
        personaCrudRepository.deleteById(personId);
    }

}
