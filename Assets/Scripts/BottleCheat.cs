using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BottleCheat : MonoBehaviour
{

    public GameObject[] bottles;
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Alpha8))
        {
            bottles[0].SetActive(!bottles[0].activeSelf);
        }
        if (Input.GetKeyDown(KeyCode.Alpha7))
        {
            bottles[1].SetActive(!bottles[1].activeSelf);
        }
        if (Input.GetKeyDown(KeyCode.Alpha4))
        {
            bottles[2].SetActive(!bottles[2].activeSelf);
        }
    }
}
