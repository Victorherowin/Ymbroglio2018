// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7889,x:32719,y:32712,varname:node_7889,prsc:2|custl-1874-OUT;n:type:ShaderForge.SFN_NormalVector,id:6036,x:31974,y:32917,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:3840,x:32211,y:32643,ptovrint:False,ptlb:node_3840,ptin:_node_3840,varname:_node_3840,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2cecb3b8e184cc84aaafb1b238a908d1,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:1874,x:32499,y:32765,varname:node_1874,prsc:2|A-3840-RGB,B-7287-RGB;n:type:ShaderForge.SFN_ValueProperty,id:1512,x:32079,y:33085,ptovrint:False,ptlb:node_1512,ptin:_node_1512,varname:_node_1512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:2250,x:32543,y:32957,varname:node_2250,prsc:2|A-7287-RGB,B-8327-OUT,C-4665-OUT,D-1549-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8327,x:32314,y:33085,ptovrint:False,ptlb:node_8327,ptin:_node_8327,varname:_node_8327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:4;n:type:ShaderForge.SFN_Color,id:7287,x:32288,y:32910,ptovrint:False,ptlb:node_7287,ptin:_node_7287,varname:_node_7287,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3897059,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:4665,x:32173,y:32852,varname:node_4665,prsc:2|NRM-6036-OUT,EXP-1512-OUT;n:type:ShaderForge.SFN_ToggleProperty,id:1549,x:32420,y:33178,ptovrint:False,ptlb:node_1549,ptin:_node_1549,varname:_node_1549,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;proporder:3840-1512-8327-7287-1549;pass:END;sub:END;*/

Shader "Custom/InnerGlow_robot" {
    Properties {
        _node_3840 ("node_3840", 2D) = "white" {}
        _node_1512 ("node_1512", Float ) = 3
        _node_8327 ("node_8327", Float ) = 4
        _node_7287 ("node_7287", Color) = (0.3897059,0,0,1)
        [MaterialToggle] _node_1549 ("node_1549", Float ) = 1
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
            uniform sampler2D _node_3840; uniform float4 _node_3840_ST;
            uniform float4 _node_7287;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float4 _node_3840_var = tex2D(_node_3840,TRANSFORM_TEX(i.uv0, _node_3840));
                float3 finalColor = (_node_3840_var.rgb+_node_7287.rgb);
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
