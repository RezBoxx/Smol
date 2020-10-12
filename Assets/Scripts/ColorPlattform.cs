using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColorPlattform : MonoBehaviour
{
    public float speed = 1;
    public SColors scolor;    
    public Transform target;
    public Vector3 startpos,endpos;
    public bool amZiel,stopmov;
    Rigidbody rb;
    Song rt;
    
    void Start()
    {
        target = transform.GetChild(0);
        target.gameObject.SetActive(false);
        startpos = transform.position;
        endpos = target.position;
        rb = GetComponent<Rigidbody>();
        rt = GameObject.FindObjectOfType<Song>();    
    }
    IEnumerator MoveTo(Vector3 start, Vector3 end)
    {
        Vector3 helperpos;
        if(!stopmov)
        {
            stopmov = true;
            float movTime = 0;
            while(movTime <=1)
            {
                helperpos = Vector3.Lerp(start,end, movTime);
                transform.position = helperpos;
                movTime += Time.deltaTime * speed;
                yield return null;
            }
            stopmov = false;
        }
    }
    void OnCollisionEnter(Collision col)
    {
        if (col.collider.tag == "Player")
        {
            col.transform.SetParent(transform);
        }
    }
    void OnCollisionExit (Collision col)
    {   
        if(col.collider.tag=="Player")
        {
        col.transform.SetParent(null);
        }
    }
    void OnTriggerEnter(Collider other)
    {  
        if(other.tag =="RadiusTrigger" && rt.colors == scolor && !stopmov)
        {
            if(!amZiel)
            {
                StartCoroutine(MoveTo(startpos,endpos));
                amZiel = true;
            }
            else
            {
                StartCoroutine(MoveTo(endpos,startpos));
                amZiel = false;
            }
        }
   }
}
