using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BlopShadow : MonoBehaviour
{
    public Transform parent;
    public Vector3 _parentOffset = new Vector3 (0f,0.01f, 0f);
    public LayerMask layermask;
    void Update()
    {
        Ray ray = new Ray(transform.position, -Vector3.up);
        RaycastHit hitInfo;

        if(Physics.Raycast(ray,out hitInfo,100f,layermask))
        {
            parent.position = hitInfo.point + _parentOffset;
            parent.up = hitInfo.normal;
        }
        else
        {
            parent.position = new Vector3(0f,1000f,0f);
        } 
    }
}
