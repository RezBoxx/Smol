using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class PlayerController : MonoBehaviour
{
    public int dead;
    public float moveSpeed, movesens;
    public float Jumpforce, throwForce = 1000;
    public float roty, rotx;
    public float fallMultiplier;
    public float lowJumpMultiplier;
    public LayerMask layerMask;
    public Vector3 lastCheckpointpos;
    public Transform camPos;
    Rigidbody Rb;
    Collider col;
    public bool grounded;
    public bool tragend = false;
    public bool lastFrame = false;
    public GameObject tragObj;
    public float pickupRadius = 2;
    public float parabeldiv = 2;
    public bool jumpingAllowed = true;
    GameObject companion;
    CompanionNav companionNav;
    private GameObject Camera;
    PauseMenu pauseMenu;
    public GameObject mainMenu;
    Transform charactermesh;
    public bool moveBlock;
    public bool superBlock;
    public float health;
    public bool allowHealing;
    Checkpoint checkpoint;
    Checkpoint[] checkpoints;
    [SerializeField] Animator animationConttroller;
    AudioManager audioManager;
    public Vector3 SweeptestDirectionOffset = new Vector3(0, .1f, 0);
    public float jumpBuffer;
    public float maxJumpBuffer = .5f;
    Fadeout fader;

    void Start()
    {
        audioManager = GameObject.FindObjectOfType<AudioManager>();
        Camera = GameObject.Find("Camera");
        Rb = GetComponent<Rigidbody>();
        camPos = transform.Find("camHolder").transform;
        col = GetComponent<Collider>();
        //companion = GameObject.Find("Companion");
        //companion.GetComponent<CompanionNav>();
        pauseMenu = GameObject.FindObjectOfType<PauseMenu>();
        mainMenu = GameObject.Find("MainMenu");
        charactermesh = GameObject.Find("Mesh_Smol_Test").transform;
        checkpoint = GameObject.FindObjectOfType<Checkpoint>();

        //Cursor
        Cursor.visible = false;
        Cursor.lockState = CursorLockMode.Locked;

        health = 1;

        //find all checkpoints
        checkpoints = GameObject.FindObjectsOfType<Checkpoint>();
        audioManager.Play("AtmoSmol");
        audioManager.Play("Gameplay1Music");

        fader = GameObject.FindObjectOfType<Fadeout>();



        //Framerate
        //Application.targetFrameRate = 30;

    }

    void AutoHealing()
    {
        if (allowHealing)
        {
            health += Time.deltaTime;
            health = Mathf.Clamp01(health);

        }
    }

    Vector3 debugpos;

    void OnDrawGizmos()
    {
        Gizmos.DrawWireSphere(debugpos, .1f);
    }

    void FixedUpdate()
    {
        if (pauseMenu.GameIsPaused == true)
        {
            //Cursor.visible = true;
            //Cursor.lockState = CursorLockMode.None;
        }

        if (pauseMenu.GameIsPaused == false /*&& mainMenu.activeSelf == false*/)
        {
            //Cursor.visible = false;
            //Cursor.lockState = CursorLockMode.Locked;

            //Movement
            if (moveBlock == true)
            {
                animationConttroller.SetBool("IdleAnim1", true);
                animationConttroller.SetBool("WalkingAnim", false);
                audioManager.Pause("PlayerWalk1");
            }
            if (moveBlock == false)
            {

                Vector3 dir = Input.GetAxis("Vertical") * 1 * Rb.transform.forward + Input.GetAxis("Horizontal") * 1 * camPos.right;
                //dir.y = 0;
                //dir = dir.normalized;
                Rb.MovePosition(transform.position + dir * moveSpeed);
                //print(dir);

                // Walk Animation and Sound
                if (dir.magnitude >= 0.1f)
                {
                    if (grounded)
                    {
                        //audioManager.UnPause("PlayerWalk1");
                        audioManager.PlayIfNotInUse("PlayerWalk1");
                        //audioManager.Pause("PlayerWalk1");
                    }

                    animationConttroller.SetBool("IdleAnim1", false);
                    animationConttroller.SetBool("WalkingAnim", true);
                    if (tragend == true)
                    {
                        animationConttroller.SetBool("WalkingAnim", false);
                        animationConttroller.SetBool("IdleAnim1", false);
                        animationConttroller.SetBool("CarryIdleAnim", false);
                        animationConttroller.SetBool("CarryWalkAnim", true);
                    }
                    else
                    {
                        animationConttroller.SetBool("CarryIdleAnim", false);
                        animationConttroller.SetBool("CarryWalkAnim", false);
                    }
                    //Reset Bool
                    animationConttroller.SetBool("DropItemAnim", false);
                    animationConttroller.SetBool("ThrowingAnim", false);
                    animationConttroller.SetBool("JumpWithPick", false);
                }
                else
                {
                    if (grounded)
                    {
                        //audioManager.Play("PlayerWalk1");
                    }

                    audioManager.Pause("PlayerWalk1");

                    if (!tragend)
                    {
                        animationConttroller.SetBool("WalkingAnim", false);
                    }
                    if (tragend == true)
                    {
                        animationConttroller.SetBool("WalkingAnim", false);
                        animationConttroller.SetBool("IdleAnim1", false);
                        animationConttroller.SetBool("CarryIdleAnim", true);
                        animationConttroller.SetBool("CarryWalkAnim", false);
                    }
                    else
                    {
                        animationConttroller.SetBool("CarryIdleAnim", false);
                        animationConttroller.SetBool("CarryWalkAnim", false);
                    }
                }
                animationConttroller.SetBool("IdleAnim1", true);

                if (!grounded)
                {
                    audioManager.Pause("PlayerWalk1");
                }
            }
            //Mouse
            rotx += Input.GetAxis("Mouse X") * movesens;
            roty += Input.GetAxis("Mouse Y") * -movesens;
            roty = Mathf.Clamp(roty, -45, 30);
            camPos.transform.localRotation = Quaternion.Euler(roty, 0f, 0f);
            transform.rotation = Quaternion.Euler(0f, rotx * 3, 0f);


            AutoHealing();

            //health not below 0
            if (health < 0)
            {
                health = 0;
                //checkpoint.Respawn();

            }


        }
    }

    public void DeathHelper()
    {
        dead = 1;
    }

    //Better Death lol
    IEnumerator Death()
    {
        float t = 0;

        fader.farbe = 0;

        while (t <= 1)
        {
            superBlock = true;
            AnimSmol.localScale = Vector3.Lerp(Vector3.one, Vector3.zero, t);

            fader.material.SetFloat("_Alpha", 1 - t);

            t += Time.deltaTime * 2;

            yield return null;
        }

        foreach (Checkpoint c in checkpoints)
        {
            c.Respawn();
        }

        t = 0;
        fader.material.SetFloat("_Alpha", 0);

        while (t <= 1)
        {
            superBlock = true;
            AnimSmol.localScale = Vector3.Lerp(Vector3.one, Vector3.zero, 1 - t);

            fader.material.SetFloat("_Alpha", t);

            t += Time.deltaTime * 2;

            yield return null;
        }

        AnimSmol.localScale = Vector3.one;
        fader.material.SetFloat("_Alpha", 1);

        //nocheinmal kurz warten bis man input geben kann
        yield return new WaitForSeconds(.2f);

        superBlock = false;
        dead = 0;

        fader.farbe = 1;
    }
    void OnTriggerEnter(Collider c)
    {
        if (c.tag == "SongTrigger1")
        {
            audioManager.MuteFadeOut("Gameplay1Music");
            audioManager.PlayFadeIn("SmolBossFightAtmo", 3, .5f);
        }
        if (c.tag == "SongTrigger5")
        {
            audioManager.MuteFadeOut("SmolBossFightAtmo");
            audioManager.PlayFadeIn("Gameplay4Music", 3);
        }
        if (c.tag == "SongTrigger2")
        {
            audioManager.MuteFadeOut("Gameplay4Music");
            audioManager.PlayFadeIn("SmolBossFightAtmo", 3, .5f);
            audioManager.MuteFadeOut("Gameplay1Music");
        }
        if (c.tag == "SongTrigger3")
        {
            audioManager.MuteFadeOut("SmolBossFightAtmo");
            audioManager.PlayFadeIn("Gameplay1Music", 3);
        }
        if (c.tag == "SongTrigger4")
        {
            audioManager.MuteFadeOut("Gameplay1Music");
            audioManager.PlayFadeIn("SmolBossFightComplete", 5, .5f);
        }
    }
    void OnCollisionEnter(Collision c)
    {

        if (c.collider.tag == "Parasite" || c.collider.tag == "Parasite Boss")
        {
            dead = 1;
            print("ERMORDET VON " + c.collider.name);
        }
    }

    public Transform AnimSmol;

    void Update()
    {

        //health remains fixed
        health = 1;

        //cursor debug
        //print(Cursor.lockState + " " + Time.time);

        //decrease jump buffer
        jumpBuffer -= Time.deltaTime;

        if (dead == 1)
        {
            //death lock
            dead = 2;
            //death effect
            StartCoroutine(Death());
            //mesh renderer aus
        }

        RaycastHit hit;
        if ((Rb.SweepTest(charactermesh.forward + SweeptestDirectionOffset, out hit, 0.3f) && hit.collider.tag != "Parasite") || superBlock)
        {
            moveBlock = true;
            //print("blockiert von " + hit.collider.name);
            //Gizmos.DrawWireSphere(hit.point, .1f);
            debugpos = hit.point;
        }
        else
        {
            moveBlock = false;
        }

        if (Physics.Raycast(transform.position, Vector3.down, col.bounds.extents.y + 0.2f, layerMask.value))
        {
            grounded = true;
        }
        else
        {
            grounded = false;

        }

        //grounded = Physics.Raycast(transform.position, Vector3.down, col.bounds.extents.y + 0.1f, layerMask.value);

        if (Input.GetButtonDown("Jump"))
        {
            jumpBuffer = maxJumpBuffer;
        }

        if (grounded)
        {
            audioManager.Pause("PlayerJump");
        }

        if (jumpBuffer > 0 && grounded && jumpingAllowed)
        {
            audioManager.Play("PlayerJump");
            Rb.velocity = Vector3.up * Jumpforce;
            animationConttroller.SetBool("JumpAnim", true);
            animationConttroller.SetBool("IdleAnim1", false);
            if (tragend == true)
            {
                animationConttroller.SetBool("JumpWithPick", true);
            }

        }
        if (grounded == false)
        {

            animationConttroller.SetBool("JumpAnim", false);
            animationConttroller.SetBool("IdleAnim1", true);
        }
        if (Rb.velocity.y < 0)
        {
            Rb.velocity += Vector3.up * Physics.gravity.y * (fallMultiplier - 1) * Time.deltaTime;
        }
        else if (Rb.velocity.y > 0 && !Input.GetButton("Jump"))
        {
            Rb.velocity += Vector3.up * Physics.gravity.y * (lowJumpMultiplier - 1) * Time.deltaTime;
        }

        //Restart
        if (Input.GetKeyDown(KeyCode.R))
        {
            //transform.position = lastCheckpointpos;
        }
        //throw the Item
        if (Input.GetButtonDown("Throw") && tragend && !lastFrame)
        {
            Transform KistenHeber = tragObj.transform;

            if (KistenHeber)
            {
                audioManager.Play("PlayerThrow");
                animationConttroller.SetBool("ThrowingAnim", true);
                animationConttroller.SetBool("PickUpAnim", false);
                CompanionNav c = KistenHeber.GetComponent<CompanionNav>();

                if (c != null)
                {
                    c.wirdGetragen = false;
                }

                Rigidbody r = KistenHeber.GetComponent<Rigidbody>();
                r.transform.SetParent(null);
                r.GetComponent<Collider>().enabled = true;
                r.isKinematic = false;

                //Collider an, wenn losgelassen
                tragObj.GetComponent<Collider>().enabled = true;

                r.AddForce(camPos.forward * throwForce / parabeldiv + Vector3.up * throwForce);
                jumpingAllowed = true;
                tragObj = null;
                lastFrame = false;
                tragend = false;

            }
        }
        // drop the item
        if (Input.GetButtonDown("Pick") && tragend && !lastFrame)
        {

            Transform KistenHeber = tragObj.transform;

            if (KistenHeber)
            {
                audioManager.Play("DropSound");
                animationConttroller.SetBool("DropItemAnim", true);
                animationConttroller.SetBool("PickUpAnim", false);
                CompanionNav c = KistenHeber.GetComponent<CompanionNav>();

                Rigidbody r = KistenHeber.GetComponent<Rigidbody>();
                r.transform.SetParent(null);
                r.GetComponent<Collider>().enabled = true;
                r.isKinematic = false;

                //Collider an, wenn losgelassen
                tragObj.GetComponent<Collider>().enabled = true;

                KistenHeber.position = camPos.forward * 2 + transform.position;
                jumpingAllowed = true;
                tragend = false;
                tragObj = null;

                if (c != null)
                {
                    c.wirdGetragen = false;
                }
            }
        }

        //Pick
        GameObject[] tragbare = GameObject.FindGameObjectsWithTag("Tragbar");
        foreach (GameObject g in tragbare)
        {
            if (!tragend && !lastFrame)
            {
                if (Vector3.Distance(transform.position, g.transform.position) <= pickupRadius)
                {
                    if (Input.GetButtonDown("Pick"))
                    {
                        audioManager.Play("PickUpSound");
                        //Debug.Break();
                        CompanionNav c = g.GetComponent<CompanionNav>();

                        tragend = true;
                        tragObj = g;

                        if (c != null)
                        {
                            c.wirdGetragen = true;
                            c.GetComponent<NavMeshAgent>().enabled = false;
                        }
                        animationConttroller.SetBool("PickUpAnim", true);
                        animationConttroller.SetBool("IdleAnim1", false);
                        animationConttroller.SetBool("WalkingAnim", false);
                        animationConttroller.SetBool("DropItemAnim", false);


                        //Collider aus, solange obj getragen wird
                        tragObj.GetComponent<Collider>().enabled = false;

                        Transform holder = GameObject.Find("Holder").transform;
                        Rigidbody r = g.GetComponent<Rigidbody>();
                        g.transform.position = holder.position;
                        g.transform.SetParent(holder);
                        r.isKinematic = true;
                        //r.GetComponent<Collider>().enabled = false;
                        //tragObj = g;
                        lastFrame = false;
                        jumpingAllowed = true;
                    }
                }
            }
        }

    }

    /*
    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Kill"))
        {
            Death();
        }
    }
    public void Death()
    {
        transform.position = lastCheckpointpos;
    }
    */
}
