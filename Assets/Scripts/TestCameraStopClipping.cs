using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestCameraStopClipping : MonoBehaviour
{
    private float DistanceAway;

    public float Distance;
    public float minDistance = 1;
    public float maxDistance = 2;
    public float DistanceUp = -2;
    public float smooth = 4.0f;
    public float  rotateAround;

    public Transform target;
    public LayerMask CamOcclusion;
    RaycastCommand hit;

    float cameraHeight = 55f;
    float cameraPan = 0f;
    public float camRotateSpeed = 180f;

    Vector3 camPosition;
    Vector3 camMask;
    Vector3 followMask;

    private float HorizontalAxis;
    private float VerticalAxis;
    private float Scroll;

    void Start(){
        
    }
    void Update()
    {
        HorizontalAxis = Input.GetAxis("Mouse X");
        VerticalAxis = Input.GetAxis("Mouse Y");
        Scroll = Input.GetAxis("Scroll");
        rotateAround = target.eulerAngles.y -35f;
        Vector3 targetOffset = new Vector3(target.position.x, (target.position.y + 2f),target.position.z);
        Quaternion rotation = Quaternion.Euler(cameraHeight,rotateAround,0);
        Vector3 vectorMask = Vector3.one;
        Vector3 rotateVector = rotation * vectorMask;
        camPosition = (targetOffset + Vector3.up * DistanceUp - rotateVector * DistanceAway);
        camMask = targetOffset + Vector3.up * DistanceUp - rotateVector * DistanceAway;
        occludeRay(ref targetOffset);
        smoothCam();
        transform.LookAt(target);

        if(rotateAround>360)
        {
            rotateAround = 0f;
        }
        else if(rotateAround< 0f)
        {
            rotateAround = (rotateAround + 360f);
        }
        rotateAround += HorizontalAxis * camRotateSpeed * Time.deltaTime;
        DistanceAway = Mathf.Clamp(DistanceAway += Scroll,minDistance,maxDistance);
    }
    void smoothCam()
    {
        smooth = 4f;
        transform.position = Vector3.Lerp (transform.position, camPosition,Time.deltaTime * smooth);
    }
    void occludeRay(ref Vector3 targetFollow)
    {
        
        RaycastHit wallhit = new RaycastHit();
        if(Physics.Linecast(targetFollow,camMask, out wallhit, CamOcclusion))
        {
            smooth = 4f;
            camPosition = new Vector3(wallhit.point.x + wallhit.normal.x * 1f, camPosition.y,wallhit.point.z + wallhit.normal.z * 1f);
        }
    }
    

}