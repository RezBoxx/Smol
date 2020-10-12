using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PauseMenu : MonoBehaviour
{
    public bool GameIsPaused = false;

    public GameObject pauseMenuUI;
    private GameObject mainMenu;


    void Start()
    {
        mainMenu = GameObject.Find("MainMenu");
    }


    void Update()
    {
        if(Input.GetButtonDown("Pause") /*&& mainMenu.activeSelf == false*/)
        {
            if(GameIsPaused)
            {
                Resume();
            }
            else
            {
                Pause();
            }
        }
    }
    public void Resume()
    {
        //print(Time.time + " resume");
        Time.timeScale = 1f;
        GameIsPaused = false;

        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        pauseMenuUI.SetActive(false);
        
    }
    void Pause()
    {
        Cursor.visible = true;
        Cursor.lockState = CursorLockMode.None;

        pauseMenuUI.SetActive(true);
        Time.timeScale = 0f;
        GameIsPaused = true; 
    }
    public void BacktoMenu()
    {
        Time.timeScale = 1f;
        SceneManager.LoadScene(0);
        
    }
    public void QuitGame()
    {
        Application.Quit();
    }
}
