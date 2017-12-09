using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SteeringAcademy : Academy {


    Vector3 init_target_pos;
    [HideInInspector]
    public float target_position_z;
    [HideInInspector]
    public float num_obstacles;
    public override void InitializeAcademy() {
        target_position_z = (float)resetParameters["target_position_z"];
        num_obstacles = (float)resetParameters["num_obstacles"];
    }


    public override void AcademyReset() {

        target_position_z = (float)resetParameters["target_position_z"];
        num_obstacles = (float)resetParameters["num_obstacles"]; 

    }

    public override void AcademyStep() {


    }

}
