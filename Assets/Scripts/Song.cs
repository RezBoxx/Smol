using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public enum SColors { None, Red, Blue, Yellow }
public class Song : MonoBehaviour
{

    public Material Red, Yellow, Blue;
    public SColors colors;


    public float speed;
    public float songR;
    public float rtimer, ytimer = 0;                                             //red and yellow timer so you cant play them both
    MeshRenderer colorRenderer;
    Collider col;
    public bool lockr, locky = true;                                             // lock song after a time
    public bool learnR, learnY = false;                                          // gives access to the songs
    PlayerController player;
    public SongLearnRed songlearnRed;
    public SongLearndYellow songLearndYellow;
    AudioManager audiomanager;

    void Start()
    {
        transform.localScale = Vector3.zero;
        colorRenderer = GetComponent<MeshRenderer>();
        col = GetComponent<SphereCollider>();
        player = GameObject.FindObjectOfType<PlayerController>();
        songlearnRed = GameObject.FindObjectOfType<SongLearnRed>();
        songLearndYellow = GameObject.FindObjectOfType<SongLearndYellow>();
        audiomanager = GameObject.FindObjectOfType<AudioManager>();
    }
    void Update()
    {
        if(Input.GetButtonDown("RedSong")&& songlearnRed.redSongLearnd == true || Input.GetButtonDown("YellowSong" )&& songLearndYellow.yellowSongLearnd == true)
        {
            audiomanager.Play("SongSound");
        }
        if (Input.GetButton("RedSong") && !Input.GetButton("YellowSong") && ytimer == 0 && lockr == true && player.grounded == true && songlearnRed.redSongLearnd == true)
        {
            transform.localScale = Vector3.Lerp(Vector3.zero, Vector3.one * songR, rtimer); // increases Songs Range
            rtimer += Time.deltaTime * speed;

            colors = SColors.Red;                                                        //red
            colorRenderer.material = Red;

            col.enabled = true;

            if (rtimer >= 10)
            {
                /*
                lockr = false;
                rtimer = 0;
                colorRenderer.enabled = false;
                col.enabled = false;
                */
            }
        }
        if (Input.GetButtonUp("RedSong"))
        {
            audiomanager.Mute("SongSound");
            lockr = true;
            colorRenderer.enabled = true;
            col.enabled = false;
        }
        if (Input.GetButton("YellowSong") && !Input.GetButton("RedSong") && rtimer == 0 && locky == true && player.grounded == true && songLearndYellow.yellowSongLearnd == true)
        {
            transform.localScale = Vector3.Lerp(Vector3.zero, Vector3.one * songR, ytimer); // increases Songs Range
            ytimer += Time.deltaTime * speed;

            colors = SColors.Yellow;
            colorRenderer.material = Yellow;                                              // Yellow

            col.enabled = true;

            if (ytimer >= 10)
            {
                /*
                locky = false;
                ytimer = 0;
                colorRenderer.enabled = false;
                col.enabled = false;
                */
            }
        }
        if (Input.GetButtonUp("YellowSong"))
        {
            audiomanager.Mute("SongSound");
            locky = true;
            colorRenderer.enabled = true;
            col.enabled = false;
        }
        if (!Input.GetButton("YellowSong") && !Input.GetButton("RedSong"))
        {
            ytimer = 0;
            rtimer = 0;
            transform.localScale = Vector3.zero;
        }
    }

    void LateUpdate()
    {
        //Always keep same rotation
        transform.rotation = Quaternion.Euler(Vector3.zero);

    }
}
