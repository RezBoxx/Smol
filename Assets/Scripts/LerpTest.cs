using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LerpTest : MonoBehaviour
{
    [SerializeField] Transform movingPlattform;
    [SerializeField] Transform startCube;
    [SerializeField] Transform endCube;
    public Vector3 newPosition;
    public string currentState;
    public float smooth;
    public float resetTime;
    

    void Start()
    {
        ChangeTarget();
    }
    void FixedUpdate()
    {
        movingPlattform.position = Vector3.Lerp (movingPlattform.position, newPosition, smooth * Time.deltaTime);
    }
    void ChangeTarget()
    {   
        if (currentState == "Moving to Position 1")
        {
            currentState = "Moving to Position 2";
            newPosition = endCube.position;
        }
        else if(currentState == "Moving to Position 2")
        {
            currentState = "Moving to Position 1";
            newPosition = startCube.position;
        }
        else if (currentState == "")
        {
            currentState = "Moving to Position 2";
            newPosition = endCube.position;
        }
    Invoke ("ChangeTarget",resetTime);
    } 
}
