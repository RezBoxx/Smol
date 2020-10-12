using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DeathFade : MonoBehaviour
{
    public Material mat;
    PlayerController spieler;
    bool anfang;
    SceneLoader loader;

    void Start()
    {
        spieler = GameObject.FindObjectOfType<PlayerController>();


        loader = GameObject.FindObjectOfType<SceneLoader>();
        //anfang = loader.anfang; //AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
    }

    void Update()
    {
        if (anfang){
            t += Time.deltaTime * 0.1f;
        }
    }

    float t = 0;

    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {


        if (!anfang)
        {
            mat.SetFloat("_health", spieler.health);
            Graphics.Blit(src, dest, mat);
        }
        else
        {
            //print("anfang");
            mat.SetFloat("_health", t);
            Graphics.Blit(src, dest, mat);
        }
    }
}
