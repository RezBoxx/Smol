using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamTrigger : MonoBehaviour
{

    //exit -> default cam

    //save default cam config

    //

    public float defaultDistance;
    public float defaultHeight;
    public float distance;
    public float height;

    public float bumperDistance;
    public float defaultBumperDistance;
    public float bumperHeigtht;
    public float defaultBumperHeigtht;

    CameraStopppoClippus cam;

    // Start is called before the first frame update
    void Start()
    {
        GetComponent<MeshRenderer>().enabled = false;
        cam = GameObject.FindObjectOfType<CameraStopppoClippus>();
        defaultDistance = cam.distance;
        defaultHeight = cam.height;
        defaultBumperDistance = cam.bumperDistanceCheck;
        defaultBumperHeigtht = cam.bumperCameraHeight;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player")
        {
            cam.height = height;
            cam.distance = distance;
            cam.bumperDistanceCheck = bumperDistance;
            cam.bumperCameraHeight = bumperHeigtht;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            cam.height = defaultHeight;
            cam.distance = defaultDistance;
            cam.bumperDistanceCheck = defaultBumperDistance;
            cam.bumperCameraHeight = defaultBumperHeigtht;
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
