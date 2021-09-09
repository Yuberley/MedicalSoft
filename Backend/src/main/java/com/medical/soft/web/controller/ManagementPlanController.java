package com.medical.soft.web.controller;

import com.medical.soft.domain.ManagementPlan;
import com.medical.soft.domain.service.ManagementPlanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@RequestMapping("/management_plan")
public class ManagementPlanController {
    @Autowired
    private ManagementPlanService managementPlanService;

    @GetMapping("/{managementPlanId}")
    public Optional<ManagementPlan> getManagementPlan(@PathVariable("managementPlanId") int managementPlanId) {
        return managementPlanService.getManagementPlan(managementPlanId);
    }

    @PostMapping("/save")
    public ManagementPlan save(@RequestBody ManagementPlan managementPlan) {
        return managementPlanService.save(managementPlan);
    }

    @PutMapping("/update")
    public ManagementPlan update(@RequestBody ManagementPlan managementPlan) {
        return managementPlanService.save(managementPlan);
    }
}
