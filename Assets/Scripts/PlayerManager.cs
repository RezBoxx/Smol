using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerManager : MonoBehaviour
{

    public GameObject spieler, boot, bootentrance;
    public float tief, hoch;
    public Transform water;

    // Use this for initialization
    void Start()
    {

        spieler = GameObject.FindObjectOfType<Player>().gameObject;
        boot = GameObject.Find("Boat Player");
        print(boot);
        boot.SetActive(false);

    }

    public float waterspeed = 2;

    IEnumerator WaterUp()
    {
        float t = 0;
        print("water up" + Time.time);

        Vector3 pos = water.position;
        while (t <= 1)
        {
            pos.y = Mathf.Lerp(tief, hoch, t);
            water.position = pos;
            t += Time.deltaTime * waterspeed;

            yield return null;
        }

        pos.y = hoch;
        water.position = pos;
    }

    IEnumerator WaterDown()
    {
        float t = 0;
        print("water down" + Time.time);

        Vector3 pos = water.position;
        while (t <= 1)
        {
            pos.y = Mathf.Lerp(hoch, tief, t);
            water.position = pos;
            t += Time.deltaTime * waterspeed;

            yield return null;
        }

        pos.y = tief;
        water.position = pos;
    }

    public bool Near(float a, float b)
    {
        float res = a - b;
        float threshold = .1f;

        if (Mathf.Abs(res) <= threshold)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Tab))
        {
            if (Near(water.position.y, tief))
            {
                StartCoroutine(WaterUp());
                return;
            }
            if (Near(water.position.y, hoch))
            {
                StartCoroutine(WaterDown());
                return;
            }
			print("oh fuck" + Time.time);
        }
    }

    public void ChangeToBoat(GameObject be)
    {
        //bootentrance = be
        bootentrance = be;
        //deactivate player
        spieler.SetActive(false);
        //get rotation, pos from be
        Vector3 pos = be.transform.position;
        Quaternion rot = be.transform.rotation;
        //deactivate be
        be.SetActive(false);
        //activate boot
        boot.SetActive(true);
        //set to be rot and pos
        boot.transform.position = pos;
        boot.transform.rotation = rot;
        //set pivotcam rot
        GameObject.Find("boot pivot cam").transform.eulerAngles = spieler.transform.Find("pivot cam").transform.eulerAngles;

    }

    public float uppos = 2;
    public float jumpforce = 700;

    public void ChangeToPlayer()
    {
        //BIG problem wenn bootentrance null
        if (bootentrance == null)
        {
            print("AAAAAAAAAAAAAAAA wo ist das bootentrance????");
            return;
        }
        //actiavete player
        spieler.SetActive(true);
        //player pos above collider
        spieler.transform.position = boot.transform.position + (Vector3.up * uppos);
        //player jump upwards
        spieler.GetComponent<Rigidbody>().AddForce(Vector3.up * jumpforce);
        //bootentrance to boot pos and rot
        bootentrance.transform.position = boot.transform.position;
        bootentrance.transform.rotation = boot.transform.rotation;
        //deactivate boot
        boot.SetActive(false);
        //activate bootentrance
        bootentrance.SetActive(true);
        //activate collider slowly
        bootentrance.GetComponent<SphereCollider>().enabled = false;
        StartCoroutine(ColliderWait(bootentrance.GetComponent<SphereCollider>()));
        //pivotcam
        spieler.transform.Find("pivot cam").transform.eulerAngles = GameObject.Find("boot pivot cam").transform.eulerAngles;

    }

    IEnumerator ColliderWait(SphereCollider col)
    {
        yield return new WaitForSeconds(1);
        col.enabled = true;
    }


}
