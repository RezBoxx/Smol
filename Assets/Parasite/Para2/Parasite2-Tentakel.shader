// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33824,y:32895,varname:node_2865,prsc:2|diff-6343-OUT,spec-358-OUT,gloss-6893-OUT,normal-3468-OUT,emission-7623-OUT,voffset-7322-OUT;n:type:ShaderForge.SFN_Multiply,id:6343,x:32114,y:32712,varname:node_6343,prsc:2|A-6707-OUT,B-3986-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:32756,y:33078,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:358,x:32870,y:32512,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:_Metallic,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:6893,x:32178,y:33158,varname:node_6893,prsc:2|A-4838-OUT,B-4783-OUT;n:type:ShaderForge.SFN_Slider,id:4783,x:31787,y:33274,ptovrint:False,ptlb:roughness,ptin:_roughness,varname:_roughness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.5811966,max:1;n:type:ShaderForge.SFN_TexCoord,id:8357,x:30223,y:32954,varname:node_8357,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:4096,x:30451,y:32990,ptovrint:False,ptlb:flowmap,ptin:_flowmap,varname:_flowmap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e91b82d4e549fca44929737415bc9201,ntxv:0,isnm:False|UVIN-8357-UVOUT;n:type:ShaderForge.SFN_Append,id:241,x:30642,y:33007,varname:node_241,prsc:2|A-4096-R,B-4096-G;n:type:ShaderForge.SFN_RemapRange,id:6693,x:30841,y:32858,varname:node_6693,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-241-OUT;n:type:ShaderForge.SFN_Multiply,id:9199,x:31035,y:33038,varname:node_9199,prsc:2|A-6693-OUT,B-4235-OUT;n:type:ShaderForge.SFN_Multiply,id:4235,x:30658,y:33226,varname:node_4235,prsc:2|A-4474-OUT,B-4302-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4474,x:30370,y:33232,ptovrint:False,ptlb:flow power,ptin:_flowpower,varname:_flowpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:4302,x:30406,y:33353,varname:node_4302,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:4390,x:31239,y:33006,varname:node_4390,prsc:2|A-9199-OUT,B-7085-OUT;n:type:ShaderForge.SFN_Multiply,id:2180,x:31239,y:33240,varname:node_2180,prsc:2|A-9199-OUT,B-7619-OUT;n:type:ShaderForge.SFN_Time,id:612,x:30136,y:33476,varname:node_612,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7308,x:30326,y:33519,varname:node_7308,prsc:2|A-612-T,B-9320-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9320,x:30136,y:33675,ptovrint:False,ptlb:flow speed,ptin:_flowspeed,varname:_flowspeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:936,x:30175,y:33844,varname:node_936,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Add,id:3234,x:30520,y:33721,varname:node_3234,prsc:2|A-7308-OUT,B-936-OUT;n:type:ShaderForge.SFN_Frac,id:7085,x:30543,y:33499,varname:node_7085,prsc:2|IN-7308-OUT;n:type:ShaderForge.SFN_Frac,id:7619,x:30805,y:33511,varname:node_7619,prsc:2|IN-3234-OUT;n:type:ShaderForge.SFN_TexCoord,id:5047,x:31087,y:32701,varname:node_5047,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3017,x:31436,y:32791,varname:node_3017,prsc:2|A-5047-UVOUT,B-4390-OUT;n:type:ShaderForge.SFN_Add,id:3846,x:31500,y:33134,varname:node_3846,prsc:2|A-5047-UVOUT,B-2180-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:213,x:31539,y:32430,ptovrint:False,ptlb:base,ptin:_base,varname:_base,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:dadcd202e5b997f4bb5a83971fb2d9b9,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:3193,x:32224,y:33413,ptovrint:False,ptlb:normal,ptin:_normal,varname:_normal,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:83463946088313a4fb89290bc63cb6fc,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2dAsset,id:41,x:31704,y:32954,ptovrint:False,ptlb:rough,ptin:_rough,varname:_rough,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c69e540e06c5c004dbc77d713a58d758,ntxv:2,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:2465,x:31965,y:33008,varname:node_2465,prsc:2,tex:c69e540e06c5c004dbc77d713a58d758,ntxv:0,isnm:False|UVIN-3846-OUT,TEX-41-TEX;n:type:ShaderForge.SFN_Tex2d,id:3691,x:31985,y:32873,varname:node_3691,prsc:2,tex:c69e540e06c5c004dbc77d713a58d758,ntxv:0,isnm:False|UVIN-3017-OUT,TEX-41-TEX;n:type:ShaderForge.SFN_Tex2d,id:8618,x:32530,y:33276,varname:node_8618,prsc:2,tex:83463946088313a4fb89290bc63cb6fc,ntxv:0,isnm:False|UVIN-3017-OUT,TEX-3193-TEX;n:type:ShaderForge.SFN_Tex2d,id:2579,x:32542,y:33471,varname:node_2579,prsc:2,tex:83463946088313a4fb89290bc63cb6fc,ntxv:0,isnm:False|UVIN-3846-OUT,TEX-3193-TEX;n:type:ShaderForge.SFN_Vector1,id:3986,x:31920,y:32746,varname:node_3986,prsc:2,v1:1;n:type:ShaderForge.SFN_Vector1,id:6881,x:32702,y:33563,varname:node_6881,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:9931,x:31773,y:32412,varname:node_9931,prsc:2,tex:dadcd202e5b997f4bb5a83971fb2d9b9,ntxv:0,isnm:False|UVIN-3017-OUT,TEX-213-TEX;n:type:ShaderForge.SFN_Tex2d,id:2538,x:31773,y:32583,varname:node_2538,prsc:2,tex:dadcd202e5b997f4bb5a83971fb2d9b9,ntxv:0,isnm:False|UVIN-3846-OUT,TEX-213-TEX;n:type:ShaderForge.SFN_Lerp,id:4838,x:32239,y:32954,varname:node_4838,prsc:2|A-3691-RGB,B-2465-RGB,T-3222-OUT;n:type:ShaderForge.SFN_Lerp,id:6707,x:32018,y:32476,varname:node_6707,prsc:2|A-9931-RGB,B-2538-RGB,T-3222-OUT;n:type:ShaderForge.SFN_Lerp,id:3468,x:32804,y:33374,varname:node_3468,prsc:2|A-8618-RGB,B-2579-RGB,T-3222-OUT;n:type:ShaderForge.SFN_Vector1,id:2602,x:31917,y:33179,varname:node_2602,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:951,x:31700,y:32785,varname:node_951,prsc:2,v1:0;n:type:ShaderForge.SFN_Subtract,id:592,x:30856,y:33755,varname:node_592,prsc:2|A-2244-OUT,B-7085-OUT;n:type:ShaderForge.SFN_Vector1,id:2244,x:30634,y:33917,varname:node_2244,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:907,x:31232,y:33725,varname:node_907,prsc:2|A-592-OUT,B-2244-OUT;n:type:ShaderForge.SFN_Abs,id:3222,x:31425,y:33526,varname:node_3222,prsc:2|IN-907-OUT;n:type:ShaderForge.SFN_Tex2d,id:1560,x:32773,y:32894,varname:node_1560,prsc:2,tex:273119c84f5835d42a2ebcedc8d7877c,ntxv:0,isnm:False|UVIN-3846-OUT,TEX-5844-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5844,x:32404,y:32791,ptovrint:False,ptlb:emission,ptin:_emission,varname:_emission,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:273119c84f5835d42a2ebcedc8d7877c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:7623,x:33149,y:32941,varname:node_7623,prsc:2|A-8448-OUT,B-6665-RGB,C-5763-OUT;n:type:ShaderForge.SFN_Tex2d,id:8332,x:32797,y:32738,varname:node_8332,prsc:2,tex:273119c84f5835d42a2ebcedc8d7877c,ntxv:0,isnm:False|UVIN-3017-OUT,TEX-5844-TEX;n:type:ShaderForge.SFN_Lerp,id:8448,x:32997,y:32787,varname:node_8448,prsc:2|A-8332-RGB,B-1560-RGB,T-3222-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5763,x:32965,y:33181,ptovrint:False,ptlb:emission power,ptin:_emissionpower,varname:_emissionpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Tex2d,id:6849,x:33017,y:33740,ptovrint:False,ptlb:noise tex,ptin:_noisetex,varname:node_6849,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-1985-OUT;n:type:ShaderForge.SFN_Multiply,id:7322,x:33598,y:33566,varname:node_7322,prsc:2|A-6849-R,B-2884-OUT,C-6574-OUT;n:type:ShaderForge.SFN_NormalVector,id:2884,x:33368,y:33703,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:6574,x:33310,y:33890,ptovrint:False,ptlb:displacement intensity,ptin:_displacementintensity,varname:node_6574,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_TexCoord,id:6442,x:32480,y:33773,varname:node_6442,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1985,x:32730,y:33865,varname:node_1985,prsc:2|A-6442-UVOUT,B-2401-OUT;n:type:ShaderForge.SFN_Multiply,id:2401,x:32673,y:34042,varname:node_2401,prsc:2|A-1824-T,B-1401-OUT,C-240-OUT;n:type:ShaderForge.SFN_Time,id:1824,x:32311,y:34073,varname:node_1824,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1401,x:32311,y:34251,ptovrint:False,ptlb:displacement speed,ptin:_displacementspeed,varname:node_1401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector2,id:240,x:32520,y:34295,varname:node_240,prsc:2,v1:1,v2:1;proporder:6665-358-4783-4096-41-213-4474-9320-3193-5844-5763-6849-6574-1401;pass:END;sub:END;*/

Shader "Shader Forge/Parasite2-Tentakel" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _Metallic ("Metallic", Range(0, 1)) = 0
        _roughness ("roughness", Range(-1, 1)) = 0.5811966
        _flowmap ("flowmap", 2D) = "white" {}
        _rough ("rough", 2D) = "black" {}
        _base ("base", 2D) = "white" {}
        _flowpower ("flow power", Float ) = 0.5
        _flowspeed ("flow speed", Float ) = 1
        _normal ("normal", 2D) = "bump" {}
        _emission ("emission", 2D) = "white" {}
        _emissionpower ("emission power", Float ) = 2
        _noisetex ("noise tex", 2D) = "white" {}
        _displacementintensity ("displacement intensity", Float ) = 1
        _displacementspeed ("displacement speed", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _roughness;
            uniform sampler2D _flowmap; uniform float4 _flowmap_ST;
            uniform float _flowpower;
            uniform float _flowspeed;
            uniform sampler2D _base; uniform float4 _base_ST;
            uniform sampler2D _normal; uniform float4 _normal_ST;
            uniform sampler2D _rough; uniform float4 _rough_ST;
            uniform sampler2D _emission; uniform float4 _emission_ST;
            uniform float _emissionpower;
            uniform sampler2D _noisetex; uniform float4 _noisetex_ST;
            uniform float _displacementintensity;
            uniform float _displacementspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float3 tangentDir : TEXCOORD4;
                float3 bitangentDir : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1824 = _Time;
                float2 node_1985 = (o.uv0+(node_1824.g*_displacementspeed*float2(1,1)));
                float4 _noisetex_var = tex2Dlod(_noisetex,float4(TRANSFORM_TEX(node_1985, _noisetex),0.0,0));
                v.vertex.xyz += (_noisetex_var.r*v.normal*_displacementintensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 _flowmap_var = tex2D(_flowmap,TRANSFORM_TEX(i.uv1, _flowmap));
                float2 node_9199 = ((float2(_flowmap_var.r,_flowmap_var.g)*1.0+-0.5)*(_flowpower*(-1.0)));
                float4 node_612 = _Time;
                float node_7308 = (node_612.g*_flowspeed);
                float node_7085 = frac(node_7308);
                float2 node_3017 = (i.uv0+(node_9199*node_7085));
                float3 node_8618 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_3017, _normal)));
                float2 node_3846 = (i.uv0+(node_9199*frac((node_7308+0.5))));
                float3 node_2579 = UnpackNormal(tex2D(_normal,TRANSFORM_TEX(node_3846, _normal)));
                float node_2244 = 0.5;
                float node_3222 = abs(((node_2244-node_7085)/node_2244));
                float3 normalLocal = lerp(node_8618.rgb,node_2579.rgb,node_3222);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float4 node_8332 = tex2D(_emission,TRANSFORM_TEX(node_3017, _emission));
                float4 node_1560 = tex2D(_emission,TRANSFORM_TEX(node_3846, _emission));
                float3 emissive = (lerp(node_8332.rgb,node_1560.rgb,node_3222)*_Color.rgb*_emissionpower);
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
            uniform sampler2D _noisetex; uniform float4 _noisetex_ST;
            uniform float _displacementintensity;
            uniform float _displacementspeed;
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
                float4 node_1824 = _Time;
                float2 node_1985 = (o.uv0+(node_1824.g*_displacementspeed*float2(1,1)));
                float4 _noisetex_var = tex2Dlod(_noisetex,float4(TRANSFORM_TEX(node_1985, _noisetex),0.0,0));
                v.vertex.xyz += (_noisetex_var.r*v.normal*_displacementintensity);
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
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _roughness;
            uniform sampler2D _flowmap; uniform float4 _flowmap_ST;
            uniform float _flowpower;
            uniform float _flowspeed;
            uniform sampler2D _base; uniform float4 _base_ST;
            uniform sampler2D _rough; uniform float4 _rough_ST;
            uniform sampler2D _emission; uniform float4 _emission_ST;
            uniform float _emissionpower;
            uniform sampler2D _noisetex; uniform float4 _noisetex_ST;
            uniform float _displacementintensity;
            uniform float _displacementspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_1824 = _Time;
                float2 node_1985 = (o.uv0+(node_1824.g*_displacementspeed*float2(1,1)));
                float4 _noisetex_var = tex2Dlod(_noisetex,float4(TRANSFORM_TEX(node_1985, _noisetex),0.0,0));
                v.vertex.xyz += (_noisetex_var.r*v.normal*_displacementintensity);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 _flowmap_var = tex2D(_flowmap,TRANSFORM_TEX(i.uv1, _flowmap));
                float2 node_9199 = ((float2(_flowmap_var.r,_flowmap_var.g)*1.0+-0.5)*(_flowpower*(-1.0)));
                float4 node_612 = _Time;
                float node_7308 = (node_612.g*_flowspeed);
                float node_7085 = frac(node_7308);
                float2 node_3017 = (i.uv0+(node_9199*node_7085));
                float4 node_8332 = tex2D(_emission,TRANSFORM_TEX(node_3017, _emission));
                float2 node_3846 = (i.uv0+(node_9199*frac((node_7308+0.5))));
                float4 node_1560 = tex2D(_emission,TRANSFORM_TEX(node_3846, _emission));
                float node_2244 = 0.5;
                float node_3222 = abs(((node_2244-node_7085)/node_2244));
                o.Emission = (lerp(node_8332.rgb,node_1560.rgb,node_3222)*_Color.rgb*_emissionpower);
                
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
