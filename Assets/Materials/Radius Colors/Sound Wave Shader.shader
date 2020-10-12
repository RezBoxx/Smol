// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:545,x:33380,y:32719,varname:node_545,prsc:2|emission-3822-OUT,voffset-3164-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7240,x:31905,y:32947,varname:node_7240,prsc:2|DIST-4911-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4911,x:31685,y:32965,ptovrint:False,ptlb:distance,ptin:_distance,varname:node_4911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6736,x:32208,y:32835,varname:node_6736,prsc:2|A-614-OUT,B-7240-OUT;n:type:ShaderForge.SFN_Slider,id:614,x:31814,y:32824,ptovrint:False,ptlb:opacity,ptin:_opacity,varname:node_614,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5128205,max:1;n:type:ShaderForge.SFN_Multiply,id:4386,x:32525,y:32871,varname:node_4386,prsc:2|A-6736-OUT,B-2845-OUT;n:type:ShaderForge.SFN_Tex2d,id:5592,x:31987,y:33153,ptovrint:False,ptlb:opacity mask,ptin:_opacitymask,varname:node_5592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1059b27c23648284d90858beddacbf67,ntxv:0,isnm:False|UVIN-1678-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:1678,x:31768,y:33153,varname:node_1678,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3700,x:32868,y:32872,varname:node_3700,prsc:2|A-4386-OUT,B-9409-RGB;n:type:ShaderForge.SFN_Color,id:9409,x:32553,y:32623,ptovrint:False,ptlb:color,ptin:_color,varname:node_9409,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_NormalVector,id:5220,x:32702,y:33113,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:7926,x:32974,y:33200,varname:node_7926,prsc:2|A-5220-OUT,B-7608-R;n:type:ShaderForge.SFN_Multiply,id:3164,x:33210,y:33268,varname:node_3164,prsc:2|A-7926-OUT,B-7439-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7439,x:33040,y:33381,ptovrint:False,ptlb:displacement intensity,ptin:_displacementintensity,varname:node_7439,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:7608,x:32404,y:33626,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_7608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:77ce5d9f9ce8cd84fbdae3eda616bb2e,ntxv:2,isnm:False|UVIN-9701-OUT;n:type:ShaderForge.SFN_TexCoord,id:9013,x:31804,y:33827,varname:node_9013,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:9701,x:32208,y:33764,varname:node_9701,prsc:2|A-9013-UVOUT,B-4975-OUT;n:type:ShaderForge.SFN_Time,id:1432,x:31726,y:34073,varname:node_1432,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4975,x:32124,y:33986,varname:node_4975,prsc:2|A-1432-T,B-6304-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6304,x:32038,y:34239,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_6304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Subtract,id:2845,x:32284,y:33232,varname:node_2845,prsc:2|A-5592-R,B-9375-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9375,x:31932,y:33383,ptovrint:False,ptlb:subtract thickness,ptin:_subtractthickness,varname:node_9375,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Clamp01,id:3822,x:33111,y:32775,varname:node_3822,prsc:2|IN-3700-OUT;proporder:4911-614-5592-9409-7439-7608-6304-9375;pass:END;sub:END;*/

Shader "Custom/Sound Wave Shader" {
    Properties {
        _distance ("distance", Float ) = 1
        _opacity ("opacity", Range(0, 1)) = 0.5128205
        _opacitymask ("opacity mask", 2D) = "white" {}
        _color ("color", Color) = (1,0,0,1)
        _displacementintensity ("displacement intensity", Float ) = 0.5
        _noise ("noise", 2D) = "black" {}
        _speed ("speed", Float ) = 0.1
        _subtractthickness ("subtract thickness", Float ) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _distance;
            uniform float _opacity;
            uniform sampler2D _opacitymask; uniform float4 _opacitymask_ST;
            uniform float4 _color;
            uniform float _displacementintensity;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _speed;
            uniform float _subtractthickness;
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
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1432 = _Time;
                float2 node_9701 = (o.uv0+(node_1432.g*_speed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_9701, _noise),0.0,0));
                v.vertex.xyz += ((v.normal*_noise_var.r)*_displacementintensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 _opacitymask_var = tex2D(_opacitymask,TRANSFORM_TEX(i.uv0, _opacitymask));
                float3 emissive = saturate((((_opacity*saturate((sceneZ-partZ)/_distance))*(_opacitymask_var.r-_subtractthickness))*_color.rgb));
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
            Cull Off
            
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
            uniform float _displacementintensity;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1432 = _Time;
                float2 node_9701 = (o.uv0+(node_1432.g*_speed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_9701, _noise),0.0,0));
                v.vertex.xyz += ((v.normal*_noise_var.r)*_displacementintensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
