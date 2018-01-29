// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:5546,x:32664,y:32580,varname:node_5546,prsc:2|custl-5493-OUT;n:type:ShaderForge.SFN_Fresnel,id:7870,x:32243,y:32834,varname:node_7870,prsc:2|NRM-8078-OUT,EXP-8300-OUT;n:type:ShaderForge.SFN_Tex2d,id:13,x:32196,y:32600,ptovrint:False,ptlb:node_13,ptin:_node_13,varname:_node_13,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2cecb3b8e184cc84aaafb1b238a908d1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:8078,x:32044,y:32824,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:8300,x:32013,y:33018,ptovrint:False,ptlb:node_8300,ptin:_node_8300,varname:_node_8300,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_ValueProperty,id:187,x:32263,y:33172,ptovrint:False,ptlb:node_187,ptin:_node_187,varname:_node_187,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.2;n:type:ShaderForge.SFN_Add,id:5493,x:32475,y:32650,varname:node_5493,prsc:2|A-13-RGB,B-9021-OUT;n:type:ShaderForge.SFN_Multiply,id:9021,x:32437,y:32849,varname:node_9021,prsc:2|A-1646-RGB,B-7870-OUT,C-187-OUT,D-1669-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:1669,x:32429,y:33172,ptovrint:False,ptlb:node_1669,ptin:_node_1669,varname:_node_1669,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;n:type:ShaderForge.SFN_Color,id:1646,x:32146,y:33068,ptovrint:False,ptlb:node_1646,ptin:_node_1646,varname:_node_1646,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.03357483,c2:0.08249239,c3:0.1985294,c4:1;proporder:13-8300-187-1669-1646;pass:END;sub:END;*/

Shader "Custom/InnerGlow_robot_normal" {
    Properties {
        _node_13 ("node_13", 2D) = "white" {}
        _node_8300 ("node_8300", Float ) = 2
        _node_187 ("node_187", Float ) = 1.2
        [MaterialToggle] _node_1669 ("node_1669", Float ) = 1
        _node_1646 ("node_1646", Color) = (0.03357483,0.08249239,0.1985294,1)
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
            uniform sampler2D _node_13; uniform float4 _node_13_ST;
            uniform float _node_8300;
            uniform float _node_187;
            uniform fixed _node_1669;
            uniform float4 _node_1646;
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
                float4 _node_13_var = tex2D(_node_13,TRANSFORM_TEX(i.uv0, _node_13));
                float3 finalColor = (_node_13_var.rgb+(_node_1646.rgb*pow(1.0-max(0,dot(i.normalDir, viewDirection)),_node_8300)*_node_187*_node_1669));
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
