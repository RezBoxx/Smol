using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BloomSphere : MonoBehaviour
{
    public float maxExpand = 50;
    public float speed = 1;
    // Start is called before the first frame update
    void Start()
    {
        transform.localScale = Vector3.zero;
    }

    // Update is called once per frame
    void Update()
    {
        transform.localScale += speed * Time.deltaTime * Vector3.one;

        if (transform.localScale.x > maxExpand){
            Destroy(gameObject);
        }
    }
}
