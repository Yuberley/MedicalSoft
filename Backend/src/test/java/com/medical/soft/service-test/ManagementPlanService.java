package com.medical.soft.domain.service;

import com.medical.soft.domain.ManagementPlan;
import com.medical.soft.domain.repository.ManagementPlanRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ManagementPlanService {
    @Autowired
    private ManagementPlanRepository managementPlanRepository;

    public Optional<ManagementPlan> getManagementPlan(int managementPlanId) {
        return managementPlanRepository.getManagementPlan(managementPlanId);
    }
    public ManagementPlan save(ManagementPlan managementPlan) {
        return managementPlanRepository.save(managementPlan);
    }
}
