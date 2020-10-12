using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoader : MonoBehaviour
{
    //public Scene[] scenes;
    // Start is called before the first frame update

    public int numScenes = 4;
    public bool anfang;
    void Start()
    {


        for (int i = 1; i <= numScenes; i++)
        {
            SceneManager.LoadScene(i + SceneManager.GetActiveScene().buildIndex, LoadSceneMode.Additive);
        }
    }

    public void RestartGame()
    {
        print(SceneManager.GetActiveScene().buildIndex);
        SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            //SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex);
            RestartGame();
        }
    }
}
