using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OptionsManager : MonoBehaviour
{
    public float brightness = 0;
    public float volume = 1;
    void Start()
    {
        DontDestroyOnLoad(this.gameObject);

        if (GameObject.FindObjectsOfType<OptionsManager>().Length > 1)
        {
            Destroy(this.gameObject);
        }
    }
}
