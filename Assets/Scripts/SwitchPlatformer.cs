using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchPlatformer : MonoBehaviour
{
    Material mat;

    public float alpha = .5f;
    public bool aktiv = false;
    Collider col;
    Color startColor;

    // Start is called before the first frame update
    void Start()
    {
        mat = GetComponent<MeshRenderer>().material;
        col = GetComponent<Collider>();
        startColor = mat.GetColor("_Color");
    }

    void OnTriggerEnter(Collider other)
    {
        //print("eaiuidhwauih");

        //Farbe muss noch überprüft werden
        if (other.tag == "RadiusTrigger")
        {
            print(Time.time + " triggered");
            aktiv = !aktiv;
        }
    }

    // Update is called once per frame
    void Update()
    {
        //col.enabled = aktiv;

        if (aktiv)
        {
            mat.SetColor("_Color", startColor);
        }
        else
        {
            Color helperColor = startColor;
            helperColor.a = alpha;

            mat.SetColor("_Color", helperColor);
        }
    }
}
