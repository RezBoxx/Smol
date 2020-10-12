using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LocationCheat : MonoBehaviour
{
    public Transform[] targets;
    PlayerController spieler;
    // Start is called before the first frame update
    void Start()
    {
        spieler = GameObject.FindObjectOfType<PlayerController>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha6)){

            spieler.transform.position = targets[0].position;

        }

        if (Input.GetKeyDown(KeyCode.Alpha5)){

            spieler.transform.position = targets[1].position;

        }

        if (Input.GetKeyDown(KeyCode.Alpha3)){

            spieler.transform.position = targets[2].position;

        }
    }
}
