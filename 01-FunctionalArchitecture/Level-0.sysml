package Level0Actions {
    private import CommunicateActions::*;
    private import KeepSatOpsActions::*;
    private import ManouverActions::*;
    private import ProvideInfoActions::*;
    private import structuralActions::*;

    action def Mission{
        action provide_info : ProvideInfoAboutObject;
        action keep_sat_op : KeepSatelliteOperational;
        action manouver : Manouver;
        action communicate : Communicate;
        action KeepSatelliteIntact : KeepSatTogether;
    }  
}