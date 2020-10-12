using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ConcurrentActivationManager : MonoBehaviour
{
    public ConcurrentSwitch[] switches;
    public Transform target;
    // Start is called before the first frame update
    void Start()
    {
        switches = transform.GetComponentsInChildren<ConcurrentSwitch>();
    }

    void Activation()
    {
        target.gameObject.SetActive(false);
        gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        int activations = 0;
        foreach (ConcurrentSwitch s in switches)
        {
            if (s.activated)
            {
                activations++;
            }
        }

        //print(activations + " " + Time.time);

        if (activations == switches.Length)
        {
            print("all activated " + Time.time);
            Activation();
        }
    }
}
