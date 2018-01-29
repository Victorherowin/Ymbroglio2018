﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PushButtonControl : MonoBehaviour {


    public TriggerBase triggerBase;

    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter2D(Collider2D other)
    {
        DoTrigger();
    }


    private void OnTriggerExit2D(Collider2D other)
    {
        DoTriggerOff();
    }

    public void DoTrigger()
    {
        triggerBase.TriggerOn();
    }

    public void DoTriggerOff()
    {
        triggerBase.TriggerOff();
    }
}