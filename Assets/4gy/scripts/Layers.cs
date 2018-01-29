using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class Layers
{
    public const int Default = 1<<0;
    public const int IgnoreRaycast = 1 << 2;
    public const int Player = 1 << 9;
    public const int Reflectable = 1 << 29;
}