using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WallTrigger : MonoBehaviour
{
    [SerializeField]Transform movingObject;
    [SerializeField]Transform startcube;
    [SerializeField]Transform endCube;
    Vector3 start;
    Vector3 end;
    public Vector3 newPos;

    public bool isLerp = false;
    public float speed = 1.0f;

    void Start()
    {
        start = startcube.position;
        end = endCube.position;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        if(isLerp == true)
        {
            newPos = end;
        }
        else
        {
            newPos = start;
        }
        movingObject.position = Vector3.Lerp(movingObject.position ,newPos ,Time.deltaTime * speed);
    }
    void OnTriggerEnter(Collider other)
    {
        isLerp = true;
    }
    void OnTriggerExit(Collider other)
    {
        isLerp = false;
    }
}
