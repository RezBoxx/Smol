using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SingleContactPlatform : MonoBehaviour
{
    private bool used;
    private float scaleDownSpeed = 8;
    private float respawnTime = 10;
    private Vector3 startScale;

    // Start is called before the first frame update
    void Start()
    {
        startScale = transform.localScale;
    }

    void OnCollisionEnter(Collision col)
    {
        used = true;
    }

    //braucht noch respawn funktion


    IEnumerator Disappear()
    {
        float t = 0;

        while (t <= 1)
        {
            transform.localScale = Vector3.Lerp(startScale, Vector3.zero, t);
            t += Time.deltaTime * scaleDownSpeed;

            yield return null;
        }

        transform.localScale = Vector3.zero;
    }
    void OnCollisionExit(Collision col)
    {
        used = false;
        StartCoroutine(Disappear());
    }

    // Update is called once per frame
    void Update()
    {

    }
}
