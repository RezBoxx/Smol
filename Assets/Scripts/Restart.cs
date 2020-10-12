using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Restart : MonoBehaviour
{
    SceneLoader sceneloader;
    void Start()
    {
        sceneloader = FindObjectOfType<SceneLoader>();
    }

    public void RestartScenes()
    {
        sceneloader.RestartGame();
    }
}
