// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34064,y:33044,varname:node_3138,prsc:2|emission-1301-OUT,alpha-9002-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31935,y:32706,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7790952,c2:0.07843135,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7394,x:31784,y:33315,ptovrint:False,ptlb:smoke,ptin:_smoke,varname:_smoke,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5fc985e1ce9bc994bb5aa2310b777a76,ntxv:2,isnm:False|UVIN-3968-OUT;n:type:ShaderForge.SFN_Tex2d,id:7570,x:31801,y:32905,ptovrint:False,ptlb:emission tex,ptin:_emissiontex,varname:_emissiontex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:341d84c3fb79e004692cb6942954c9b5,ntxv:0,isnm:False|UVIN-6245-OUT;n:type:ShaderForge.SFN_Multiply,id:9547,x:32166,y:32919,varname:node_9547,prsc:2|A-7241-RGB,B-7570-R,C-8527-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8527,x:31820,y:33143,ptovrint:False,ptlb:emission power,ptin:_emissionpower,varname:_emissionpower,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Add,id:5295,x:32335,y:32762,varname:node_5295,prsc:2|A-9547-OUT,B-7394-R;n:type:ShaderForge.SFN_Time,id:1810,x:31024,y:32885,varname:node_1810,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4764,x:31304,y:32937,varname:node_4764,prsc:2|A-1810-T,B-301-OUT,C-7452-OUT;n:type:ShaderForge.SFN_Multiply,id:465,x:31331,y:33272,varname:node_465,prsc:2|A-1810-T,B-4542-OUT,C-7452-OUT;n:type:ShaderForge.SFN_ValueProperty,id:301,x:30994,y:33081,ptovrint:False,ptlb:speed big smoke,ptin:_speedbigsmoke,varname:_speedbigsmoke,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.0125;n:type:ShaderForge.SFN_ValueProperty,id:4542,x:31020,y:33341,ptovrint:False,ptlb:speed blitze,ptin:_speedblitze,varname:_speedblitze,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.025;n:type:ShaderForge.SFN_Vector2,id:7452,x:30994,y:33182,varname:node_7452,prsc:2,v1:1,v2:0;n:type:ShaderForge.SFN_TexCoord,id:9796,x:31293,y:33085,varname:node_9796,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3968,x:31563,y:33300,varname:node_3968,prsc:2|A-465-OUT,B-9796-UVOUT;n:type:ShaderForge.SFN_Add,id:6245,x:31536,y:32929,varname:node_6245,prsc:2|A-4764-OUT,B-9796-UVOUT;n:type:ShaderForge.SFN_Vector1,id:1301,x:32356,y:33005,varname:node_1301,prsc:2,v1:0;n:type:ShaderForge.SFN_Fresnel,id:6183,x:31919,y:33505,varname:node_6183,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2607,x:32454,y:33309,varname:node_2607,prsc:2|A-7394-R,B-3588-OUT;n:type:ShaderForge.SFN_OneMinus,id:3588,x:32162,y:33457,varname:node_3588,prsc:2|IN-6183-OUT;n:type:ShaderForge.SFN_Power,id:7868,x:32713,y:33367,varname:node_7868,prsc:2|VAL-2607-OUT,EXP-4760-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4760,x:32510,y:33535,ptovrint:False,ptlb:exponent,ptin:_exponent,varname:_exponent,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:2542,x:32916,y:33388,varname:node_2542,prsc:2|A-7868-OUT,B-9189-OUT;n:type:ShaderForge.SFN_Slider,id:9189,x:32781,y:33593,ptovrint:False,ptlb:opacity add,ptin:_opacityadd,varname:_opacityadd,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:8895,x:33363,y:33672,ptovrint:False,ptlb:gradiente,ptin:_gradiente,varname:_gradiente,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7c65558a8380a4443b5f7f9218f83e13,ntxv:0,isnm:False|UVIN-1921-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6431,x:33354,y:33388,varname:node_6431,prsc:2|A-2542-OUT,B-8895-R;n:type:ShaderForge.SFN_TexCoord,id:1921,x:33116,y:33792,varname:node_1921,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9002,x:33754,y:33418,varname:node_9002,prsc:2|A-6431-OUT,B-1707-OUT;n:type:ShaderForge.SFN_DepthBlend,id:1707,x:33832,y:33721,varname:node_1707,prsc:2|DIST-5761-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5761,x:33615,y:33783,ptovrint:False,ptlb:depth distance,ptin:_depthdistance,varname:_depthdistance,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:5884,x:33854,y:33552,varname:node_5884,prsc:2|IN-1707-OUT;proporder:7241-7570-8527-7394-301-4542-4760-9189-8895-5761;pass:END;sub:END;*/

Shader "Shader Forge/MaliceSmoke" {
    Properties {
        _Color ("Color", Color) = (0.7790952,0.07843135,0.7843137,1)
        _emissiontex ("emission tex", 2D) = "white" {}
        _emissionpower ("emission power", Float ) = 5
        _smoke ("smoke", 2D) = "black" {}
        _speedbigsmoke ("speed big smoke", Float ) = 0.0125
        _speedblitze ("speed blitze", Float ) = 0.025
        _exponent ("exponent", Float ) = 1
        _opacityadd ("opacity add", Range(0, 1)) = 0
        _gradiente ("gradiente", 2D) = "white" {}
        _depthdistance ("depth distance", Float ) = 1
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _smoke; uniform float4 _smoke_ST;
            uniform float _speedblitze;
            uniform float _exponent;
            uniform float _opacityadd;
            uniform sampler2D _gradiente; uniform float4 _gradiente_ST;
            uniform float _depthdistance;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                float4 projPos : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
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
                float node_1301 = 0.0;
                float3 emissive = float3(node_1301,node_1301,node_1301);
                float3 finalColor = emissive;
                float4 node_1810 = _Time;
                float2 node_7452 = float2(1,0);
                float2 node_3968 = ((node_1810.g*_speedblitze*node_7452)+i.uv0);
                float4 _smoke_var = tex2D(_smoke,TRANSFORM_TEX(node_3968, _smoke));
                float4 _gradiente_var = tex2D(_gradiente,TRANSFORM_TEX(i.uv1, _gradiente));
                float node_1707 = saturate((sceneZ-partZ)/_depthdistance);
                return fixed4(finalColor,(((pow((_smoke_var.r*(1.0 - (1.0-max(0,dot(normalDirection, viewDirection))))),_exponent)+_opacityadd)*_gradiente_var.r)*node_1707));
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
