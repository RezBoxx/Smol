using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Erdhugel : MonoBehaviour
{
    public Transform blume;
    public float growtime = .5f;
    public bool gewachsen = false;
    // Start is called before the first frame update
    AudioManager audiomanager;
    void Start()
    {
        blume.localScale = Vector3.zero;
        audiomanager = GameObject.FindObjectOfType<AudioManager>();
    }

    void OnTriggerEnter(Collider col){
        Samen sam = col.GetComponent<Samen>();

        if (sam && !gewachsen){
            audiomanager.Play("SeedPlacedSound");
            gewachsen = true;
            StartCoroutine(Grow(col));
        }
    }

    IEnumerator Grow(Collider col){
        float t = 0;

        col.gameObject.SetActive(false);

        while (t <= 1){
            blume.localScale = Vector3.Lerp(Vector3.zero, Vector3.one, t);
            t += Time.deltaTime / growtime;

            yield return null;
        }

        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
