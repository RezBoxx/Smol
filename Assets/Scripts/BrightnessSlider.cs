using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BrightnessSlider : MonoBehaviour
{
    OptionsManager options;
    Slider slider;
    // Start is called before the first frame update
    void Start()
    {
        options = GameObject.FindObjectOfType<OptionsManager>();
        slider = GetComponent<Slider>();

        slider.value = options.brightness;
    }

    // Update is called once per frame
    void Update()
    {
        options.brightness = slider.value;
    }
}
