// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2276,x:33651,y:32278,varname:node_2276,prsc:2|diff-5559-RGB,emission-2716-OUT,clip-5417-OUT,voffset-6087-OUT;n:type:ShaderForge.SFN_Tex2d,id:5559,x:31569,y:31649,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2716,x:32054,y:31863,varname:node_2716,prsc:2|A-5559-RGB,B-3042-OUT;n:type:ShaderForge.SFN_Slider,id:3042,x:31442,y:31930,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_3042,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Subtract,id:5417,x:31999,y:32059,varname:node_5417,prsc:2|A-5559-A,B-3062-OUT;n:type:ShaderForge.SFN_Slider,id:3062,x:31416,y:32116,ptovrint:False,ptlb:alpha offset,ptin:_alphaoffset,varname:node_3062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:4481,x:31499,y:33453,varname:node_4481,prsc:2,uv:2,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7386,x:31930,y:33480,varname:node_7386,prsc:2|A-4481-V,B-4209-OUT;n:type:ShaderForge.SFN_Slider,id:16,x:32232,y:33838,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:node_16,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:785,x:31106,y:33644,varname:node_785,prsc:2|A-9544-T,B-8211-OUT;n:type:ShaderForge.SFN_Time,id:9544,x:30817,y:33683,varname:node_9544,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8211,x:30841,y:33866,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_8211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1885,x:32221,y:33487,varname:node_1885,prsc:2|A-7386-OUT,B-16-OUT;n:type:ShaderForge.SFN_Sin,id:4209,x:31658,y:33658,varname:node_4209,prsc:2|IN-2917-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5970,x:31393,y:34071,varname:node_5970,prsc:2;n:type:ShaderForge.SFN_Dot,id:5588,x:31707,y:34042,varname:node_5588,prsc:2,dt:0|A-5970-XYZ,B-748-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:9118,x:32232,y:33302,ptovrint:False,ptlb:wind dir,ptin:_winddir,varname:node_9118,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:9488,x:32558,y:33452,varname:node_9488,prsc:2|A-9118-XYZ,B-1885-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8200,x:32080,y:32678,varname:node_8200,prsc:2;n:type:ShaderForge.SFN_Transform,id:9291,x:32865,y:32800,varname:node_9291,prsc:2,tffrom:0,tfto:1|IN-7920-OUT;n:type:ShaderForge.SFN_Subtract,id:7920,x:32656,y:32817,varname:node_7920,prsc:2|A-5490-OUT,B-2558-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:2558,x:32489,y:32997,varname:node_2558,prsc:2;n:type:ShaderForge.SFN_Add,id:5490,x:32342,y:32855,varname:node_5490,prsc:2|A-8200-XYZ,B-9488-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:748,x:31403,y:34235,varname:node_748,prsc:2;n:type:ShaderForge.SFN_Add,id:2917,x:31441,y:33723,varname:node_2917,prsc:2|A-785-OUT,B-5588-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4450,x:30170,y:33987,varname:node_4450,prsc:2;n:type:ShaderForge.SFN_Append,id:1420,x:30364,y:34033,varname:node_1420,prsc:2|A-4450-X,B-4450-Z;n:type:ShaderForge.SFN_Multiply,id:8804,x:30536,y:34067,varname:node_8804,prsc:2|A-1420-OUT,B-7982-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7982,x:30267,y:34197,ptovrint:False,ptlb:tiling,ptin:_tiling,varname:node_7982,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:968,x:30719,y:34223,varname:node_968,prsc:2|A-8804-OUT,B-4211-OUT;n:type:ShaderForge.SFN_Time,id:8181,x:30136,y:34307,varname:node_8181,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4211,x:30414,y:34340,varname:node_4211,prsc:2|A-8181-T,B-4317-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4317,x:30101,y:34530,ptovrint:False,ptlb:speed noise,ptin:_speednoise,varname:node_4317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:3639,x:33198,y:33027,varname:node_3639,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:462,x:33688,y:33021,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-316-OUT;n:type:ShaderForge.SFN_Multiply,id:6087,x:33929,y:33004,varname:node_6087,prsc:2|A-462-R,B-1878-OUT,C-9206-OUT;n:type:ShaderForge.SFN_NormalVector,id:9206,x:33495,y:32797,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:1878,x:33674,y:33236,ptovrint:False,ptlb:displacement,ptin:_displacement,varname:node_1878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Add,id:316,x:33429,y:33099,varname:node_316,prsc:2|A-3639-UVOUT,B-8275-OUT;n:type:ShaderForge.SFN_Time,id:2500,x:33078,y:33296,varname:node_2500,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8275,x:33538,y:33418,varname:node_8275,prsc:2|A-2500-T,B-986-OUT;n:type:ShaderForge.SFN_ValueProperty,id:986,x:33334,y:33637,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_986,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Add,id:6060,x:33294,y:33457,varname:node_6060,prsc:2|A-2500-T,B-3334-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:8070,x:32953,y:33612,varname:node_8070,prsc:2;n:type:ShaderForge.SFN_Add,id:3334,x:33140,y:33612,varname:node_3334,prsc:2|A-8070-X,B-8070-Y,C-8070-Z;proporder:5559-3042-3062-16-8211-9118-7982-4317-462-1878-986;pass:END;sub:END;*/

Shader "Custom/MovingLeaf" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emission ("emission", Range(0, 1)) = 0
        _alphaoffset ("alpha offset", Range(0, 1)) = 0
        _intensity ("intensity", Range(0, 1)) = 0.1
        _speed ("speed", Float ) = 1
        _winddir ("wind dir", Vector) = (1,0,0,0)
        _tiling ("tiling", Float ) = 1
        _speednoise ("speed noise", Float ) = 1
        _noise ("noise", 2D) = "white" {}
        _displacement ("displacement", Float ) = 0.1
        _speed ("speed", Float ) = 0.1
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _emission;
            uniform float _alphaoffset;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _displacement;
            uniform float _speed;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2500 = _Time;
                float2 node_316 = (o.uv0+(node_2500.g*_speed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_316, _noise),0.0,0));
                v.vertex.xyz += (_noise_var.r*_displacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a-_alphaoffset) - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _MainTex_var.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (_MainTex_var.rgb*_emission);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _emission;
            uniform float _alphaoffset;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _displacement;
            uniform float _speed;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_2500 = _Time;
                float2 node_316 = (o.uv0+(node_2500.g*_speed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_316, _noise),0.0,0));
                v.vertex.xyz += (_noise_var.r*_displacement*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a-_alphaoffset) - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _MainTex_var.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _alphaoffset;
            uniform sampler2D _noise; uniform float4 _noise_ST;
            uniform float _displacement;
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
                float4 node_2500 = _Time;
                float2 node_316 = (o.uv0+(node_2500.g*_speed));
                float4 _noise_var = tex2Dlod(_noise,float4(TRANSFORM_TEX(node_316, _noise),0.0,0));
                v.vertex.xyz += (_noise_var.r*_displacement*v.normal);
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
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip((_MainTex_var.a-_alphaoffset) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
