using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OldLeaf : MonoBehaviour
{

    public TimedPlatform plat;
    Material mat;

    // Start is called before the first frame update
    void Start()
    {
        mat = Instantiate(GetComponent<MeshRenderer>().material);
        GetComponent<MeshRenderer>().material = mat;

        Collider[] cols = Physics.OverlapSphere(transform.position, 2);
        plat = cols[0].GetComponent<TimedPlatform>();
        plat.GetComponent<MeshRenderer>().enabled = false;
    }

    // Update is called once per frame
    void Update()
    {
        mat.SetFloat("_maskpower", 1 - plat.timeLeft);
    }
}
