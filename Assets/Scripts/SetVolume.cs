using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Audio;
using UnityEngine.UI;

public class SetVolume : MonoBehaviour
{
    public AudioMixer mixer;
    public OptionsManager options;
    public Slider slider;

    void Start()
    {
        options = GameObject.FindObjectOfType<OptionsManager>();
        mixer.SetFloat("volume", options.volume);
        //slider = GetComponent<Slider>();
        slider.value = options.volume;

    }
    public void f_Volume(float volume)
    {
        mixer.SetFloat("volume", volume);
        options = GameObject.FindObjectOfType<OptionsManager>();
        options.volume = volume;
    }
}
