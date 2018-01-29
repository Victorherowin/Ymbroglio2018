using Shoot.Trajectory;
using System.Collections;
using System.Collections.Generic;

using UnityEngine;

public class SignalConrtol : MonoBehaviour
{
	public LineManager m_lineManager;
	[HideInInspector]
	public bool DisplayerSignal = false;

	public GameObject DebugPlayer;

	private void Start()
	{
		m_lineManager = GetComponentInChildren<LineManager>();
		m_lineManager.gameObject.SetActive(DisplayerSignal);
	}

	private void Update()
	{
		if (Input.GetMouseButtonDown(0))
		{
			DisplayerSignal = !DisplayerSignal;
			m_lineManager.gameObject.SetActive(DisplayerSignal);
		}

		if (!DisplayerSignal)
        {
            GameManager.Instance.IsEnergyOn = false;

            return;

        } 

		var pp = Camera.main.WorldToScreenPoint(transform.position);
		pp.z = 0;
		var mp = Input.mousePosition;
		var dir = (mp - pp).normalized;
		var ang = Vector3.Angle(Vector3.right, dir);

		DebugPlayer = m_lineManager.Transmit(dir);

		//print(DebugPlayer);
		if (DebugPlayer == null)
		{
			GameManager.Instance.IsEnergyOn = false;
		}
		else
		{
			GameManager.Instance.IsEnergyOn = true;
		}

	}
}