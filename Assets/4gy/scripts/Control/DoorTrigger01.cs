using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorTrigger01 : TriggerBase {

	// Use this for initialization
	void Start () {
		
	}
	
    public override void TriggerOn()
    {
        this.gameObject.active = false;
    }

    public override void TriggerOff()
    {

    }

	// Update is called once per frame
	void Update () {
		
	}
}
