using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlattformDestroyOnContact : MonoBehaviour
{
    public float coolDown = 3;
    public float respawnTime = 10;
    public bool triggered;

    public Collider Col;

    void Start()
    {
        Col = GetComponent<Collider>();
    }
    void OnCollisionEnter(Collision col)
    {
        triggered = true;
    }
    void Update()
    {
        if(triggered && coolDown >=0)
        {
            coolDown -= Time.deltaTime;
        }
        if(coolDown <=0)
        {
            Col.enabled = false;
        }
    }   
}
