using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterDirectionMover : MonoBehaviour
{
   public float moveSpeed;
   PlayerController playerC;
   public GameObject player;
   public Vector3 offset = new Vector3(0 ,1 ,0);

    void Start(){
        playerC = FindObjectOfType<PlayerController>();
    }

    void Update()
    {
        float moveVertical = Input.GetAxis("Vertical");
        float moveHorizontal = Input.GetAxis("Horizontal");

        
        Vector3 newPosition = new Vector3(moveHorizontal, 0.0f, moveVertical);

        Vector3 forward = new Vector3(playerC.camPos.forward.x, 0, playerC.camPos.forward.z).normalized;

        newPosition = Input.GetAxis("Vertical") * forward + Input.GetAxis("Horizontal")*playerC.camPos.right;
        transform.LookAt(newPosition + transform.position);
        //transform.Translate(newPosition * moveSpeed * Time.deltaTime, Space.World);
    }
    public void LateUpdate() {
    transform.position = player.transform.position + offset;
}
    
}
