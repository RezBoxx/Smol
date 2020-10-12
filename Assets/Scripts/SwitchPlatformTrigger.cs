using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchPlatformTrigger : MonoBehaviour
{
    public Transform playerCollider;
    public bool aktiv;
    Material mat;
    public float alpha = .5f;
    public Color startColor;

    public SColors triggerColor;
    Song song;
    AudioManager audioManager;
    // Start is called before the first frame update
    void Start()
    {
        playerCollider = transform.GetChild(0);
        mat = GetComponent<MeshRenderer>().material;
        startColor = mat.GetColor(colorName);
        song = GameObject.FindObjectOfType<Song>();
    }

    public float locked;

    void OnTriggerEnter(Collider other)
    {
        if (locked < 0)
        {
            if (other.tag == "RadiusTrigger" && song.colors == triggerColor)
            {
                print("name " + other.gameObject.name);
                aktiv = !aktiv;
                locked = 1;

                //schau nach ob colorflower als target, wenn ja, spiele anim ab
                ColorFlowers[] colorflowers = GameObject.FindObjectsOfType<ColorFlowers>();

                foreach (ColorFlowers c in colorflowers)
                {
                    if (c.plat == this){
                        print(c.plat + " " + this);
                        StartCoroutine(c.PlayAnim());
                    }
                }
            }
        }

    }

    public string colorName = "_Color";

    // Update is called once per frame
    void Update()
    {
        locked -= Time.deltaTime;

        playerCollider.gameObject.SetActive(aktiv);

        if (aktiv)
        {
            mat.SetColor(colorName, startColor);
        }
        else
        {
            Color helperColor = startColor;
            helperColor.a = alpha;

            mat.SetColor(colorName, helperColor);
        }
    }
}
