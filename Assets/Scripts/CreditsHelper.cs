using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditsHelper : MonoBehaviour
{
    public Transform target;
    MeshRenderer mesh;
    // Start is called before the first frame update
    void Start()
    {
        mesh = GetComponent<MeshRenderer>();
    }

    // Update is called once per frame
    void Update()
    {
        if (target.gameObject.activeSelf)
        {
            mesh.enabled = true;
        }
        else
        {
            mesh.enabled = false;
        }
    }
}
