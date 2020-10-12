using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TentakelFollow : MonoBehaviour
{
    public Transform target;
    public Vector3 lastPos;
    // Start is called before the first frame update
    void Start()
    {
        //auto target if empty
        if (target == null)
        {
            foreach (Collider c in Physics.OverlapSphere(transform.position, 1))
            {
                if (c.tag == "Parasite" && c.gameObject.name != "Parasito (3)")
                {
                    target = c.transform;
                }
            }
        }

        target.GetComponent<MeshRenderer>().enabled = false;

        lastPos = target.position;
    }

    // Update is called once per frame
    void Update()
    {
        transform.position += target.position - lastPos;
        lastPos = target.position;
    }

}
