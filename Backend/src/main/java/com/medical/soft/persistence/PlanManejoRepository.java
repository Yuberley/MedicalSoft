package com.medical.soft.persistence;

import com.medical.soft.domain.ManagementPlan;
import com.medical.soft.domain.repository.ManagementPlanRepository;
import com.medical.soft.persistence.crud.PlanManejoCrudRepository;
import com.medical.soft.persistence.entity.PlanManejo;
import com.medical.soft.persistence.mapper.ManagementPlanMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public class PlanManejoRepository implements ManagementPlanRepository {
    @Autowired
    private PlanManejoCrudRepository planManejoCrudRepository;

    @Autowired
    private ManagementPlanMapper mapper;


    @Override
    public Optional<ManagementPlan> getManagementPlan(int managementPlanId) {
        return planManejoCrudRepository.findById(managementPlanId)
                .map(planManejo -> mapper.toManagementPlan(planManejo));
    }

    @Override
    public ManagementPlan save(ManagementPlan managementPlan) {
        PlanManejo planManejo = mapper.toPlanManejo(managementPlan);
        return mapper.toManagementPlan(planManejoCrudRepository.save(planManejo));
    }
}
