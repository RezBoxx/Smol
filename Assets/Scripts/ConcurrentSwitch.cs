using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConcurrentSwitch : MonoBehaviour
{
    public bool activated;
    // Start is called before the first frame update
    void Start()
    {

    }

    void OnTriggerStay(Collider col)
    {
        //print(Time.time + " " + gameObject.name);
        activated = true;

        //scale und check ob richtige farbe und radius
        transform.localScale = Vector3.one * 2;
    }

    // Update is called once per frame
    void FixedUpdate()
    {
        activated = false;
        transform.localScale = Vector3.one * 1;
    }
}
