using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColorFlowers : MonoBehaviour
{
    public SwitchPlatformTrigger plat;
    public int baseShapeIndex;
    public int closedShapeIndex;
    public float speed = 4;
    SkinnedMeshRenderer mesh;
    AudioManager audiomanager;
    // Start is called before the first frame update
    void Start()
    {
        mesh = GetComponent<SkinnedMeshRenderer>();
        plat.GetComponent<MeshRenderer>().enabled = false;
        audiomanager = GameObject.FindObjectOfType<AudioManager>();

        if (plat.aktiv)
        {
            mesh.SetBlendShapeWeight(baseShapeIndex, 100);
            mesh.SetBlendShapeWeight(closedShapeIndex, 0);
        }
        else
        {
            mesh.SetBlendShapeWeight(baseShapeIndex, 0);
            mesh.SetBlendShapeWeight(closedShapeIndex, 100);
        }
    }

    public IEnumerator PlayAnim()
    {
        float t = 0;
        if(plat.aktiv)
        {
            audiomanager.Play("FlowerOpen");
        }
        else
        {
            audiomanager.Play("FlowerClose");
        }
        while (t <= 1)
        {
            if (plat.aktiv)
            {
                mesh.SetBlendShapeWeight(baseShapeIndex, 100 * t);
                mesh.SetBlendShapeWeight(closedShapeIndex, 100 * (1 - t));

            }
            else
            {
                mesh.SetBlendShapeWeight(baseShapeIndex, 100 * (1 - t));
                mesh.SetBlendShapeWeight(closedShapeIndex, 100 * t);
            }

            t += Time.deltaTime * speed;
            yield return null;
        }
    }

    // Update is called once per frame
    void Update()
    {
        /*
        if (plat.aktiv)
        {
            mesh.SetBlendShapeWeight(baseShapeIndex, 100);
            mesh.SetBlendShapeWeight(closedShapeIndex, 0);
        }
        else
        {
            mesh.SetBlendShapeWeight(baseShapeIndex, 0);
            mesh.SetBlendShapeWeight(closedShapeIndex, 100);
        }
        */
    }
}
