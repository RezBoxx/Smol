using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamFix : MonoBehaviour
{

    public GameObject obj;
	public GameObject cam;

    // Use this for initialization
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

        if (!obj.active)
        {
            cam.SetActive(false);
        }
		else{
			cam.SetActive(true);
		}

    }
}
