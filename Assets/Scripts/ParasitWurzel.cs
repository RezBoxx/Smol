using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ParasitWurzel : MonoBehaviour
{
    Vector3 startScale;
    public int health = 3;
    public Vector3 scaleFactor;
    public GameObject effect;
    public Transform bloomsphere;
    public AnimationCurve animBloom;
    public Transform follower;
    public float speed = 4;
    public float[] scales = new float[4];
    public Transform VerschwindeObj;
    public Transform AppearObj;
    AudioManager audiomanager;
    public Transform[] tentacles;
    public string MuteSource;
    public Transform pointlight;
    // Start is called before the first frame update
    void Start()
    {
        startScale = transform.localScale;
        scaleFactor = startScale / health;

        //scale arraay zur kontrolle
        scales[1] = 1;
        scales[2] = 2;
        scales[3] = 3;

        bloomsphere = transform.Find("prefab bloom sphere");
        //bloomsphere.parent = null;

        //Lass AppeaObj kurz am leben damit die ref klappt

        audiomanager = GameObject.FindObjectOfType<AudioManager>();
        if (AppearObj != null)
        {
            AppearObj.gameObject.SetActive(true);
            StartCoroutine(DisableAppearObj());
        }

    }

    IEnumerator DisableAppearObj()
    {
        yield return new WaitForSeconds(1);
        AppearObj.gameObject.SetActive(false);
    }

    void OnCollisionEnter(Collision col)
    {
        print("AAAAAAAAAA" + col.collider.name);
        if (col.collider.tag == "Tragbar")
        {
            audiomanager.Play("ParasyteHitSound");
            print("hit " + Time.time);
            health--;
            StartCoroutine(Feedback());
        }
    }

    IEnumerator Feedback()
    {
        float t = 0;
        float scale = 0;

        GameObject g = Instantiate(effect, transform.position, transform.rotation) as GameObject;
        g.transform.localScale = scales[health + 1] * Vector3.one;

        //Instantiate(bloomsphere, transform.position, transform.rotation);

        while (t <= 1)
        {
            transform.localScale = Vector3.Lerp((health + 1) * scaleFactor, health * scaleFactor, t);
            //bloomsphere.localScale = Vector3.Lerp(Vector3.one * bloomMinScale, bloomMaxScale * Vector3.one, t);
            scale = animBloom.Evaluate(t);
            bloomsphere.localScale = Vector3.one * scale;

            t += Time.deltaTime * speed;

            yield return null;
        }

        t = 0;
        scale = animBloom.Evaluate(t);
        bloomsphere.localScale = Vector3.one * scale;

        if (health <= 0)
        {
            audiomanager.Play("ParasyteDeath");
            audiomanager.MuteFadeOut(MuteSource);
            //Destroy(gameObject);
            transform.localScale = Vector3.zero;

            if (VerschwindeObj != null)
            {
                //VerschwindeObj.gameObject.SetActive(false);
                StartCoroutine(DisableVerschwindObj());
            }

            if (AppearObj != null)
            {
                AppearObj.gameObject.SetActive(true);
            }

            if (tentacles.Length > 0)
            {
                foreach (Transform a in tentacles)
                {
                    a.gameObject.SetActive(false);
                }
            }

            if (pointlight != null)
            {
                pointlight.gameObject.SetActive(false);
            }
        }

        //bloomsphere.localScale = Vector3.zero;
    }

    IEnumerator DisableVerschwindObj()
    {
        float t = 0;

        Vector3 oldScale = VerschwindeObj.localScale;

        while (t <= 1)
        {
            VerschwindeObj.localScale = Vector3.Lerp(oldScale, Vector3.zero, t);
            t += Time.deltaTime;

            yield return null;
        }

        VerschwindeObj.gameObject.SetActive(false);
    }

    // Update is called once per frame
    void Update()
    {
        //transform.localScale = health * scaleFactor;

        if (follower != null)
        {
            transform.position = follower.position;
        }


        //debug hack cheat
        if (Input.GetKeyDown(KeyCode.Alpha0))
        {

            audiomanager.MuteFadeOut(MuteSource);

            if (VerschwindeObj != null)
            {
                //VerschwindeObj.gameObject.SetActive(false);
                transform.localScale = Vector3.zero;
                StartCoroutine(DisableVerschwindObj());
            }

            if (AppearObj != null)
            {
                AppearObj.gameObject.SetActive(true);
            }
        }
    }
}
