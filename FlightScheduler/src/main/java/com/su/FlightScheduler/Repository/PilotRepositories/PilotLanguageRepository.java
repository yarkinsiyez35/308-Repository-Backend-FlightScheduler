package com.su.FlightScheduler.Repository.PilotRepositories;

import com.su.FlightScheduler.Entity.PilotLanguageEntity;
import com.su.FlightScheduler.Entity.PilotLanguagePK;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

//TESTING: this function should be tested
@Repository
public interface PilotLanguageRepository extends JpaRepository <PilotLanguageEntity, PilotLanguagePK> {

        public List<PilotLanguageEntity> findPilotLanguageEntitiesByPilotLanguagePK_PilotId(int pilotId);
}
