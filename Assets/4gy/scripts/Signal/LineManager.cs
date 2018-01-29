using Shoot.Trajectory;
using UnityEngine;

public class LineManager : MonoBehaviour
{
    private ShootTrajectory[] m_lines;
    public GameObject LinePrefab;
    public int LineCount = 5;
    public float IncludeAngle = 60;

    private void Start()
    {
        GameObject p_line = LinePrefab;
        m_lines = new ShootTrajectory[LineCount];
        for (int i = 0; i < LineCount; i++)
            m_lines[i] = Instantiate(p_line, Vector3.zero, Quaternion.identity, transform).GetComponent<ShootTrajectory>();
    }

    public GameObject Transmit(float angle)
    {
        GameObject player = null;
        float ang_step = IncludeAngle * Mathf.Deg2Rad / LineCount;

        for (int i = 0; i < m_lines.Length; i++)
        {
            m_lines[i].SetAngle(angle + (-LineCount / 2 + i) * ang_step);
            GameObject obj = m_lines[i].ShowTrajectory(transform.position);
            if (obj != null)
                player = obj;
        }
        return player;
    }

    public GameObject Transmit(Vector2 dir)
    {
        GameObject player = null;
        float half_angle = IncludeAngle * 0.5f;
        float ang_step = IncludeAngle * Mathf.Deg2Rad / LineCount;
        Vector2 cdir = dir;

        for (int i = 0; i < m_lines.Length / 2; i++)
        {
            m_lines[i].SetDirection(cdir);
            cdir = Rotate(cdir, ang_step);
            GameObject obj = m_lines[i].ShowTrajectory(transform.position);
            if (obj != null)
                player = obj;
        }

        cdir = dir;

        for (int i = m_lines.Length / 2; i < m_lines.Length; i++)
        {
            m_lines[i].SetDirection(cdir);
            cdir = Rotate(cdir, -ang_step);
            GameObject obj = m_lines[i].ShowTrajectory(transform.position);
            if (obj != null)
                player = obj;
        }

        return player;
    }

    public Vector2 Rotate(Vector2 dir, float ang)
    {
        Vector2 r;
        r.x = Mathf.Cos(ang) * dir.x - Mathf.Sin(ang) * dir.y;
        r.y = Mathf.Cos(ang) * dir.y + Mathf.Sin(ang) * dir.x;
        return r;
    }
}