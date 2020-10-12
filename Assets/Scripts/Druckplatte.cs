using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Druckplatte : MonoBehaviour
{
    [SerializeField] Animator PlateAnim;
    [SerializeField] Animator WallAnim;
    void Start()
    {
        PlateAnim = GameObject.Find("Plate").GetComponent<Animator>();
        WallAnim = GameObject.Find("Wall").GetComponent<Animator>();
    }
    void OnTriggerEnter(Collider other)
    {  
        PlateAnim.Play("PlateDownAnimation");
        WallAnim.Play("WallDownAnimation");
    }
    void OnTriggerExit(Collider other)
    {
        PlateAnim.Play("PlateUpAnimation");
        WallAnim.Play("WallUpAnimation");
    }
}
