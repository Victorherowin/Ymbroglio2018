using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

    
public class TitleControl : MonoBehaviour {

    public GameObject TitleUI;

    public GameObject CreditUI;

    // Use this for initialization
    void Start() {

    }

    // Update is called once per frame
    void Update() {

    }

    public void StartGame()
    {
        SceneManager.LoadScene("Game");
    }

    public void Credit()
    {
        TitleUI.active = false;
        
        CreditUI.GetComponent<CreditControl1>().Restart();
        CreditUI.active = true;
    }

    public void ReturnTitle()
    {
        TitleUI.active = true;
        CreditUI.active = false;
    }
}