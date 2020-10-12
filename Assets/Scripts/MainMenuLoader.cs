using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuLoader : MonoBehaviour
{
    AudioSource audiosource;
    void Start()
    {
        audiosource = GameObject.Find("MainMenuMusic").GetComponent<AudioSource>();

        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }    
    public void LoadGame()
    {
        SceneManager.LoadScene(1);
    }
    public void Quit()
    {
        Application.Quit();
    }
    public void Music()
    {
        audiosource.Stop();
    }
}
