using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Apple : MonoBehaviour
{
    public float force = 100;
    Rigidbody body;
    public float stopPullDistance = 5;
    PlayerController spieler;
    AudioManager audioManager;

    void OnCollisionStay(Collision col)
    {
        if (col.collider.tag == "Player")
        {
            //body.velocity /= 2;
            body.velocity = Vector3.zero;
            body.angularVelocity = Vector3.zero;
        }
    }

    void OnTriggerStay(Collider col)
    {
        //print("trigger");


        if (col.tag == "RadiusTrigger")
        {
            Song rad = col.GetComponent<Song>();

            //abstossen
            if (rad.colors == SColors.Yellow)
            {
                DoPhysics(1, col);
            }

            //anziehen
            if (rad.colors == SColors.Red)
            {
                DoPhysics(-1, col);

                if (Vector3.Distance(transform.position, spieler.transform.position) <= stopPullDistance){
                    body.velocity = Vector3.zero;
                }
            }
        }

    }

    void DoPhysics(float sign, Collider col)
    {
        Vector3 dir = transform.position - col.transform.position;
        body.AddForce(dir * force * sign);
    }

    // Start is called before the first frame update
    void Start()
    {
        body = GetComponent<Rigidbody>();
        spieler = GameObject.FindObjectOfType<PlayerController>();
    }

    // Update is called once per frame
    void Update()
    {
    }
}
