// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9403,x:34230,y:32251,varname:node_9403,prsc:2|emission-158-OUT,clip-9054-R;n:type:ShaderForge.SFN_ValueProperty,id:2397,x:31268,y:32417,ptovrint:False,ptlb:V Speed,ptin:_VSpeed,varname:node_2397,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:1855,x:31261,y:32682,ptovrint:False,ptlb:2U,ptin:_2U,varname:node_1855,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.1;n:type:ShaderForge.SFN_ValueProperty,id:8977,x:31268,y:32325,ptovrint:False,ptlb:U Speed,ptin:_USpeed,varname:node_8977,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_ValueProperty,id:6005,x:31261,y:32771,ptovrint:False,ptlb:2V,ptin:_2V,varname:node_6005,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Append,id:7675,x:31509,y:32325,varname:node_7675,prsc:2|A-8977-OUT,B-2397-OUT;n:type:ShaderForge.SFN_Time,id:9957,x:31509,y:32478,varname:node_9957,prsc:2;n:type:ShaderForge.SFN_Append,id:8684,x:31509,y:32619,varname:node_8684,prsc:2|A-1855-OUT,B-6005-OUT;n:type:ShaderForge.SFN_Time,id:2262,x:31509,y:32772,varname:node_2262,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9942,x:31696,y:32325,varname:node_9942,prsc:2|A-7675-OUT,B-9957-T;n:type:ShaderForge.SFN_Multiply,id:585,x:31705,y:32619,varname:node_585,prsc:2|A-8684-OUT,B-2262-T;n:type:ShaderForge.SFN_TexCoord,id:1180,x:31705,y:32468,varname:node_1180,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_TexCoord,id:8958,x:31705,y:32762,varname:node_8958,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:2478,x:31913,y:32329,varname:node_2478,prsc:2|A-9942-OUT,B-1180-UVOUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1993,x:31913,y:32481,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1993,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:3221,x:31913,y:32654,varname:node_3221,prsc:2|A-585-OUT,B-8958-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:9407,x:32077,y:32329,varname:node_9407,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-2478-OUT,TEX-1993-TEX;n:type:ShaderForge.SFN_Tex2d,id:3729,x:32076,y:32654,varname:node_3729,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-3221-OUT,TEX-1993-TEX;n:type:ShaderForge.SFN_Slider,id:5435,x:31756,y:32166,ptovrint:False,ptlb:Dissolve Amount,ptin:_DissolveAmount,varname:node_5435,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_OneMinus,id:8477,x:32077,y:32166,varname:node_8477,prsc:2|IN-5435-OUT;n:type:ShaderForge.SFN_RemapRange,id:7275,x:32244,y:32166,varname:node_7275,prsc:2,frmn:0,frmx:1,tomn:-0.65,tomx:0.65|IN-8477-OUT;n:type:ShaderForge.SFN_Add,id:4978,x:32429,y:32166,varname:node_4978,prsc:2|A-7275-OUT,B-9407-R;n:type:ShaderForge.SFN_Add,id:528,x:32429,y:32322,varname:node_528,prsc:2|A-7275-OUT,B-3729-R;n:type:ShaderForge.SFN_Multiply,id:5008,x:32597,y:32166,varname:node_5008,prsc:2|A-4978-OUT,B-528-OUT;n:type:ShaderForge.SFN_RemapRange,id:6548,x:32785,y:32166,varname:node_6548,prsc:2,frmn:0,frmx:1,tomn:-10,tomx:10|IN-5008-OUT;n:type:ShaderForge.SFN_VertexColor,id:9110,x:33541,y:32336,varname:node_9110,prsc:2;n:type:ShaderForge.SFN_Color,id:4149,x:33541,y:32489,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_4149,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2104842,c2:0.7934889,c3:0.8113208,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:8941,x:33541,y:32653,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_8941,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:158,x:33796,y:32360,varname:node_158,prsc:2|A-9054-RGB,B-9110-RGB,C-4149-RGB,D-8941-OUT;n:type:ShaderForge.SFN_Clamp01,id:8245,x:32967,y:32168,varname:node_8245,prsc:2|IN-6548-OUT;n:type:ShaderForge.SFN_Tex2d,id:9054,x:33522,y:32177,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_9054,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b7da5474c5bf4644284155ba1492e9a4,ntxv:0,isnm:False|UVIN-6368-OUT;n:type:ShaderForge.SFN_OneMinus,id:5780,x:33136,y:32165,varname:node_5780,prsc:2|IN-8245-OUT;n:type:ShaderForge.SFN_Append,id:6368,x:33320,y:32165,varname:node_6368,prsc:2|A-5780-OUT,B-8472-OUT;n:type:ShaderForge.SFN_Vector1,id:8472,x:33136,y:32308,varname:node_8472,prsc:2,v1:0;proporder:2397-1855-8977-6005-1993-5435-4149-8941-9054;pass:END;sub:END;*/

Shader "Custom/Test" {
    Properties {
        _VSpeed ("V Speed", Float ) = 0.2
        _2U ("2U", Float ) = -0.1
        _USpeed ("U Speed", Float ) = 0.2
        _2V ("2V", Float ) = 0.1
        _MainTex ("MainTex", 2D) = "white" {}
        _DissolveAmount ("Dissolve Amount", Range(0, 1)) = 0
        _MainColor ("MainColor", Color) = (0.2104842,0.7934889,0.8113208,1)
        _Opacity ("Opacity", Float ) = 2
        _Mask ("Mask", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _VSpeed;
            uniform float _2U;
            uniform float _USpeed;
            uniform float _2V;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _DissolveAmount;
            uniform float4 _MainColor;
            uniform float _Opacity;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float node_7275 = ((1.0 - _DissolveAmount)*1.3+-0.65);
                float4 node_9957 = _Time;
                float2 node_2478 = ((float2(_USpeed,_VSpeed)*node_9957.g)+i.uv0);
                float4 node_9407 = tex2D(_MainTex,TRANSFORM_TEX(node_2478, _MainTex));
                float4 node_2262 = _Time;
                float2 node_3221 = ((float2(_2U,_2V)*node_2262.g)+i.uv0);
                float4 node_3729 = tex2D(_MainTex,TRANSFORM_TEX(node_3221, _MainTex));
                float2 node_6368 = float2((1.0 - saturate((((node_7275+node_9407.r)*(node_7275+node_3729.r))*20.0+-10.0))),0.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_6368, _Mask));
                clip(_Mask_var.r - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (_Mask_var.rgb*i.vertexColor.rgb*_MainColor.rgb*_Opacity);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _VSpeed;
            uniform float _2U;
            uniform float _USpeed;
            uniform float _2V;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _DissolveAmount;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float node_7275 = ((1.0 - _DissolveAmount)*1.3+-0.65);
                float4 node_9957 = _Time;
                float2 node_2478 = ((float2(_USpeed,_VSpeed)*node_9957.g)+i.uv0);
                float4 node_9407 = tex2D(_MainTex,TRANSFORM_TEX(node_2478, _MainTex));
                float4 node_2262 = _Time;
                float2 node_3221 = ((float2(_2U,_2V)*node_2262.g)+i.uv0);
                float4 node_3729 = tex2D(_MainTex,TRANSFORM_TEX(node_3221, _MainTex));
                float2 node_6368 = float2((1.0 - saturate((((node_7275+node_9407.r)*(node_7275+node_3729.r))*20.0+-10.0))),0.0);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_6368, _Mask));
                clip(_Mask_var.r - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
