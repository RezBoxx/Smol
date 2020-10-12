using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraStopppoClippus : MonoBehaviour
{
  [SerializeField] private Transform target;
  [SerializeField] public float distance = 3.0f;
  [SerializeField] public float height = 1.0f;
  [SerializeField] private float damping = 5.0f;
  [SerializeField] private Vector3 targetLookAtOffset; // allows offsetting of camera lookAt, very useful for low bumper heights
  [SerializeField] public float bumperDistanceCheck = 5f; // length of bumper ray
  [SerializeField] public float bumperCameraHeight = 1.0f; // adjust camera height while bumping
  [SerializeField] private Vector3 bumperRayOffset; // allows offset of the bumper ray from target origin

  
  /// 
  /// If the target moves, the camera should child the target to allow for smoother movement. DR
  /// 

  public float offset = .2f;
  Camera cam;

  void Start(){
    cam = GetComponent<Camera>();
    //cam.useOcclusionCulling = false;
  }

  private void Update() 
    {
      //cam.useOcclusionCulling = true;


      Vector3 wantedPosition = target.TransformPoint(0, height, -distance);
      // check to see if there is anything behind the target
      RaycastHit hit;
      Vector3 back = target.transform.TransformDirection(-1 * Vector3.forward); 
      // cast the bumper ray out from rear and check to see if there is anything behind
      if (Physics.Raycast(target.TransformPoint(bumperRayOffset), back, out hit, bumperDistanceCheck)&& hit.transform != target) // ignore ray-casts that hit the user. DR
        {
          Vector3 betterHit = hit.point;
          betterHit += hit.normal * offset;
          // clamp wanted position to hit position
          wantedPosition.x = betterHit.x;
          wantedPosition.z = betterHit.z;
          wantedPosition.y = Mathf.Lerp(betterHit.y + bumperCameraHeight, wantedPosition.y, Time.deltaTime * damping);
        } 
        transform.position = Vector3.Lerp(transform.position, wantedPosition, Time.deltaTime * damping);
        Vector3 lookPosition = target.TransformPoint(targetLookAtOffset);
    }
}
