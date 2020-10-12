using UnityEngine.Audio;
using UnityEngine;
using System;
using System.Collections;
using System.Collections.Generic;
public class AudioManager : MonoBehaviour
{
    public Sound[] sounds;

    void Awake()
    {
        foreach (Sound s in sounds)
        {
            s.source = gameObject.AddComponent<AudioSource>();
            s.source.clip = s.clip;
            s.source.outputAudioMixerGroup = s.mixergroup;

            s.source.volume = s.volume;
            s.source.pitch = s.pitch;
            s.source.loop = s.loop;
        }
    }
    void Start()
    {

    }

    public void Play(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.LogWarning("Sound: " + name + "not found!");
            return;
        }
        s.source.Play();
    }
    public void PlayIfNotInUse(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.LogWarning("Sound: " + name + "not found!");
            return;
        }

        if (!s.source.isPlaying)
            s.source.Play();
    }
    public void PlayFadeIn(string name, float speed)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.LogWarning("Sound: " + name + "not found!");
            return;
        }

        s.source.volume = 0;
        s.source.Play();
        StartCoroutine(FadeInHelper(speed, s.source));
    }
    IEnumerator FadeInHelper(float speed, AudioSource src)
    {

        float t = 0;

        while (t <= 1)
        {
            src.volume = t;
            t += Time.deltaTime / speed;

            yield return null;
        }

        src.volume = 1;

    }
    public void PlayFadeIn(string name, float speed, float maxVolume)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        if (s == null)
        {
            Debug.LogWarning("Sound: " + name + "not found!");
            return;
        }

        s.source.volume = 0;
        s.source.Play();
        StartCoroutine(FadeInHelper(speed, s.source, maxVolume));
    }
    IEnumerator FadeInHelper(float speed, AudioSource src, float maxVolume)
    {

        float t = 0;

        while (t <= 1)
        {
            src.volume = t * maxVolume;
            t += Time.deltaTime / speed;

            yield return null;
        }

        src.volume = 1 * maxVolume;

    }
    public void Pause(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        s.source.Pause();
    }
    public void UnPause(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        s.source.UnPause();
    }
    public void Mute(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        s.source.Stop();
    }
    public void MuteFadeOut(string name)
    {
        Sound s = Array.Find(sounds, sound => sound.name == name);
        //s.source.Stop();
        StartCoroutine(FadeOutHelper(s.source.volume, 2, s.source));
    }
    IEnumerator FadeOutHelper(float startVolume, float speed, AudioSource src)
    {
        float t = 0;

        while (t <= 1){
            src.volume = Mathf.Lerp(startVolume, 0, t);
            t += Time.deltaTime / speed;

            yield return null;
        }

        src.Stop();
        src.volume = startVolume;
    }
}
