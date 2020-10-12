using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Grow : MonoBehaviour
{
    public Transform flower;
    public float growtime = .5f;
    public bool grown = false;

    void Start()
    {
        flower.localScale = Vector3.zero;
    }
    void OnTriggerEnter(Collider col){
        Samen sam = col.GetComponent<Samen>();
        FindObjectOfType<AudioManager>().Play("SeedPlacedSound");
        if(sam && !grown){
            grown = true;
            StartCoroutine(Gro(col));
        }
    }
    IEnumerator Gro(Collider col){
        float t = 0;

        col.gameObject.SetActive(false);

        while(t <= 1)
        {
            flower.localScale = Vector3.Lerp(Vector3.zero,Vector3.one,t);
            t+= Time.deltaTime / growtime;
        }

        yield return null;

    }
}
