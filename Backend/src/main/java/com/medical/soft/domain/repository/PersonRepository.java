package com.medical.soft.domain.repository;

import com.medical.soft.domain.Person;

import java.util.List;
import java.util.Optional;

public interface PersonRepository {
    List<Person> getAll();
    Optional<Person> getPersonaById(int cc);
    Person save(Person person);
    void delete(int cc);
}
