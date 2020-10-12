using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DestroyableApple : MonoBehaviour
{
    public float minVelocity = 100;
    public GameObject brokenGlas;
    AudioManager audioManager;
    // Start is called before the first frame update
    void Start()
    {
        audioManager = GameObject.FindObjectOfType<AudioManager>();
    }

    void BreakGlas(){
        audioManager.Play("GlassDestroyed");
        GameObject g = Instantiate(brokenGlas, transform.position, transform.rotation) as GameObject;
        g.transform.localScale = transform.localScale;
        
        Destroy(gameObject);
        
    }

    void OnCollisionEnter(Collision col)
    {
        if (col.collider.tag == "Apple")
        {
            
            Rigidbody body = col.collider.GetComponent<Rigidbody>();
            print(body.velocity.magnitude + " apple velocity");
            if (body.velocity.magnitude > minVelocity)
            {
                //Destroy(gameObject);
                BreakGlas();
            }
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
