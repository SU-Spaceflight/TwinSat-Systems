package KeepSatOpsActions {
    action def KeepSatelliteOperational{
        action supplyPower;
        action keepSatelliteWithinThermalOpsLimits;
    }

}
 package EPSActions {
    doc /* be able to provide power at all times  */
    action def providePower{
        action supplyPower : supplyPower;
        action getpowertocomponents : getpowertocomponents ;
        action maintainReliabilityAndSafety :maintainReliabilityAndSafety  ;

    };
       

    action def supplyPower {
        action generatePower: generatePower;
        action providePowerToBus : providePowerToBus ;
    }
    
    action def generatePower{
    }
    action def getpowertocomponents{
        action distiributionsystem ;
        action powertransmissionandregulation;
    }

    action def providepowertobus  {
        action storeExcessPower;
        action releasePowerWhenSupplyDefecit;
        action handleSourceSwitching;

    }
    action def maintainReliabilityAndSafety{
        action subsuystemisolation;
        action fualtdetection;
        action handelingLoads;
        action hadelinginterference;
    }
 


    }
    

 }