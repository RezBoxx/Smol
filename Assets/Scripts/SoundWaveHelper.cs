using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundWaveHelper : MonoBehaviour
{
    Vector3 eulers = new Vector3(-90, 0, 0);
    public Material mat;
    public MeshRenderer parentMesh;


    // Start is called before the first frame update
    void Start()
    {

        //gette das parent material
        parentMesh = transform.parent.GetComponent<MeshRenderer>();

        //mache instanz des eigenen materials damit man es verändern kann
        mat = Instantiate(GetComponent<MeshRenderer>().material);
        GetComponent<MeshRenderer>().material = mat;
    }

    // Update is called once per frame
    void LateUpdate()
    {
        //transform.rotation = Quaternion.Euler(eulers);

        mat.SetColor("_color", parentMesh.material.GetColor("_Color"));
    }
}
