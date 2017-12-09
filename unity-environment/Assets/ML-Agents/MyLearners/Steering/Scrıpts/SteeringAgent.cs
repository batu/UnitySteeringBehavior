 using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;

public class SteeringAgent : Agent {

    public enum RewardStyle { SimpleSparse, SimpleProgress };
    public enum StateStyle  { Local };
    public enum MovementStyle { Local };

    public bool DebugMode = true;

    SteeringAcademy academy;
    Rigidbody car_rb;

    [Header("Specific to TrivialAgent")]
    public GameObject Target;
    public float maxSpeed = 10f;
    public float maxAngularSpeed = 5f;
    [Range(0.9f, 1f)]
    public float slowing_down_constant = 0.95f;
    [Range(0, 4f)]
    public float speed_mult = 0.6f;
    [Range(0, 1f)]
    public float turn_mult = 0.3f;

    [Header("Reward Related Structures")]
    public StateStyle stateStyle = StateStyle.Local;

    [Header("Reward Related Structures")]
    public RewardStyle rewardStyle = RewardStyle.SimpleSparse;
    [Range(0, 0.1f)]
    public float MinusRewardStep = 0.01f;


    bool hitting_target_rewards_one = false;


    float cumulReward = 0;
    Vector3 initialPosition, init_target_pos;
    Quaternion initialRotation;
    float init_distance, target_position_z;
    public GameObject target;

    public GameObject obstacle_holder;
    public GameObject obstacle;


    List<GameObject> obstacle_list;
    public override void InitializeAgent() {
        initialRotation = transform.rotation;
        initialPosition = transform.position;
        car_rb = GetComponent<Rigidbody>();
        init_distance = Vector3.Distance(transform.position, Target.transform.position);
        last_distance = init_distance;
        academy = GameObject.FindGameObjectWithTag("Academy").GetComponent<SteeringAcademy>();

        obstacle_list = new List<GameObject>();

        init_target_pos = target.transform.position;
    }

    
    void createObstacles() {
        print("I am in obstacle creation.");

        foreach( GameObject obs in obstacle_list) {
            Destroy(obs);
        }

        float z_offset = 5 + academy.target_position_z;
        float x_offset = 8;
        print(academy.num_obstacles);
        for (int i = 0; i <= academy.num_obstacles; i++){
            GameObject obs = Instantiate(obstacle, initialPosition + new Vector3(Random.Range(-x_offset, x_offset), 0f, Random.Range(5, z_offset)), Quaternion.identity, obstacle_holder.transform) as GameObject;
            obstacle_list.Add(obs);

        }
    }


    public override List<float> CollectState() {

        //Debug.Log(string.Format("In collect state and cummulative reward is:{0}", CumulativeReward));
        //Debug.Log(string.Format("In collect state and reward is:{0}", reward));

        List<float> state = new List<float>();

        state.Add(transform.position.x);
        state.Add(transform.position.z);

        state.Add(transform.rotation.eulerAngles.y / 180.0f - 1.0f);

        state.Add(car_rb.velocity.x);
        state.Add(car_rb.velocity.z);

        state.Add(car_rb.angularVelocity.y);


        Vector3[] target_points = FindClosestTargetPoints("Target", 1);
        foreach (Vector3 target_point in target_points) {
            if (DebugMode) Debug.DrawLine(transform.position, target_point);
            state.Add(target_point.x - transform.position.x);
            state.Add(target_point.z - transform.position.z);
        }

        Vector3[]  obs_points = FindClosestTargetPoints("Obstacle", 5);
        foreach(Vector3 obs_point in obs_points) {
            if(DebugMode) Debug.DrawLine(transform.position, obs_point);
            state.Add(obs_point.x - transform.position.x);
            state.Add(obs_point.z - transform.position.z);
        }

        Vector3[]  wall_points = FindClosestTargetPoints("Wall", 2);
        foreach (Vector3 wall_point in wall_points) {
            if (DebugMode) Debug.DrawLine(transform.position, wall_point);
            state.Add(wall_point.x - transform.position.x);
            state.Add(wall_point.z - transform.position.z);
        }

        cumulReward += reward;
        //print(cumulReward);
        return state;
    }


    private void OnCollisionEnter(Collision collision) {
        if (collision.collider.gameObject.tag == "Target" && hitting_target_rewards_one) {
            reward += 1;
            cumulReward = -1;
            done = true;
            //Debug.Log(string.Format("OnCollisionEnter cummulative reward is:{0}", CumulativeReward));
        }
    }


    int action;
    float last_distance; 


    public override void AgentStep(float[] act) {
        //Debug.Log(string.Format("Agent step and cummulative reward is:{0}", CumulativeReward));

        action = (int)act[0];
        if (action == 0) {
            car_rb.AddForce(transform.forward * speed_mult, ForceMode.VelocityChange);
        }
        if (action == 1) {
            car_rb.AddForce(-transform.forward * speed_mult, ForceMode.VelocityChange);
        }
        if (action == 2) {
            car_rb.AddTorque(0f, turn_mult, 0f, ForceMode.VelocityChange);
        }
        if (action == 3) {
            car_rb.AddTorque(0f, -turn_mult, 0f, ForceMode.VelocityChange);
        }

        if (car_rb.velocity.magnitude > maxSpeed) car_rb.velocity = car_rb.velocity * slowing_down_constant;


        switch (rewardStyle) {
            case RewardStyle.SimpleSparse:
                hitting_target_rewards_one = true;
                reward -= MinusRewardStep;
                break;

            case RewardStyle.SimpleProgress:
                hitting_target_rewards_one = true;

                float this_distance = Vector3.Distance(transform.position, Target.transform.position);
                float delta = last_distance - this_distance;
                last_distance = this_distance;

                reward += delta / 10f;
                reward -= MinusRewardStep;

                break;
        }

    }

	public override void AgentReset()
	{
        //Debug.Log(string.Format("Agent reset called in SteeringAgent.cs and the cummulative reward is:{0}", CumulativeReward));
        createObstacles();

        transform.position = initialPosition;
        transform.rotation = initialRotation;

        last_distance = init_distance;

        car_rb.velocity = Vector3.zero;
        car_rb.angularVelocity = Vector3.zero;

       
        target.transform.position = init_target_pos + new Vector3(0f, 0f, academy.target_position_z);

   
    }

    public override void AgentOnDone()
	{
        

    }

    // Helper Functions

    Vector3[] FindClosestTargetPoints(string tag, int count) {
        Vector3 position = transform.position;
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, 100f);

        var closests = hitColliders
            .Where(o => o.gameObject.tag == tag)
            .OrderBy(o => Vector3.Distance(o.ClosestPoint(position), position))
            .Take(count);

        Vector3[] closest_points = new Vector3[count];

        int i = 0;
        foreach (Collider col in closests) {
            closest_points[i] = col.ClosestPoint(position);
            i++;
        }
        return closest_points;
    }


}
