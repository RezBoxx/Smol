using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Aufzug : MonoBehaviour
{
    public float speed = 1;
    public Farben farbe = Farben.red;
    public Transform target;
    public Vector3 startpos, targetpos;
    public bool amZiel;
    Rigidbody body;
    // Start is called before the first frame update
    void Start()
    {
        target = transform.GetChild(0);
        target.gameObject.SetActive(false);
        startpos = transform.position;
        targetpos = target.position;
        body = GetComponent<Rigidbody>();
    }

    public bool locked;

    IEnumerator MoveTo(Vector3 start, Vector3 end)
    {
        Vector3 helperpos;
        if (!locked)
        {
            locked = true;
            float t = 0;

            while (t <= 1)
            {
                helperpos = Vector3.Lerp(start, end, t);
                //body.MovePosition(helperpos);
                transform.position = helperpos;

                t += Time.deltaTime * speed;

                yield return null;
            }
            locked = false;
        }

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

    void OnTriggerEnter(Collider other)
    {

        //farbe muss noch überprugft werden

        if (!locked)
        {
            if (other.tag == "RadiusTrigger")
            {
                //print("trigger " + Time.time + " ziel " + amZiel + " locked " + locked + " " + transform.position);

                if (!amZiel)
                {
                    StartCoroutine(MoveTo(startpos, targetpos));
                    amZiel = true;
                }
                else
                {
                    StartCoroutine(MoveTo(targetpos, startpos));
                    amZiel = false;
                }
            }
        }


    }

    // Update is called once per frame
    void Update()
    {

    }
}
