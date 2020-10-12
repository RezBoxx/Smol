using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Fadeout : MonoBehaviour
{
    public float farbe = 1;
    public float speed = 1;
    public Material material;
    public int state = 0;
    public int nextScene = 1;
    public bool shouldLoad = false;
    // Start is called before the first frame update
    void Start()
    {

        //Material Instance
        material = Instantiate(material);

        if (state == 0)
        {
            StartCoroutine(FadeIn());
        }
    }

    IEnumerator FadeIn()
    {
        float t = 0;
        state = 1;

        while (t <= 1)
        {
            material.SetFloat("_Alpha", t);
            t += Time.deltaTime * speed;

            yield return null;
        }

        state = 2;
    }

    IEnumerator FadeIn2()
    {
        float t = 0;
        state = 1;

        while (t <= 1)
        {
            material.SetFloat("_Alpha", t);
            t += Time.deltaTime * speed;

            yield return null;
        }

        material.SetFloat("_Alpha", 1);
        state = 8;
    }

    IEnumerator FadeOut()
    {
        float t = 0;
        state = 3;

        while (t <= 1)
        {
            material.SetFloat("_Alpha", 1 - t);
            t += Time.deltaTime * speed;

            yield return null;
        }

        state = 4;
    }

    IEnumerator FadeOut2()
    {
        float t = 0;
        state = 10;

        while (t <= 1)
        {
            material.SetFloat("_Alpha", 1 - t);
            t += Time.deltaTime * speed;

            yield return null;
        }

        state = 11;
        SceneManager.LoadScene(nextScene);
    }

    void OnRenderImage(RenderTexture src, RenderTexture dest)
    {
        Graphics.Blit(src, dest, material);
    }

    // Update is called once per frame
    void Update()
    {
        material.SetFloat("_Color", farbe);

        if (state == 0)
        {
            StartCoroutine(FadeIn());
        }

        if (state == 2 && Input.anyKeyDown)
        {
            StartCoroutine(FadeOut());
        }

        if (state == 7)
        {
            StartCoroutine(FadeIn2());
        }

        if (state == 4 && shouldLoad)
        {
            SceneManager.LoadScene(nextScene);
            state = 5;
        }

        if (state == 9 && shouldLoad)
        {
            //SceneManager.LoadScene(nextScene);
            //state = 5;
            StartCoroutine(FadeOut2());
        }
    }
}
