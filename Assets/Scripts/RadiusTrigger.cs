using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum Farben { red, yellow, blue, none };
public class RadiusTrigger : MonoBehaviour
{
    public bool blockInput;
    public float speed = 4;
    public float maxRadius = 10;
    //color, material, enum, 
    //colors red, blue, yellow

    public Material red, yellow, blue;
    Material currentMaterial;
    public Farben farbe;
    Collider col;
    MeshRenderer render;

    // Start is called before the first frame update
    void Start()
    {
        transform.localScale = Vector3.zero;
        col = GetComponent<Collider>();
        render = GetComponent<MeshRenderer>();
        
    }

    public float t = 0;

    // Update is called once per frame
    void Update()
    {

        //blockinput erstmal weg
        if (Input.GetButton("Red") && !Input.GetButton("Yellow"))
        {
            transform.localScale = Vector3.Lerp(Vector3.zero, Vector3.one * maxRadius, t);
            t += Time.deltaTime * speed;
            blockInput = false;
            //red
            farbe = Farben.red;
            render.material = red;
        }
        if (Input.GetButton("Yellow") && !Input.GetButton("Red"))
        {
            transform.localScale = Vector3.Lerp(Vector3.zero, Vector3.one * maxRadius, t);
            t += Time.deltaTime * speed;
            blockInput = false;
            //yellow
            farbe = Farben.yellow;
            render.material = yellow;
        }
        if (!Input.GetButton("Red") && !Input.GetButton("Yellow"))
        {
            t = 0;
            transform.localScale = Vector3.zero;
            blockInput = false;
        }

        if (transform.localScale == Vector3.zero)
        {
            col.enabled = false;
            //print("col is disabled " + Time.time);
        }
        else
        {
            col.enabled = true;
        }
    }
}
