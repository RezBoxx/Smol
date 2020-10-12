using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boat : MonoBehaviour
{

    public float speed, sens;
    Transform campivot;
    Rigidbody body;
    PlayerManager manager;

    // Use this for initialization
    void Start()
    {

        body = GetComponent<Rigidbody>();
        //campivot = transform.Find("pivot cam").transform;
        campivot = GameObject.Find("boot pivot cam").transform;
        manager = GameObject.FindObjectOfType<PlayerManager>();


    }

    public float energy;
    public float force = 200;
    public float holdforce = 100;
    public float maxspeedMashing = 20;
    public float maxspeedHolding = 10;
    public float maxspeed = 0;

    void FixedUpdate()
    {
        lastpos = transform.position;

        if (Input.GetKey(KeyCode.Space))
        {
            //addforce
            body.AddForce(dir * holdforce, holdmodus);
            holdtime += Time.deltaTime;
        }
        else
        {
            holdtime = 0;
        }

        //if space is held for more than 1 sec, then decrease maxspeed
        //if space isnt held anymore than 1 sec, then speed = default
        if (holdtime > 1)
        {
            maxspeed = maxspeedHolding;
        }
        else
        {
            maxspeed = maxspeedMashing;
        }
        body.velocity = Vector3.ClampMagnitude(body.velocity, maxspeed);



    }

    public float RotPerFrame = 60;
    public float rotDelta = .5f;
    public float holdtime;
    public ForceMode modus, holdmodus;
    public Vector3 dir;
    public Vector3 lastpos;

    // Update is called once per frame
    void Update()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;


        campivot.position = transform.position;
        campivot.Rotate(Vector3.up, Input.GetAxis("Mouse X") * sens, Space.World);

        if (Input.GetKeyDown(KeyCode.LeftShift))
        {
            manager.ChangeToPlayer();
        }


        //sollte besser in fixed update
        //energy = velocity
        //input dir
        dir = Input.GetAxis("Vertical") * campivot.forward + Input.GetAxis("Horizontal") * campivot.right;
        dir = dir.normalized;

        if (Input.GetKeyDown(KeyCode.Space))
        {
            //addforce
            body.AddForce(dir * force, modus);
        }

        //while velo > 0 change rot to inputdir

        //wenn velocity über 0
        if (body.velocity.magnitude > 0.1f)
        {

            Vector3 posdiff = transform.position - lastpos;
            //print(posdiff);

            posdiff.y = 0;

            if (posdiff != Vector3.zero)
            {
                transform.forward = posdiff;
            }



            /*
            if (dir != Vector3.zero)
                transform.forward = dir;
            */


        }
    }
}
