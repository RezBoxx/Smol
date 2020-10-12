using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class CompanionNav : MonoBehaviour
{

    [SerializeField] public GameObject Target;
    private NavMeshAgent agent;
    Rigidbody rb;
    public bool onGround;
    public LayerMask complayermask;
    Collider comcol;
    PlayerController spieler;
    public float maxPlayerDistance = 30;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        agent = GetComponent<NavMeshAgent>();
        comcol = GetComponent<Collider>();
        spieler = GameObject.FindObjectOfType<PlayerController>();
    }

    public bool wirdGetragen;

    // Update is called once per frame
    void Update()
    {
        //print("kinematic " + rb.isKinematic + " time " + Time.time);
        //way too simple respawn function
        if (Vector3.Distance(spieler.transform.position, transform.position) > maxPlayerDistance)
        {
            transform.position = spieler.transform.position + Vector3.up * 3;
            rb.velocity = Vector3.zero;
        }

        /*
        if (spieler.tragObj == gameObject)
        {
            wirdGetragen = true;
        }
        else
        {
            wirdGetragen = false;
        }
        */

        if (agent.enabled == true)
        {
            rb.isKinematic = true;
            agent.SetDestination(Target.transform.position);
        }

        //grounded check
        if (Physics.Raycast(transform.position, Vector3.down, comcol.bounds.extents.y + .1f, complayermask.value))
        {
            onGround = true;
        }
        else
        {
            onGround = false;
        }


        if (!wirdGetragen && onGround)
        {
            agent.enabled = true;
        }

        if (wirdGetragen)
        {
            //Debug.Break();
            agent.enabled = false;
        }




    }
}
