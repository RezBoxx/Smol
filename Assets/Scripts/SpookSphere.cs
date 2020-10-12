using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpookSphere : MonoBehaviour
{

    public float dissolveSpeed = 1;
    Material mat;
    public float startValue;
    public Transform parasit;

    // Start is called before the first frame update
    void Start()
    {
        mat = Instantiate(GetComponent<MeshRenderer>().material);
        GetComponent<MeshRenderer>().material = mat;
        startValue = mat.GetFloat("_Dissolve");
    }

    public void Dissolve()
    {
        StartCoroutine(Dissolver());
    }

    IEnumerator Dissolver()
    {
        float t = 0;

        while (t <= 1)
        {
            mat.SetFloat("_Dissolve", Mathf.Lerp(startValue, 0, t));
            t += Time.deltaTime * dissolveSpeed;

            yield return null;
        }
    }

    // Update is called once per frame
    void Update()
    {

        //only for debug, muss später weg
        if (Input.GetKeyDown(KeyCode.I))
        {
            //Dissolve();
        }

        if (parasit != null)
        {
            if (parasit.localScale.magnitude <= .1f)
            {
                Dissolve();
            }
        }
    }
}
