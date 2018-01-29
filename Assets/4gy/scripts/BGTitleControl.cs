using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BGTitleControl : MonoBehaviour {


    public GameObject bground;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {

        bground.GetComponent<RectTransform>().Translate(Vector3.left * 5f * Time.deltaTime);

        if(bground.GetComponent<RectTransform>().localPosition.x<-700)
        {
            Vector3 v1 = bground.GetComponent<RectTransform>().localPosition;
            bground.GetComponent<RectTransform>().localPosition = new Vector3(212, v1.y, v1.z);
        }
    }





}
