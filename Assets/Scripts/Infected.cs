using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Infected : MonoBehaviour
{

    PlayerController spieler;
    // Start is called before the first frame update
    void Start()
    {
        spieler = GameObject.FindObjectOfType<PlayerController>();
    }

    void OnTriggerStay(Collider col)
    {
        if (col.tag == "Player")
        {
            //print(Time.time + " " + col.name);
            spieler.health -= Time.deltaTime;
            spieler.allowHealing = false;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player")
        {
            spieler.allowHealing = true;
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
