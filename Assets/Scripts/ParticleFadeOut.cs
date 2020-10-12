using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static UnityEngine.ParticleSystem;

public class ParticleFadeOut : MonoBehaviour
{
    [Tooltip("Reference to particle system to apply the effect to")]
    public new ParticleSystem particleSystem;

    [Tooltip("Enable this to let the script react to attached colliders with set Is Trigger to true")]
    public bool reactToTrigger = true;

    [Tooltip("Time in seconds to fade the emission to 0")]
    public float fadeOutTime = 5.0f;

    private EmissionModule emissionModule;
    private float initialEmission = 0.0f;
    private float fadeOutStart = 0.0f;
    private bool fadeOut = false;

    void Reset()
    {
        particleSystem = GetComponent<ParticleSystem>();
    }

    void Update()
    {
        if (fadeOut)
            UpdateFadeOut();
    }

    private void Start()
    {
        if (!particleSystem)
            throw new MissingReferenceException("No Particle System assigned");
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Player")
            FadeOut();
    }

    public void FadeOut()
    {
        fadeOut = true;
        
        emissionModule = particleSystem.emission;
        initialEmission = emissionModule.rateOverTime.constant;
        fadeOutStart = Time.time;
    }

    private void UpdateFadeOut()
    {
        float remainingSeconds = (fadeOutStart + fadeOutTime) - Time.time;
        if (remainingSeconds <= 0.05f)
        {
            emissionModule.rateOverTime = 0;
            fadeOut = false;
            return;
        }

        float newEmissionRate = initialEmission * (remainingSeconds / fadeOutTime);

        emissionModule.rateOverTime = newEmissionRate;
        emissionModule.rateOverTime = Mathf.Clamp(emissionModule.rateOverTime.constant, 0.0f, initialEmission);
    }
}
