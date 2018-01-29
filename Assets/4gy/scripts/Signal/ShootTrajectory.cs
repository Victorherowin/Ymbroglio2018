using System.Collections.Generic;
using UnityEngine;

namespace Shoot.Trajectory
{
    [RequireComponent(typeof(LineRenderer))]
    internal class ShootTrajectory : MonoBehaviour
    {
        public float Length = 6.0f;
        public float ReflectCount = 5;
        public float StepTime = 0.33f;

        private LineRenderer m_lineRenderer;
        private Vector3 m_initialVelocity;

        private void Awake()
        {
            m_lineRenderer = GetComponent<LineRenderer>();
        }

        public void SetAngle(float angle)
        {
            m_initialVelocity = new Vector2(Mathf.Cos(angle), Mathf.Sin(angle));
        }

        public void SetDirection(Vector2 dir)
        {
            m_initialVelocity = dir.normalized;
        }

        private List<Vector3> arr = new List<Vector3>();

        public GameObject ShowTrajectory(Vector3 o)
        {
            arr.Clear();
            arr.Add(o);

            GameObject player = null;

            Vector3 old_x = o, new_x = Vector3.zero;
            Vector3 v = m_initialVelocity;
            float length = 0.0f;
            int reflect = 0;

            while (length < Length && reflect < 5)
            {
                new_x = old_x + v * StepTime;

                float delta_length = (new_x - old_x).magnitude;

                RaycastHit2D hitInfo;
                hitInfo = Physics2D.Raycast(old_x, v.normalized, delta_length, Layers.Reflectable|Layers.Player|Layers.Default);

                if (hitInfo.collider != null && (1 << hitInfo.collider.gameObject.layer) == Layers.Default)
                {
                    arr.Add(hitInfo.point);
                    break;
                }

                GameObject tmp = CheckIncludePlayer2(hitInfo);
                if (tmp != null)
                    player = tmp;

                //calculate reflect
                if (hitInfo.collider != null&&
                   (1 << hitInfo.collider.gameObject.layer) == Layers.Reflectable)
                {
                    v = Vector2.Reflect(v, hitInfo.normal);
                    reflect++;
                    Vector2 bias = hitInfo.normal * 0.01f;
                    old_x = hitInfo.point + bias;
                }
                else
                {
                    old_x = new_x;
                }

                length += delta_length;

                arr.Add(old_x);
            }
            m_lineRenderer.positionCount = arr.Count;
            m_lineRenderer.SetPositions(arr.ToArray());

            return player;
        }

        private GameObject CheckIncludePlayer2(RaycastHit2D hitInfo)
        {
            GameObject player = null;

            //get player2
            if (hitInfo.collider != null &&
                player == null &&
                (1 << hitInfo.collider.gameObject.layer) == Layers.Player)
            {
                if (hitInfo.collider != null && hitInfo.collider.transform.tag == "Player2")
                    player = hitInfo.collider.gameObject;
            }

            return player;
        }
    }
}