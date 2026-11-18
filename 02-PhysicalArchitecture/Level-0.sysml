package Level0Parts {
    private import Level0Actions::*; 
    part def SpySat {
        doc /* Level 0 satellite object */
        part payload;
        part eps;
        part tcs;
        part aocs;
        part propulsion;
        part cdhs;
        part comms;

        action mission : Mission;
    }
}