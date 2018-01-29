using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class GameManager : MonoBehaviour {


    /// <summary>
    /// 0 TITLE , 1 GAME RUN 2 GAME OVER 3 MENU
    /// </summary>
    public int GameState;

    public bool IsEnergyOn = false;

    // Use this for initialization
    void Start () {
		
	}

    private void Awake()
    {
        Instance = this;
    }

    public static GameManager Instance;

    // Update is called once per frame
    void Update () {
		
	}

    public void RestartGame()
    {
        SceneManager.LoadScene(0);

    }
}
