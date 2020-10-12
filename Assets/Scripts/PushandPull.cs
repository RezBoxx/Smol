using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushandPull : MonoBehaviour
{
    public float force = 100;
    Rigidbody rb;

    void Start(){
        rb = GetComponent<Rigidbody>();
    }
    void OnCollisionStay(Collision col)
    {
        if(col.collider.tag =="Player")
        {
            rb.velocity = Vector3.zero;
            rb.angularVelocity =  Vector3.zero;
        }
    }
    void OntriggerStay(Collider col)
    {
        Song song = col.GetComponent<Song>();

        if(col.tag == "RadiusTrigger")
        {
            if(song.colors == SColors.Yellow)
            {
                PushOrPull(1,col);
            }
            if(song.colors ==SColors.Red)
            {
                PushOrPull(-1,col);
            }
        }
    }
    void PushOrPull(float sign, Collider col)
    {
        Vector3 dir = transform.position - col.transform.position;
        rb.AddForce(dir* force * sign);
    }
}
