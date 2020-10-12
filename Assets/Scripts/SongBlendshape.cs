using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SongBlendshape : MonoBehaviour
{

    public float speed = 1;
    public int index;
    public SColors farbe;
    public bool locked;
    SkinnedMeshRenderer mesh;

    // Start is called before the first frame update
    void Start()
    {
        mesh = GetComponent<SkinnedMeshRenderer>();
    }

    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "RadiusTrigger" && !locked)
        {
            Song s = col.GetComponent<Song>();

            if (s.colors == farbe)
            {
                //print(gameObject.name);
                locked = true;
                StartCoroutine(LerpBlendshape());
            }
        }
    }

    IEnumerator LerpBlendshape()
    {
        float t = 0;

        while (t <= 1)
        {
            mesh.SetBlendShapeWeight(index, (1-t)*100);
            t += Time.deltaTime * speed;

            yield return null;
        }
    }

    // Update is called once per frame
    void Update()
    {

    }
}
