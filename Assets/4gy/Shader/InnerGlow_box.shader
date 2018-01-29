// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3027,x:32798,y:32520,varname:node_3027,prsc:2|custl-5255-OUT;n:type:ShaderForge.SFN_NormalVector,id:6269,x:32065,y:32740,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:367,x:32382,y:32534,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:_MainTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:181099d6e7fe345d2bea1ba2a951b800,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:751,x:32327,y:32765,varname:node_751,prsc:2|NRM-6269-OUT,EXP-4281-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4281,x:32099,y:32904,ptovrint:False,ptlb:Exp,ptin:_Exp,varname:_Exp,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Add,id:5255,x:32574,y:32650,varname:node_5255,prsc:2|A-367-RGB,B-2868-OUT;n:type:ShaderForge.SFN_Multiply,id:2868,x:32541,y:32800,varname:node_2868,prsc:2|A-751-OUT,B-3417-OUT,C-1881-RGB,D-7894-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3417,x:32306,y:32930,ptovrint:False,ptlb:ColorDegree,ptin:_ColorDegree,varname:_ColorDegree,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Color,id:1881,x:32294,y:33085,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_ToggleProperty,id:7894,x:32440,y:33085,ptovrint:False,ptlb:Switch,ptin:_Switch,varname:_Switch,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;proporder:367-4281-3417-1881-7894;pass:END;sub:END;*/

Shader "Custom/InnerGlow_box" {
    Properties {
        _MainTexture ("MainTexture", 2D) = "white" {}
        _Exp ("Exp", Float ) = 3
        _ColorDegree ("ColorDegree", Float ) = 2
        _Color ("Color", Color) = (1,0,0,1)
        [MaterialToggle] _Switch ("Switch", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform float _Exp;
            uniform float _ColorDegree;
            uniform float4 _Color;
            uniform fixed _Switch;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 finalColor = (_MainTexture_var.rgb+(pow(1.0-max(0,dot(i.normalDir, viewDirection)),_Exp)*_ColorDegree*_Color.rgb*_Switch));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
