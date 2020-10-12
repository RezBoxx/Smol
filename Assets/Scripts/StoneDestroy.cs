using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StoneDestroy : MonoBehaviour
{
    float lerpTime = 1f;
    Vector3 startpos;
    float lastDistance;
    public float currentDistance;

    void Start()
    {
        startpos = transform.position;
    }

    void Update()
    {
        currentDistance = Vector3.Distance(transform.position, startpos);

        if (currentDistance > 100)
        {
            //transform.position = startpos;
        }

        //press P to respawn
        if (Input.GetKeyDown(KeyCode.P))
        {
            transform.position = startpos;
        }

        //debug show current distance when moved
        if (lastDistance != currentDistance)
        {
            //print(gameObject.name + " " + currentDistance);
        }

        lastDistance = currentDistance;
    }

    void OnCollisionEnter(Collision col)
    {
        Vector3 startScale = Vector3.one;
        Vector3 endScale = Vector3.zero;
        if (col.collider.tag == "Parasite Boss")
        {
            //print("BBBBBBBBBBBBBBBBBBB" + col.collider.name);
            transform.localScale = Vector3.Lerp(startScale, endScale, lerpTime);
            lerpTime += Time.deltaTime;
            if (transform.localScale.magnitude == 0)
            {
                Destroy(gameObject);

            }
        }
    }
}
