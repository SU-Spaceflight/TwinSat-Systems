package ManouverActions {
    action def Manouver{
        doc /* modify satellite orbit and attitude */
        action know_direction: KnowDirection;
        action control_direction: ControlDirection;
        action know_orbit: KnowOrbit;
        action control_orbit: ControlOrbit
    }
    action def Set_Up_Reference_Point{
        doc/*Be able to see and set up a reference point*/
    }
    action def Measure_Current_Orientation_With_Respect_to_Refpoint{
        doc/*Be able to measure the current orientation with respect to something*/   
    }
    action def  Measure_Current_Rate_Of_Orientation{
        doc /*Be able to meausure current rate of rotation*/
    }
    action def Identify_What_Direction_Satellite_Is_Facing{
        doc /*Be able to identify what direction a face of the sattelite is facing respective to something, e.g towards the earth */
    }

 
    action def KnowAttitude{
        action set_up_reference_point: Set_Up_Reference_Point ;
        action measure_current_orientation_with_respect_to_refpoint: Measure_Current_Orientation_With_Respect_to_Refpoint;
        action measure_current_rate_of_orientation: Measure_Current_Rate_Of_Orientation;
        action identify_what_direction_satellite_is_facing: Identify_What_Direction_Satellite_Is_Facing
    }
    action def ControlAttitude{
       action provide_and_control_thrust_in_xyz
       action use_thrust_to_manouver
       action calculate_the_required_correction_in_attitude
       action use_the_thrust_to_change_the_orientation/attitude_of_the_satellite

    }
    action def Quantify_The_Distance_From_The_Object_The_Satellite_Is_Orbiting{
        doc /*Be able to quantify the distance from the object the satellite is orbiting*/
    }
    action def Know_What_The_Satellite_Is_Orbiting_And_What_Orbit_It_Is_In{
        doc /*Be able to know what the satellite is orbiting and what orbit it is in`*/
    }
    action def KnowOrbit{
        action quantify_the_distance_from_the_object_the_satellite_is_orbiting: Quantify_The_Distance_From_The_Object_The_Satellite_Is_Orbiting;
        action know_what_the_satellite_is_orbiting_and_what_orbit_it_is_in: Know_What_The_Satellite_Is_Orbiting_And_What_Orbit_It_Is_In;
    }
    action def Provide_Thrust{
        doc /*Be able to provide thrust*/
    }
    action def Use_This_Thrust_To_Control_The_Distance_From_The_Object_The_Satellite_Is_Orbiting{
        doc /*Be able to use this thrust to control the distance from the object the satellite is orbiting*/
    }
    action def Move_Into_Correct_Orbit{
        doc /*Be able to move into correct orbit*/
    }
    action def ControlOrbit{
        action provide_thrust: Provide_Thrust; 
        action use_this_thrust_to_control_the_distance_from_the_object_the_satellite_is_orbiting: Use_This_Thrust_To_Control_The_Distance_From_The_Object_The_Satellite_Is_Orbiting;
        action move_into_correct_orbit: Move_Into_Correct_Orbit;
    }

} 