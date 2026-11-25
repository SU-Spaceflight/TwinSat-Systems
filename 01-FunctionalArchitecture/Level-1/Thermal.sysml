package ThermalActions {
    
    action def RegulateTemperature{
        action regulate_internal_temperature : RegulateInternalTemperature;
        action regulate_external_temperature : RegulateExternalTemperature;
    }

    action def RegulateInternalTemperature{
        action regulate_excess_heat_from_power_systems : RegulatePowerSystemsHeat;
        action regulate_heat_from_electronics : RegulateElectronicsHeat;
        
    }

    action def RegulateExternalTemperature{
        action protect_from_solar_radiation: ProtectFromSolarRadiation;
        action protect_from_CMBR: ProtectFromCMBR;
        action protect_from_earth_radiation: ProtectFromEarthRadiation;
    }

    action def RegulatePowerSystemsHeat{
        action insulate_power_systems;
        action dissipate_heat_from_power_systems;
    }

    action def electronicsHeat{
        action insulate_electronics;
        action dissipate_heat_from_electronics;
    }

    action def ProtectFromSolarRadiation{
        action insulate_from_solar_radiation;
        action dissipate_solar_radiation;
    }


    action def ProtectFromCMBR{
        action insulate_from_CMBR;
        action dissipate_CMBR;
    }
    
    action def ProtectFromEarthRadiation{
        action insulate_from_earth_radiation;
        action dissipate_earth_radiation;
    }


}