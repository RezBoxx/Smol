using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Respawn : MonoBehaviour
{
    PlayerController spieler;
    
    void Start()
    {
         spieler = GameObject.FindObjectOfType<PlayerController>();
    }
    void OnTriggerEnter(Collider other)
    {
        if(other.CompareTag("Player"))
        {
            spieler.lastCheckpointpos = transform.position;
        }
    }   
}
