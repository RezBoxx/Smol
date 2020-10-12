using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Player : MonoBehaviour
{

    public float speed, sens;
    Transform campivot;
    Rigidbody body;
    public float jumpforce = 300;
    public float killplane = -1;
    PlayerManager manager;
    public GameObject previewThrow;
    RadiusTrigger radtrig;
    public float health = 1;

    // Use this for initialization
    void Start()
    {

        body = GetComponent<Rigidbody>();
        campivot = transform.Find("pivot cam").transform;
        col = GetComponent<Collider>();
        manager = GameObject.FindObjectOfType<PlayerManager>();
        radtrig = GameObject.FindObjectOfType<RadiusTrigger>();

    }

    //health wird reduziert solange man infected ist, wenn exit dann langsam wieder hoch
    //image effect der dunkler macht, wenn weniger health
    /*
    void OnTriggerStay(Collider other)
    {
        if (other.tag == "Infected")
        {
            health -= Time.deltaTime;
            health = Mathf.Clamp01(health);
            print(other.gameObject.name + " " + Time.time);
            allowHealing = false;
        }
    }
    */

    public bool allowHealing;

    //ACHTUNG: kann vllt zu bugs führen
    void OnTriggerExit(Collider other)
    {
        if (other.tag == "Infected")
        {
            allowHealing = true;
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Boot")
        {
            body.velocity = Vector3.zero;
            manager.ChangeToBoat(other.gameObject);
            //print("changed to boat (hopefully)" + Time.time);
        }
    }

    void OnCollisionEnter(Collision other)
    {
        /*
        if (other.collider.tag == "Kiste")
        {
            Transform t = GameObject.Find("Holder").transform;
            other.collider.transform.position = t.position;
            other.collider.transform.SetParent(t);
            other.collider.GetComponent<Rigidbody>().isKinematic = true;
            other.collider.GetComponent<Collider>().enabled = false;

            jumpingAllowed = false;
        }
        */
    }

    void FixedUpdate()
    {


        if (!radtrig.blockInput)
        {
            Vector3 dir = Input.GetAxis("Vertical") * 1 * FlattenVector(campivot.forward) + Input.GetAxis("Horizontal") * 1 * campivot.right;
            body.MovePosition(transform.position + dir * speed);
        }

        campivot.Rotate(Vector3.up, Input.GetAxis("Mouse X") * sens, Space.World);
        campivot.Rotate(campivot.right, Input.GetAxis("Mouse Y") * -sens, Space.World);
        campivot.Rotate(campivot.right, Input.GetAxis("Mouse Y Xbox") * sens, Space.World);
    }

    public Vector3 lastsavepos;
    public bool grounded;
    Collider col;
    public LayerMask layermask;

    public float throwForce = 1000;
    public float parabeldiv = 2;

    public bool jumpingAllowed = true;
    public float aufhebRadius = 2;
    public bool tragend = false;
    public GameObject tragObj;
    public bool lastFrame = false;

    Vector3 FlattenVector(Vector3 a)
    {
        return new Vector3(a.x, 0, a.z).normalized;
    }

    void AutoHealing()
    {
        if (allowHealing){
            health += Time.deltaTime;
            health = Mathf.Clamp01(health);

        }
    }

    // Update is called once per frame
    void Update()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        //preview throw display
        previewThrow.SetActive(tragend);

        //clamp health
        health = Mathf.Clamp01(health);

        //auto healing if not infected
        AutoHealing();

        //throwing
        if (Input.GetButtonDown("Pickup") && tragend && !lastFrame)
        {
            Transform kisteHelper = tragObj.transform;


            if (kisteHelper)
            {
                Rigidbody r = kisteHelper.GetComponent<Rigidbody>();
                //print("has kiste");
                r.transform.SetParent(null);
                r.GetComponent<Collider>().enabled = true;
                r.isKinematic = false;

                r.AddForce(FlattenVector(campivot.forward) * throwForce / parabeldiv + Vector3.up * throwForce);
                jumpingAllowed = true;
                tragend = false;
                tragObj = null;
                lastFrame = true;
            }
        }

        //ablegen
        if (Input.GetButtonDown("Drop") && tragend && !lastFrame)
        {
            Transform kisteHelper = tragObj.transform;


            if (kisteHelper)
            {
                Rigidbody r = kisteHelper.GetComponent<Rigidbody>();
                //print("has kiste");
                r.transform.SetParent(null);
                r.GetComponent<Collider>().enabled = true;
                r.isKinematic = false;

                //r.AddForce(FlattenVector(campivot.forward) * throwForce/parabeldiv + campivot.up * throwForce);
                kisteHelper.position = FlattenVector(campivot.forward) * 2 + campivot.up * -.5f + transform.position;
                jumpingAllowed = true;
                tragend = false;
                tragObj = null;
            }
        }

        //aufheben
        GameObject[] tragbare = GameObject.FindGameObjectsWithTag("Tragbar");
        foreach (GameObject g in tragbare)
        {
            //überprüfen ob man nichts tragt
            if (!tragend && !lastFrame)
            {
                if (Vector3.Distance(transform.position, g.transform.position) <= aufhebRadius)
                {
                    if (Input.GetButtonDown("Pickup"))
                    {
                        tragend = true;
                        Transform holder = GameObject.Find("Holder").transform;
                        Rigidbody r = g.GetComponent<Rigidbody>();
                        g.transform.position = holder.position;
                        g.transform.SetParent(holder);
                        r.isKinematic = true;
                        r.GetComponent<Collider>().enabled = false;
                        tragObj = g;
                        lastFrame = true;
                        jumpingAllowed = false;
                    }
                }
            }
        }

        //reset scene
        if (Input.GetKeyDown(KeyCode.R))
        {
            SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        }

        //grounded check
        if (Physics.Raycast(transform.position, Vector3.down, col.bounds.extents.y + .1f, layermask.value))
        {
            grounded = true;
            lastsavepos = transform.position;
        }
        else
        {
            grounded = false;
        }

        //jumping
        if (Input.GetButtonDown("Jump") && grounded && jumpingAllowed && !radtrig.blockInput)
        {
            body.AddForce(0, jumpforce, 0);
        }



        //killplane
        if (transform.position.y < killplane)
        {
            //transform.position = lastsavepos; killplane ausgeschaltet
        }



        lastFrame = false;
    }
}
