using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerFadeout : MonoBehaviour
{

    Fadeout fader;
    // Start is called before the first frame update
    void Start()
    {
        fader = GameObject.FindObjectOfType<Fadeout>();
        GetComponent<MeshRenderer>().enabled = false;
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "Player")
        {
            fader.shouldLoad = true;
            fader.state = 9;
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
