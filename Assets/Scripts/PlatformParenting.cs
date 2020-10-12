using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlatformParenting : MonoBehaviour
{

    void OnCollisionEnter(Collision col)
    {
        col.transform.SetParent(transform);
    }

    void OnCollisionExit(Collision col)
    {
        col.transform.SetParent(null);
    }

    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }
}
