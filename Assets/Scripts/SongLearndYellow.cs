using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SongLearndYellow : MonoBehaviour
{
    public bool yellowSongLearnd = false;

    void Start()
    {

    }
    void OnTriggerEnter(Collider col)
    {
        if (col.gameObject.tag == "Player")
        {
            yellowSongLearnd = true;
            GetComponent<MeshRenderer>().enabled = false;
        }
    }

    void Update(){
        //Cheat code
        if (Input.GetKeyDown(KeyCode.Alpha9)){
            yellowSongLearnd = true;
        }
    }
}
