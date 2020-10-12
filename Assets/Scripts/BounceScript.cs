using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BounceScript : MonoBehaviour
{
    public float force;
    void OnCollisionEnter(Collision Other)
    {
        Other.rigidbody.AddForce(Vector3.up* force,ForceMode.Impulse);
    }

}
