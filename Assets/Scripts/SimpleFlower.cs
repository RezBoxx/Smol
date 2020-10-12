using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SimpleFlower : MonoBehaviour
{

    public GameObject otherModel;
    RadiusTrigger radius;
    public Farben color;

    // Start is called before the first frame update
    void Start()
    {
        radius = GameObject.FindObjectOfType<RadiusTrigger>();
    }

    void OnTriggerEnter(Collider col){

        print(col.gameObject.name);
        if (col.tag == "RadiusTrigger"){
            if (radius.farbe == color){
                Instantiate(otherModel, transform.position, transform.rotation);
                Destroy(gameObject);
            }
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
