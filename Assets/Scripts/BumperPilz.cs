using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BumperPilz : MonoBehaviour
{
    public float playerForce, appleForce;
    public float scaleUp = 1.2f;
    public Transform bumpo;
    public AnimationCurve anim;
    AudioManager audioManager;

    void Start()
    {
        audioManager = GameObject.FindObjectOfType<AudioManager>();
        //bumpo = transform.Find("bumpo");
        //print(bumpo);
    }

    void ApplyForce(float power, Transform target)
    {
        //print(target);
        //direction berechnen
        Vector3 dir = target.position - transform.position;
        target.GetComponent<Rigidbody>().AddForce(dir * power);
        //print(dir*power);
        StartCoroutine(BumpoAnim());

    }

    public float speed = 4;

    IEnumerator BumpoAnim()
    {
        float t = 0;

        while (t <= 1)
        {
            bumpo.localScale = Vector3.one * anim.Evaluate(t);
            t += Time.deltaTime * speed;

            yield return null;
        }
    }

    void OnCollisionEnter(Collision col)
    {
        if (col.collider.tag == "Player")
        {
            audioManager.Play("BumperSound");
            ApplyForce(playerForce, col.transform);
        }
        if (col.collider.tag == "Apple")
        {
            audioManager.Play("BumperSound");
            ApplyForce(appleForce, col.transform);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
