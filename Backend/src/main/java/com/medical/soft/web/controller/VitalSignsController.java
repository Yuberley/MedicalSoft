package com.medical.soft.web.controller;

import com.medical.soft.domain.VitalSigns;
import com.medical.soft.domain.service.VitalSignsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/vital_signs")
public class VitalSignsController {

    @Autowired
    private VitalSignsService vitalSignsService;

    @GetMapping("/{patientId}")
    public List<VitalSigns> getVitalSigns(@PathVariable("patientId") int patientId) {
        return vitalSignsService.getVitalSigns(patientId);
    }

    @PostMapping("/save")
    public VitalSigns save(@RequestBody VitalSigns vitalSigns) {
        return vitalSignsService.save(vitalSigns);
    }

    @PutMapping("/update")
    public VitalSigns update(@RequestBody VitalSigns vitalSigns) {
        return vitalSignsService.save(vitalSigns);
    }
}
