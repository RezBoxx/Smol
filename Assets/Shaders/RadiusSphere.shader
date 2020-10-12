// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33618,y:32669,varname:node_2865,prsc:2|diff-2133-OUT,spec-358-OUT,gloss-1813-OUT,emission-2133-OUT,voffset-8863-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:32257,y:32799,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5019608,c2:0.5019608,c3:0.5019608,c4:0.5;n:type:ShaderForge.SFN_Slider,id:358,x:32546,y:32555,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32546,y:32657,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8,max:1;n:type:ShaderForge.SFN_DepthBlend,id:6137,x:31966,y:33177,varname:node_6137,prsc:2|DIST-8670-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8670,x:31696,y:33219,ptovrint:False,ptlb:distance,ptin:_distance,varname:node_8670,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Multiply,id:1432,x:32312,y:33134,varname:node_1432,prsc:2|A-6137-OUT,B-8279-OUT;n:type:ShaderForge.SFN_Fresnel,id:8279,x:31922,y:33329,varname:node_8279,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1902,x:32670,y:32987,varname:node_1902,prsc:2|A-8625-OUT,B-1432-OUT;n:type:ShaderForge.SFN_Multiply,id:2133,x:33001,y:32852,varname:node_2133,prsc:2|A-6665-RGB,B-1902-OUT;n:type:ShaderForge.SFN_Slider,id:8625,x:32061,y:33011,ptovrint:False,ptlb:opacity,ptin:_opacity,varname:node_8625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2222222,max:1;n:type:ShaderForge.SFN_Tex2d,id:3991,x:32899,y:33302,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_3991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:2,isnm:False|UVIN-8362-OUT;n:type:ShaderForge.SFN_Multiply,id:8863,x:33397,y:33257,varname:node_8863,prsc:2|A-3991-R,B-8159-OUT,C-6148-OUT,D-4257-R;n:type:ShaderForge.SFN_NormalVector,id:8159,x:33060,y:33053,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:6148,x:33005,y:33529,ptovrint:False,ptlb:displacement intensity,ptin:_displacementintensity,varname:node_6148,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_TexCoord,id:2396,x:32396,y:33423,varname:node_2396,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:8362,x:32616,y:33488,varname:node_8362,prsc:2|A-2396-UVOUT,B-8108-OUT;n:type:ShaderForge.SFN_Time,id:7000,x:32351,y:33639,varname:node_7000,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8108,x:32554,y:33683,varname:node_8108,prsc:2|A-7000-T,B-3343-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3343,x:32351,y:33870,ptovrint:False,ptlb:displacement speed,ptin:_displacementspeed,varname:node_3343,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.2;n:type:ShaderForge.SFN_VertexColor,id:4257,x:33180,y:33640,varname:node_4257,prsc:2;proporder:6665-358-1813-8670-8625-3991-6148-3343;pass:END;sub:END;*/

Shader "Shader Forge/RadiusSphere" {
    Properties {
        _Color ("Color", Color) = (0.5019608,0.5019608,0.5019608,0.5)
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.8
        _distance ("distance", Float ) = 10
        _opacity ("opacity", Range(0, 1)) = 0.2222222
        _noise ("noise", 2D) = "black" {}
        _displacementintensity ("displacement intensity", Float ) = 0.1
        _displacementspeed ("displacement speed", Float ) = 0.2
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
            Blend One One
            Cull Off
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _distance;
            uniform float _opacity;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _displacementintensity;
            uniform float _displacementspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7000 = _Time;
                float2 node_8362 = (o.uv0+(node_7000.g*_displacementspeed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_8362, _noise),0.0,0));
                v.vertex.xyz += (_noise_var.r*v.normal*_displacementintensity*o.vertexColor.r);
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
                float3 node_2133 = (_Color.rgb*(_opacity*(saturate((sceneZ-partZ)/_distance)*(1.0-max(0,dot(normalDirection, viewDirection))))));
                float3 emissive = node_2133;
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _displacementintensity;
            uniform float _displacementspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7000 = _Time;
                float2 node_8362 = (o.uv0+(node_7000.g*_displacementspeed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_8362, _noise),0.0,0));
                v.vertex.xyz += (_noise_var.r*v.normal*_displacementintensity*o.vertexColor.r);
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
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _distance;
            uniform float _opacity;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _displacementintensity;
            uniform float _displacementspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_7000 = _Time;
                float2 node_8362 = (o.uv0+(node_7000.g*_displacementspeed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_8362, _noise),0.0,0));
                v.vertex.xyz += (_noise_var.r*v.normal*_displacementintensity*o.vertexColor.r);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float3 node_2133 = (_Color.rgb*(_opacity*(saturate((sceneZ-partZ)/_distance)*(1.0-max(0,dot(normalDirection, viewDirection))))));
                o.Emission = node_2133;
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
