package com.medical.soft.web.controller;

import com.medical.soft.domain.ClinicHistory;
import com.medical.soft.domain.service.ClinicHistoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/clinic_history")
public class ClinicHistoryController {

    @Autowired
    private ClinicHistoryService clinicHistoryService;

    @GetMapping("/{clinicalHistoryId}")
    public Optional<ClinicHistory> getClinicalHistoryId(@PathVariable("clinicalHistoryId") int clinicalHistoryId) {
        return clinicHistoryService.getClinicalHistoryId(clinicalHistoryId);
    }

    @PostMapping("/save")
    public ClinicHistory save(@RequestBody ClinicHistory clinicHistory) {
        return clinicHistoryService.save(clinicHistory);
    }

    @PutMapping("/update")
    public ClinicHistory update(@RequestBody ClinicHistory clinicHistory) {
        return clinicHistoryService.save(clinicHistory);
    }

}
