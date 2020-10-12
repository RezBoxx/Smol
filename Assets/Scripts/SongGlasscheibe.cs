using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SongGlasscheibe : MonoBehaviour
{

    public GameObject brokenGlas;
    public SColors triggerColor;
    Song song;
    AudioManager audiomanager;
    // Start is called before the first frame update
    void Start()
    {
        audiomanager = GameObject.FindObjectOfType<AudioManager>();
        song = GameObject.FindObjectOfType<Song>();
    }

    void BreakGlas(){

        GameObject g = Instantiate(brokenGlas, transform.position, transform.rotation) as GameObject;
        g.transform.localScale = transform.localScale;
        audiomanager.Play("GlassDestroyed");
        Destroy(gameObject);

    }

    void OnTriggerEnter(Collider other)
    {

        if (other.tag == "RadiusTrigger" && song.colors == triggerColor)
        {
            
            print("name " + other.gameObject.name);
            BreakGlas();

        }

    }

    // Update is called once per frame
    void Update()
    {

    }
}
