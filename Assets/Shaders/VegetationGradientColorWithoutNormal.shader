// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2276,x:33621,y:32412,varname:node_2276,prsc:2|diff-8065-OUT,emission-5360-OUT,clip-5417-OUT,voffset-9291-XYZ;n:type:ShaderForge.SFN_Tex2d,id:5559,x:31466,y:31621,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5559,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:3042,x:31442,y:31930,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_3042,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Subtract,id:5417,x:31999,y:32059,varname:node_5417,prsc:2|A-5559-A,B-3062-OUT;n:type:ShaderForge.SFN_Slider,id:3062,x:31416,y:32116,ptovrint:False,ptlb:alpha offset,ptin:_alphaoffset,varname:node_3062,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector4Property,id:6978,x:32661,y:31453,ptovrint:False,ptlb:normal,ptin:_normal,varname:node_6978,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:1,v3:0,v4:0;n:type:ShaderForge.SFN_TexCoord,id:4481,x:31499,y:33453,varname:node_4481,prsc:2,uv:2,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7386,x:31930,y:33480,varname:node_7386,prsc:2|A-4481-V,B-4209-OUT;n:type:ShaderForge.SFN_Multiply,id:785,x:31106,y:33644,varname:node_785,prsc:2|A-9544-T,B-8211-OUT;n:type:ShaderForge.SFN_Time,id:9544,x:30817,y:33683,varname:node_9544,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:8211,x:30841,y:33866,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_8211,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1885,x:32221,y:33487,varname:node_1885,prsc:2|A-7386-OUT,B-8048-OUT;n:type:ShaderForge.SFN_Sin,id:4209,x:31658,y:33658,varname:node_4209,prsc:2|IN-2917-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5970,x:31393,y:34071,varname:node_5970,prsc:2;n:type:ShaderForge.SFN_Dot,id:5588,x:31707,y:34042,varname:node_5588,prsc:2,dt:0|A-5970-XYZ,B-748-XYZ;n:type:ShaderForge.SFN_Vector4Property,id:9118,x:32232,y:33302,ptovrint:False,ptlb:wind dir,ptin:_winddir,varname:node_9118,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:9488,x:32558,y:33452,varname:node_9488,prsc:2|A-9118-XYZ,B-1885-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8200,x:32080,y:32678,varname:node_8200,prsc:2;n:type:ShaderForge.SFN_Transform,id:9291,x:32865,y:32800,varname:node_9291,prsc:2,tffrom:0,tfto:1|IN-7920-OUT;n:type:ShaderForge.SFN_Subtract,id:7920,x:32656,y:32817,varname:node_7920,prsc:2|A-5490-OUT,B-2558-XYZ;n:type:ShaderForge.SFN_ObjectPosition,id:2558,x:32489,y:32997,varname:node_2558,prsc:2;n:type:ShaderForge.SFN_Add,id:5490,x:32342,y:32855,varname:node_5490,prsc:2|A-8200-XYZ,B-9488-OUT;n:type:ShaderForge.SFN_ObjectPosition,id:748,x:31403,y:34235,varname:node_748,prsc:2;n:type:ShaderForge.SFN_Add,id:2917,x:31441,y:33723,varname:node_2917,prsc:2|A-785-OUT,B-5588-OUT;n:type:ShaderForge.SFN_Multiply,id:8065,x:32154,y:31535,varname:node_8065,prsc:2|A-8670-OUT,B-5559-R;n:type:ShaderForge.SFN_Color,id:2453,x:31415,y:31191,ptovrint:False,ptlb:color,ptin:_color,varname:node_2453,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4008989,c2:0.9339623,c3:0.450967,c4:1;n:type:ShaderForge.SFN_Multiply,id:5360,x:32031,y:31713,varname:node_5360,prsc:2|A-8065-OUT,B-3042-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:1666,x:32729,y:32509,varname:node_1666,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:5459,x:32729,y:32348,varname:node_5459,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7232,x:32944,y:32426,varname:node_7232,prsc:2|A-5459-XYZ,B-1666-XYZ;n:type:ShaderForge.SFN_Normalize,id:6632,x:33097,y:32519,varname:node_6632,prsc:2|IN-7232-OUT;n:type:ShaderForge.SFN_Negate,id:7470,x:33319,y:32587,varname:node_7470,prsc:2|IN-6632-OUT;n:type:ShaderForge.SFN_OneMinus,id:8472,x:33275,y:32450,varname:node_8472,prsc:2|IN-6632-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8048,x:32245,y:33821,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:node_8048,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:8670,x:31744,y:31227,varname:node_8670,prsc:2|A-2453-RGB,B-7605-OUT;n:type:ShaderForge.SFN_Vector1,id:7605,x:31566,y:31404,varname:node_7605,prsc:2,v1:1;proporder:5559-3042-3062-6978-8211-9118-2453-8048;pass:END;sub:END;*/

Shader "Custom/VegetationGradientColorWithoutNormal" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _emission ("emission", Range(0, 1)) = 0
        _alphaoffset ("alpha offset", Range(0, 1)) = 0
        _normal ("normal", Vector) = (0,1,0,0)
        _speed ("speed", Float ) = 1
        _winddir ("wind dir", Vector) = (1,0,0,0)
        _color ("color", Color) = (0.4008989,0.9339623,0.450967,1)
        _intensity ("intensity", Float ) = 5
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
            uniform float _speed;
            uniform float4 _winddir;
            uniform float4 _color;
            uniform float _intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_9544 = _Time;
                v.vertex.xyz = mul( unity_WorldToObject, float4(((mul(unity_ObjectToWorld, v.vertex).rgb+(_winddir.rgb*((o.uv2.g*sin(((node_9544.g*_speed)+dot(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb))))*_intensity)))-objPos.rgb),0) ).xyz.rgb;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
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
                float3 node_8065 = ((_color.rgb*1.0)*_MainTex_var.r);
                float3 diffuseColor = node_8065;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_8065*_emission);
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
            uniform float _speed;
            uniform float4 _winddir;
            uniform float4 _color;
            uniform float _intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv2 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                LIGHTING_COORDS(4,5)
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_9544 = _Time;
                v.vertex.xyz = mul( unity_WorldToObject, float4(((mul(unity_ObjectToWorld, v.vertex).rgb+(_winddir.rgb*((o.uv2.g*sin(((node_9544.g*_speed)+dot(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb))))*_intensity)))-objPos.rgb),0) ).xyz.rgb;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
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
                float3 node_8065 = ((_color.rgb*1.0)*_MainTex_var.r);
                float3 diffuseColor = node_8065;
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _alphaoffset;
            uniform float _speed;
            uniform float4 _winddir;
            uniform float _intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv2 = v.texcoord2;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_9544 = _Time;
                v.vertex.xyz = mul( unity_WorldToObject, float4(((mul(unity_ObjectToWorld, v.vertex).rgb+(_winddir.rgb*((o.uv2.g*sin(((node_9544.g*_speed)+dot(mul(unity_ObjectToWorld, v.vertex).rgb,objPos.rgb))))*_intensity)))-objPos.rgb),0) ).xyz.rgb;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
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
