// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3881,x:32719,y:32712,varname:node_3881,prsc:2|emission-6143-RGB,clip-2920-OUT,voffset-8338-OUT;n:type:ShaderForge.SFN_Color,id:6143,x:32209,y:32579,ptovrint:False,ptlb:color,ptin:_color,varname:_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5409,x:31878,y:32821,ptovrint:False,ptlb:noise1,ptin:_noise1,varname:_noise1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-6772-OUT;n:type:ShaderForge.SFN_Step,id:2920,x:32284,y:32949,varname:node_2920,prsc:2|A-5409-R,B-207-OUT;n:type:ShaderForge.SFN_Slider,id:207,x:31889,y:33088,ptovrint:False,ptlb:Dissolve,ptin:_Dissolve,varname:_Dissolve,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2393163,max:1;n:type:ShaderForge.SFN_Tex2d,id:3890,x:31353,y:32578,ptovrint:False,ptlb:noise2,ptin:_noise2,varname:_noise2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-8315-OUT;n:type:ShaderForge.SFN_TexCoord,id:2177,x:30997,y:32829,varname:node_2177,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:8315,x:31285,y:32849,varname:node_8315,prsc:2|A-2177-UVOUT,B-8403-OUT;n:type:ShaderForge.SFN_Vector2,id:8706,x:30967,y:32990,varname:node_8706,prsc:2,v1:1,v2:1;n:type:ShaderForge.SFN_Multiply,id:8403,x:31186,y:33042,varname:node_8403,prsc:2|A-8706-OUT,B-682-OUT;n:type:ShaderForge.SFN_Time,id:9680,x:30739,y:33165,varname:node_9680,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:5110,x:31462,y:33014,varname:node_5110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:6772,x:31640,y:32851,varname:node_6772,prsc:2|A-3890-R,B-5110-UVOUT;n:type:ShaderForge.SFN_Multiply,id:682,x:31071,y:33199,varname:node_682,prsc:2|A-9680-T,B-286-OUT;n:type:ShaderForge.SFN_ValueProperty,id:286,x:30910,y:33389,ptovrint:False,ptlb:speed distort,ptin:_speeddistort,varname:_speeddistort,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_NormalVector,id:9461,x:31942,y:33266,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:8338,x:32248,y:33332,varname:node_8338,prsc:2|A-9461-OUT,B-3890-R,C-6665-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6665,x:31960,y:33508,ptovrint:False,ptlb:displacement,ptin:_displacement,varname:_displacement,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:6143-5409-207-3890-286-6665;pass:END;sub:END;*/

Shader "Custom/detiny kugel" {
    Properties {
        _color ("color", Color) = (0,0,0,1)
        _noise1 ("noise1", 2D) = "white" {}
        _Dissolve ("Dissolve", Range(0, 1)) = 0.2393163
        _noise2 ("noise2", 2D) = "white" {}
        _speeddistort ("speed distort", Float ) = 1
        _displacement ("displacement", Float ) = 1
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _color;
            uniform sampler2D _noise1; uniform float4 _noise1_ST;
            uniform float _Dissolve;
            uniform sampler2D _noise2; uniform float4 _noise2_ST;
            uniform float _speeddistort;
            uniform float _displacement;
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
                float4 node_9680 = _Time;
                float2 node_8315 = (o.uv0+(float2(1,1)*(node_9680.g*_speeddistort)));
                float4 _noise2_var = tex2Dlod(_noise2,float4(TRANSFORM_TEX(node_8315, _noise2),0.0,0));
                v.vertex.xyz += (v.normal*_noise2_var.r*_displacement);
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
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 node_9680 = _Time;
                float2 node_8315 = (i.uv0+(float2(1,1)*(node_9680.g*_speeddistort)));
                float4 _noise2_var = tex2D(_noise2,TRANSFORM_TEX(node_8315, _noise2));
                float2 node_6772 = (_noise2_var.r+i.uv0);
                float4 _noise1_var = tex2D(_noise1,TRANSFORM_TEX(node_6772, _noise1));
                clip(step(_noise1_var.r,_Dissolve) - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = _color.rgb;
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
            uniform sampler2D _noise1; uniform float4 _noise1_ST;
            uniform float _Dissolve;
            uniform sampler2D _noise2; uniform float4 _noise2_ST;
            uniform float _speeddistort;
            uniform float _displacement;
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
                float4 node_9680 = _Time;
                float2 node_8315 = (o.uv0+(float2(1,1)*(node_9680.g*_speeddistort)));
                float4 _noise2_var = tex2Dlod(_noise2,float4(TRANSFORM_TEX(node_8315, _noise2),0.0,0));
                v.vertex.xyz += (v.normal*_noise2_var.r*_displacement);
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
                float4 node_9680 = _Time;
                float2 node_8315 = (i.uv0+(float2(1,1)*(node_9680.g*_speeddistort)));
                float4 _noise2_var = tex2D(_noise2,TRANSFORM_TEX(node_8315, _noise2));
                float2 node_6772 = (_noise2_var.r+i.uv0);
                float4 _noise1_var = tex2D(_noise1,TRANSFORM_TEX(node_6772, _noise1));
                clip(step(_noise1_var.r,_Dissolve) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
