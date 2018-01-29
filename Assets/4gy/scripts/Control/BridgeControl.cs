using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BridgeControl : TriggerBase {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public override void TriggerOn()
    {
        this.gameObject.active = true;
    }

    public override void TriggerOff()
    {
        this.gameObject.active = false;
    }
}
