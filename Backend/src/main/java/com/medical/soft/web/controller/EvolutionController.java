package com.medical.soft.web.controller;

import com.medical.soft.domain.Evolution;
import com.medical.soft.domain.service.EvolutionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/evolution")
public class EvolutionController {
    @Autowired
    private EvolutionService evolutionService;

    @GetMapping("/{patientId}")
    public Optional<Evolution> getEvolutionByLastDate(@PathVariable("patientId") int patientId) {
        return evolutionService.getEvolutionByLastDate(patientId);
    }

    @GetMapping("/all/{patientId}")
    public List<Evolution> getAllEvolutions(@PathVariable("patientId") int patientId) {
        return evolutionService.getAllEvolutions(patientId);
    }

    @PostMapping("/save")
    public Evolution save(@RequestBody Evolution evolution) {
        return evolutionService.save(evolution);
    }

    @PutMapping("/update")
    public Evolution update(@RequestBody Evolution evolution) {
        return evolutionService.save(evolution);
    }
}
