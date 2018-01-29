using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CreditControl1 : MonoBehaviour {


    public GameObject TitleManager;
    public GameObject text;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if(Input.GetMouseButton(0))
        {
            TitleManager.GetComponent<TitleControl>().ReturnTitle();
        }
        text.GetComponent<RectTransform>().Translate(Vector3.up * 30f * Time.deltaTime);

    }

    public void Restart()
    {
        text.GetComponent<RectTransform>().localPosition=new Vector3(0,-692,0);



    }
}
