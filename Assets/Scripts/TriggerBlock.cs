using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TriggerBlock : MonoBehaviour
{

    MeshRenderer render;
    GameObject block;

    public bool visible = true;

    // Use this for initialization
    void Start()
    {

        render = GetComponent<MeshRenderer>();
        block = transform.Find("Block").gameObject;
        render.enabled = visible;
        block.SetActive(false);

    }

    void OnTriggerEnter(Collider other)
    {


        if (other.GetComponent<Frend>())
        {
            block.SetActive(true);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
