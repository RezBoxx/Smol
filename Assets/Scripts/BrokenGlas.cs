using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BrokenGlas : MonoBehaviour
{
    public Transform[] splitter;
    public float lifetime = 2;
    public float shrinkSpeed = 4;
    public float mass = .1f;
    public Material mat;
    Color startcolor;
    // Start is called before the first frame update
    void Start()
    {
        startcolor = mat.GetColor("_Color");
        mat = Instantiate(mat);

        //füge alle splitter ins splitter array ein
        List<Transform> l = new List<Transform>();

        foreach (Transform t in transform)
        {
            l.Add(t);
        }

        splitter = l.ToArray();


        //change splitter here
        foreach (Transform t in splitter)
        {
            t.GetComponent<Rigidbody>().mass = mass;
            t.GetComponent<MeshRenderer>().material = mat;
        }


        //unparent splitter
        foreach (Transform t in splitter)
        {
            t.SetParent(null);
        }



        StartCoroutine(Despawn());
    }

    IEnumerator Despawn()
    {
        mat.SetFloat("_SuperOpacity", .5f);
        yield return new WaitForSeconds(lifetime);

        foreach (Transform s in splitter)
        {
            Destroy(s.GetComponent<Rigidbody>());
            s.GetComponent<Collider>().enabled = false;
        }
        //FindObjectOfType<AudioManager>().Play("GlassDestroyed");
        float t = 0;

        while (t <= 1)
        {

            //mat.SetColor("_Color", new Color(startcolor.r, startcolor.g, startcolor.b, startcolor.a * (1-t)));
            mat.SetFloat("_SuperOpacity", Mathf.Lerp(.5f, 0, t));
            mat.SetFloat("_intensity", Mathf.Lerp(.1f, 0, t));
            //mat.SetFloat("_intensity", Mathf.Lerp(0, 0, t));


            t += Time.deltaTime * shrinkSpeed;

            yield return null;
        }

        foreach (Transform s in splitter)
        {
            Destroy(s.gameObject);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
