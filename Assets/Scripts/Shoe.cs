using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shoe : MonoBehaviour
{

    public Light licht;

    public float speed, max, min, waittime, lichtspeed;

    Transform spieler;

    public Vector3 targetpos;

    // Use this for initialization
    void Start()
    {

        spieler = GameObject.FindObjectOfType<Player>().transform;

        StartCoroutine(Targeting());

    }

    public bool fertig;

    IEnumerator Targeting()
    {
        fertig = false;
        licht.shadowStrength = 0;
        float t = 0;

        targetpos = spieler.position;
        targetpos.y = max;

        //random rot
        transform.Rotate(Vector3.up, Random.Range(0, 180), Space.World);

        transform.position = targetpos;
        Vector3 startpos = transform.position;

        //waittime
        //ersetzen mit light lerp
        //yield return new WaitForSeconds(waittime);
        while (t < 1)
        {
            t += Time.deltaTime * lichtspeed;
            licht.shadowStrength = Mathf.Lerp(0, 1, t);

            yield return null;
        }

        t = 0;


        targetpos.y = min;


        //shoe down
        while (t < 1)
        {
            t += Time.deltaTime * speed;
            transform.position = Vector3.Lerp(startpos, targetpos, t);

            yield return null;
        }

        //waittime
        yield return new WaitForSeconds(waittime);

        //shoe up init
        targetpos.y = max;
        startpos = transform.position;
        t = 0;

        //shoe up
        while (t < 1)
        {
            t += Time.deltaTime * speed;
            transform.position = Vector3.Lerp(startpos, targetpos, t);

            yield return null;
        }

        //light lerp back
        t = 0;
        while (t < 1)
        {
            t += Time.deltaTime * lichtspeed;
            licht.shadowStrength = Mathf.Lerp(1, 0, t);

            yield return null;
        }

        fertig = true;
    }

    // Update is called once per frame
    void Update()
    {
        if (fertig)
        {
            StartCoroutine(Targeting());

        }
    }
}
