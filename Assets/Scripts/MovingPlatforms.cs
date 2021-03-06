﻿using UnityEngine;
using System.Collections;
public class MovingPlatforms : MonoBehaviour
{
    public Transform farEnd;
    private Vector3 frometh;
    private Vector3 untoeth;
    public float secondsForOneLength = 20f;
    Rigidbody body;

    void Start()
    {
        frometh = transform.position;
        untoeth = farEnd.position;

        //Rigidbody
        body = gameObject.AddComponent<Rigidbody>();
        body.isKinematic = true;
        body.interpolation = RigidbodyInterpolation.Interpolate;
    }

    void Update()
    {
        Vector3 pos;
        pos = Vector3.Lerp(frometh, untoeth,
         Mathf.SmoothStep(0f, 1f,
          Mathf.PingPong(Time.time / secondsForOneLength, 1f)
        ));

        //body.MovePosition(pos);
        transform.position = pos;

    }

    void OnCollisionEnter(Collision col)
    {
        if (col.collider.tag == "Player")
        {
            col.transform.SetParent(transform);
        }
    }

    void OnCollisionExit(Collision col)
    {
        if (col.collider.tag == "Player")
        {
            col.transform.SetParent(null);
        }
    }
}