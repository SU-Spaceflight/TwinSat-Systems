package structuralActions {
    action def KeepSatTogether{
        doc /* Satellite needs to remain in once piece lol */
        action survive_launch : SurviveLaunch;
        action prevent_outgassing;
        action survive_space_environment: SurviveSpaceEnvironment; 
        action survive_translational_manoeuvre : SurviveTranslationalManoeuvre;
        action survive_rotational_manoeuvre : SurviveRotationalManoeuvre; 
        action survive_inspace_vibrations : SurviveInSpaceVibrations ;
    }
    
    action def SurviveLaunch{
        action SurviveVibrations;
        action SurviveStaticLoads;
    }
        action def PreventOutgassing{
            action 
        }
    
    action def SurviveSpaceEnvironment{  
        action EnsureMaterialsSurviveTemperatures;
        action EnsureMaterialsSurviveExtremeRadiation;
    }

    action def SurviveRotationalManoeuvre{
        action SurviveThrusterMomentsaboutCOM;
    }

    action def SurviveTranslationalManoeuvre{
        action EnsureMaterialsWithstandBendingMoments;
        action SurviveEngineInducedVibrations;

    
    }
    action def SurviveInSpaceVibrations{
        action EnsureStructureNaturalFrequencyNotVibrationFreq
    }

    
}