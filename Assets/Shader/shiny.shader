// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33209,y:32712,varname:node_9361,prsc:2|custl-7543-OUT,alpha-3469-A;n:type:ShaderForge.SFN_Tex2d,id:3469,x:32681,y:32630,ptovrint:False,ptlb:node_3469,ptin:_node_3469,varname:_node_3469,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ba6f14784972b4df89114c8b8c0d172b,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:9668,x:31526,y:32761,varname:node_9668,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:6270,x:32038,y:32836,varname:node_6270,prsc:2,frmn:0,frmx:1,tomn:0,tomx:3.14|IN-3149-OUT;n:type:ShaderForge.SFN_Sin,id:2230,x:32236,y:32920,varname:node_2230,prsc:2|IN-514-OUT;n:type:ShaderForge.SFN_Power,id:5742,x:32602,y:32924,varname:node_5742,prsc:2|VAL-2230-OUT,EXP-9830-OUT;n:type:ShaderForge.SFN_Slider,id:5038,x:32063,y:33174,ptovrint:False,ptlb:width,ptin:_width,varname:_width,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:8.632698,max:10;n:type:ShaderForge.SFN_Exp,id:9830,x:32462,y:33111,varname:node_9830,prsc:2,et:0|IN-4840-OUT;n:type:ShaderForge.SFN_RemapRange,id:4840,x:32294,y:33062,varname:node_4840,prsc:2,frmn:0,frmx:10,tomn:10,tomx:1|IN-5038-OUT;n:type:ShaderForge.SFN_Color,id:8276,x:32878,y:33446,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5808823,c2:0.7745436,c3:1,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:4592,x:32852,y:33313,ptovrint:False,ptlb:node_4592,ptin:_node_4592,varname:_node_4592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:182,x:33077,y:33313,varname:node_182,prsc:2|A-4592-OUT,B-8276-RGB,C-9480-OUT;n:type:ShaderForge.SFN_Add,id:7543,x:32978,y:32832,varname:node_7543,prsc:2|A-3469-RGB,B-182-OUT;n:type:ShaderForge.SFN_Add,id:514,x:32029,y:33018,varname:node_514,prsc:2|A-6270-OUT,B-4685-OUT;n:type:ShaderForge.SFN_Slider,id:4685,x:31719,y:33111,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:_Offset,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.950453,max:3.2;n:type:ShaderForge.SFN_Clamp,id:9480,x:32745,y:33120,varname:node_9480,prsc:2|IN-5742-OUT,MIN-6934-OUT,MAX-1359-OUT;n:type:ShaderForge.SFN_Vector1,id:6934,x:32575,y:33249,varname:node_6934,prsc:2,v1:0.01;n:type:ShaderForge.SFN_Vector1,id:1359,x:32547,y:33350,varname:node_1359,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3149,x:31818,y:32892,varname:node_3149,prsc:2|A-9668-U,B-9668-V,T-7497-OUT;n:type:ShaderForge.SFN_Slider,id:9489,x:31260,y:33010,ptovrint:False,ptlb:angle,ptin:_angle,varname:_angle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:90,max:90;n:type:ShaderForge.SFN_RemapRange,id:7497,x:31565,y:32950,varname:node_7497,prsc:2,frmn:0,frmx:90,tomn:0,tomx:1|IN-9489-OUT;proporder:3469-5038-8276-4592-4685-9489;pass:END;sub:END;*/

Shader "Shader Forge/shiny" {
    Properties {
        _node_3469 ("node_3469", 2D) = "white" {}
        _width ("width", Range(0, 10)) = 8.632698
        [HDR]_color ("color", Color) = (0.5808823,0.7745436,1,1)
        _node_4592 ("node_4592", Float ) = 2
        _Offset ("Offset", Range(0, 3.2)) = 1.950453
        _angle ("angle", Range(0, 90)) = 90
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _node_3469; uniform float4 _node_3469_ST;
            uniform float _width;
            uniform float4 _color;
            uniform float _node_4592;
            uniform float _Offset;
            uniform float _angle;
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
                float4 _node_3469_var = tex2D(_node_3469,TRANSFORM_TEX(i.uv0, _node_3469));
                float3 finalColor = (_node_3469_var.rgb+(_node_4592*_color.rgb*clamp(pow(sin(((lerp(i.uv0.r,i.uv0.g,(_angle*0.01111111+0.0))*3.14+0.0)+_Offset)),exp((_width*-0.9+10.0))),0.01,1.0)));
                fixed4 finalRGBA = fixed4(finalColor,_node_3469_var.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
