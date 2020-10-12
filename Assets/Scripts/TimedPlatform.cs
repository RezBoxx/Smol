using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimedPlatform : MonoBehaviour
{
    public float timeLeft = 3;
    public float oldTime;
    public float respawnTime = 10;
    public bool triggered;

    Material mat;
    Color oldColor;
    public Collider box;
    // Start is called before the first frame update
    void Start()
    {
        oldTime = timeLeft;
        mat = GetComponent<MeshRenderer>().material;
        oldColor = mat.GetColor("_Color");
        box = GetComponent<Collider>();
    }

    void OnCollisionEnter(Collision col)
    {
        triggered = true;
    }

    void Respawn()
    {
        timeLeft = oldTime;
        box.enabled = true;
        triggered = false;

        locked = false;
    }

    bool locked = false;
    IEnumerator RespawnTimer()
    {
        locked = true;
        yield return new WaitForSeconds(respawnTime);
        Respawn();
    }

    // Update is called once per frame
    void Update()
    {


        if (triggered && timeLeft >= 0)
        {
            timeLeft -= Time.deltaTime;

        }

        if (timeLeft <= 0)
        {
            box.enabled = false;

            if (!locked)
            {
                StartCoroutine(RespawnTimer());
            }
        }

        mat.SetColor("_Color", new Color(oldColor.r, oldColor.g, oldColor.b, timeLeft / oldTime));

    }
}
