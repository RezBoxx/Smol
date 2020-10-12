using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class KillPlane : MonoBehaviour
{
    Collider col;
    Checkpoint checkpoint;
    PlayerController playerController;
    ParasitWurzel parasite;
    
    
    void Start()
    {
        playerController = GameObject.FindObjectOfType<PlayerController>();
        checkpoint = GameObject.FindObjectOfType<Checkpoint>();
        col = GetComponent <Collider>();
        parasite = GameObject.FindObjectOfType<ParasitWurzel>();     
    }
    void OnTriggerEnter(Collider col){
        
        if(col.tag == "Player" && parasite.health > 0)
        {   
            print("is drin");
            Checkpoint[] checkpoints =  GameObject.FindObjectsOfType<Checkpoint>();       
            foreach (Checkpoint c in checkpoints )
            {
                c.Respawn();
            }        
         }
    }
    void OnTriggerExit(Collider col)
    {
        playerController.allowHealing = true;
    }
    void Update()
    {

    }
}
