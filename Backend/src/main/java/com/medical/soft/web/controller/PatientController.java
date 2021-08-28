package com.medical.soft.web.controller;

import com.medical.soft.domain.Patient;
import com.medical.soft.domain.service.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/patient")
public class PatientController {

    @Autowired
    private PatientService patientService;

    @GetMapping("/{patientId}")
    public Optional<Patient> getPatient(@PathVariable("patientId") int patientId) {
        return patientService.getPatient(patientId);
    }

    @PostMapping("/save")
    public Patient save(@RequestBody Patient patient) {
        return patientService.save(patient);
    }

    @PutMapping("/update")
    public Patient update(@RequestBody Patient patient) {
        return patientService.save(patient);
    }
}
