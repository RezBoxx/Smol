using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[ExecuteInEditMode]
public class Brightness : MonoBehaviour
{
    public float brightness;
    public Material material;
    OptionsManager options;
    // Start is called before the first frame update
    void Start()
    {
        options = GameObject.FindObjectOfType<OptionsManager>();
        //brightness = options.brightness;

        material = Instantiate(material);
    }

    void OnRenderImage(RenderTexture src, RenderTexture dest){

        Graphics.Blit(src, dest, material);
        
    }

    // Update is called once per frame
    void Update()
    {
        brightness = options.brightness;
        material.SetFloat("_Brightness", brightness);
    }
}
