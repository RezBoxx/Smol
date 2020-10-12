using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Checkpoint : MonoBehaviour
{
    public bool activated;
    Transform playerpos, applepos;
    PlayerController spieler;
    Apple apfel;
    TimedPlatform[] plats;
    PlayerController playerController; 

    // Start is called before the first frame update
    void Start()
    {
        GetComponent<MeshRenderer>().enabled = false;
        playerpos = transform.Find("player pos");
        applepos = transform.Find("apple pos");

        playerpos.gameObject.SetActive(false);
        applepos.gameObject.SetActive(false);

        spieler = GameObject.FindObjectOfType<PlayerController>();
        apfel = GameObject.FindObjectOfType<Apple>();
        plats = GameObject.FindObjectsOfType<TimedPlatform>();
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player")
        {
            print("checkpoint " + Time.time);

            Checkpoint[] checkpoints = GameObject.FindObjectsOfType<Checkpoint>();

            foreach (Checkpoint c in checkpoints)
            {
                c.activated = false;
            }

            activated = true;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.P) && activated)
        {
            spieler.transform.position = playerpos.position;
            apfel.transform.position = applepos.position;
            apfel.GetComponent<Rigidbody>().velocity = Vector3.zero;
            spieler.GetComponent<Rigidbody>().velocity = Vector3.zero;
            apfel.GetComponent<Rigidbody>().angularVelocity = Vector3.zero;

            //reset timed platforms
            foreach (TimedPlatform t in plats)
            {
                t.timeLeft = 1;
                t.triggered = false;
                t.box.enabled = true;
            }
        }
    }
    public void Respawn()
    {
        //if(spieler.health == 0 && activated)
        if (spieler.dead == 2 && activated)
        {
            spieler.transform.position = playerpos.position;
            apfel.transform.position = applepos.position;
            apfel.GetComponent<Rigidbody>().velocity = Vector3.zero;
            spieler.GetComponent<Rigidbody>().velocity = Vector3.zero;
            apfel.GetComponent<Rigidbody>().angularVelocity = Vector3.zero;
            foreach (TimedPlatform t in plats)
            {
                t.timeLeft = 1;
                t.triggered = false;
                t.box.enabled = true;
            }
            
        }
    }
}
