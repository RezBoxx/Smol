using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SongLearnRed : MonoBehaviour
{
    public bool redSongLearnd = false;

    void Start()
    {

    }
    void OnTriggerEnter(Collider redLearnCol)
    {
        if (redLearnCol.gameObject.tag == "Player")
        {
            redSongLearnd = true;
            GetComponent<MeshRenderer>().enabled = false;
        }
    }

    void Update(){
        //Cheat code
        if (Input.GetKeyDown(KeyCode.Alpha9)){
            redSongLearnd = true;
        }
    }
}
