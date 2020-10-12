using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AppleSound : MonoBehaviour
{
    AudioSource appleSound;
    Rigidbody body;
    void Start()
    {
        appleSound = GetComponent<AudioSource>();
        body = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        if(body.velocity.magnitude >= 0.01)
        {
            appleSound.UnPause();
            
        }
        else
        {
            appleSound.Play();
            appleSound.Pause();
        }
    }
}
