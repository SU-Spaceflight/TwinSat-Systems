package structuralActions {
    action def KeepSatTogether{
        doc /* Satellite needs to remain in once piece lol */
        action survive_launch : SurviveLaunch;
        action prevent_outgassing;
        action protect_from_sun; 
        


    }
    
    action def SurviveLaunch{
        action surviveVibrations;
        action static;
        action ensure_vibrationfreq_not_naturalfreq

    }
}