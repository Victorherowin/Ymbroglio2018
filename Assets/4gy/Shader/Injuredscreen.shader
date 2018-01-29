// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:1,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32802,y:33150,varname:node_2865,prsc:2|emission-9695-OUT,alpha-2432-OUT,voffset-5593-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31959,y:33503,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32543,y:32720,varname:_node_8529,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-1346-UVOUT,TEX-6438-TEX;n:type:ShaderForge.SFN_Color,id:2733,x:32223,y:33108,ptovrint:False,ptlb:node_2733,ptin:_node_2733,varname:_node_2733,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6985294,c2:0.2157223,c3:0.2157223,c4:1;n:type:ShaderForge.SFN_RemapRange,id:5593,x:32188,y:33541,varname:node_5593,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4219-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9695,x:32791,y:32827,varname:node_9695,prsc:2|A-7542-RGB,B-2733-RGB,C-7548-RGB;n:type:ShaderForge.SFN_TexCoord,id:4277,x:31415,y:32871,varname:node_4277,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:9911,x:31591,y:32871,varname:node_9911,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4277-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4382,x:31754,y:32871,varname:node_4382,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9911-OUT;n:type:ShaderForge.SFN_ArcTan2,id:1810,x:31951,y:32871,varname:node_1810,prsc:2,attp:3|A-4382-G,B-4382-R;n:type:ShaderForge.SFN_Append,id:5741,x:32106,y:32871,varname:node_5741,prsc:2|A-1810-OUT,B-1810-OUT;n:type:ShaderForge.SFN_Rotator,id:1346,x:32310,y:32820,varname:node_1346,prsc:2|UVIN-5741-OUT;n:type:ShaderForge.SFN_TexCoord,id:4361,x:31144,y:33107,varname:node_4361,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector2,id:8628,x:31162,y:33301,varname:node_8628,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Distance,id:3522,x:31397,y:33117,varname:node_3522,prsc:2|A-4361-UVOUT,B-8628-OUT;n:type:ShaderForge.SFN_Power,id:3957,x:31857,y:33157,varname:node_3957,prsc:2|VAL-6314-OUT,EXP-3513-OUT;n:type:ShaderForge.SFN_Exp,id:3513,x:31695,y:33263,varname:node_3513,prsc:2,et:1|IN-6651-OUT;n:type:ShaderForge.SFN_Slider,id:6651,x:31365,y:33367,ptovrint:False,ptlb:node_6651,ptin:_node_6651,varname:_node_6651,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.80278,max:8;n:type:ShaderForge.SFN_RemapRange,id:6314,x:31593,y:33095,varname:node_6314,prsc:2,frmn:0,frmx:0.5,tomn:0,tomx:0.6|IN-3522-OUT;n:type:ShaderForge.SFN_Clamp01,id:83,x:32034,y:33200,varname:node_83,prsc:2|IN-3957-OUT;n:type:ShaderForge.SFN_Multiply,id:2432,x:32275,y:33282,varname:node_2432,prsc:2|A-83-OUT,B-5003-OUT;n:type:ShaderForge.SFN_Slider,id:5003,x:31898,y:33359,ptovrint:False,ptlb:node_5003,ptin:_node_5003,varname:_node_5003,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.931624,max:2;n:type:ShaderForge.SFN_Tex2dAsset,id:6438,x:32402,y:33124,ptovrint:False,ptlb:node_6438,ptin:_node_6438,varname:_node_6438,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7548,x:32603,y:32976,varname:_node_7548,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3686-UVOUT,TEX-6438-TEX;n:type:ShaderForge.SFN_Rotator,id:3686,x:32291,y:32983,varname:node_3686,prsc:2|UVIN-5741-OUT;n:type:ShaderForge.SFN_Vector1,id:9933,x:32174,y:32779,varname:node_9933,prsc:2,v1:0;proporder:2733-6651-5003-6438;pass:END;sub:END;*/

Shader "Shader Forge/Injured" {
    Properties {
        _node_2733 ("node_2733", Color) = (0.6985294,0.2157223,0.2157223,1)
        _node_6651 ("node_6651", Range(0, 8)) = 2.80278
        _node_5003 ("node_5003", Range(0, 2)) = 1.931624
        _node_6438 ("node_6438", 2D) = "black" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZTest Always
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _node_2733;
            uniform float _node_6651;
            uniform float _node_5003;
            uniform sampler2D _node_6438; uniform float4 _node_6438_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                v.vertex.xyz = float3((o.uv0*2.0+-1.0),0.0);
                o.pos = v.vertex;
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_4809 = _Time;
                float node_1346_ang = node_4809.g;
                float node_1346_spd = 1.0;
                float node_1346_cos = cos(node_1346_spd*node_1346_ang);
                float node_1346_sin = sin(node_1346_spd*node_1346_ang);
                float2 node_1346_piv = float2(0.5,0.5);
                float2 node_4382 = (i.uv0*2.0+-1.0).rg;
                float node_1810 = (1-abs(atan2(node_4382.g,node_4382.r)/3.14159265359));
                float2 node_5741 = float2(node_1810,node_1810);
                float2 node_1346 = (mul(node_5741-node_1346_piv,float2x2( node_1346_cos, -node_1346_sin, node_1346_sin, node_1346_cos))+node_1346_piv);
                float4 _node_8529 = tex2D(_node_6438,TRANSFORM_TEX(node_1346, _node_6438));
                float node_3686_ang = node_4809.g;
                float node_3686_spd = 1.0;
                float node_3686_cos = cos(node_3686_spd*node_3686_ang);
                float node_3686_sin = sin(node_3686_spd*node_3686_ang);
                float2 node_3686_piv = float2(0.5,0.5);
                float2 node_3686 = (mul(node_5741-node_3686_piv,float2x2( node_3686_cos, -node_3686_sin, node_3686_sin, node_3686_cos))+node_3686_piv);
                float4 _node_7548 = tex2D(_node_6438,TRANSFORM_TEX(node_3686, _node_6438));
                float3 emissive = (_node_8529.rgb*_node_2733.rgb*_node_7548.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(saturate(pow((distance(i.uv0,float2(0.5,0.5))*1.2+0.0),exp2(_node_6651)))*_node_5003));
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
