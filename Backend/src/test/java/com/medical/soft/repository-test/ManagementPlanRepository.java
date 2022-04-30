package com.medical.soft.domain.repository;

import com.medical.soft.domain.ManagementPlan;

import java.util.Optional;

public interface ManagementPlanRepository {
    Optional<ManagementPlan> getManagementPlan(int managementPlanId);
    ManagementPlan save(ManagementPlan managementPlan);
}
