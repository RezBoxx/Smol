// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7773,x:33196,y:32555,varname:node_7773,prsc:2|diff-2096-RGB,spec-715-OUT,gloss-2412-OUT,alpha-7624-OUT,refract-776-OUT;n:type:ShaderForge.SFN_Slider,id:5160,x:31853,y:33073,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_5160,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5299146,max:1;n:type:ShaderForge.SFN_Tex2d,id:9257,x:31797,y:32624,ptovrint:False,ptlb:Normalmap,ptin:_Normalmap,varname:node_9257,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:94af4a035a11eb44fa560261cb41e806,ntxv:3,isnm:True;n:type:ShaderForge.SFN_ComponentMask,id:176,x:31988,y:32795,varname:node_176,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9257-RGB;n:type:ShaderForge.SFN_Multiply,id:776,x:32341,y:32788,varname:node_776,prsc:2|A-176-OUT,B-557-OUT;n:type:ShaderForge.SFN_ValueProperty,id:557,x:32140,y:32918,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:node_557,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Color,id:2096,x:32291,y:32274,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_2096,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:715,x:31937,y:32425,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_715,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:2412,x:31937,y:32524,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_2412,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7179487,max:1;n:type:ShaderForge.SFN_Lerp,id:6068,x:32608,y:32992,varname:node_6068,prsc:2|A-5160-OUT,B-4179-OUT,T-5086-OUT;n:type:ShaderForge.SFN_Fresnel,id:5086,x:32262,y:33306,varname:node_5086,prsc:2;n:type:ShaderForge.SFN_Vector1,id:4179,x:32309,y:33106,varname:node_4179,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7624,x:32893,y:33035,varname:node_7624,prsc:2|A-6068-OUT,B-4572-OUT;n:type:ShaderForge.SFN_Slider,id:4572,x:32616,y:33285,ptovrint:False,ptlb:Super Opacity,ptin:_SuperOpacity,varname:node_4572,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;proporder:5160-9257-557-2096-715-2412-4572;pass:END;sub:END;*/

Shader "Custom/Frosted Glass" {
    Properties {
        _Opacity ("Opacity", Range(0, 1)) = 0.5299146
        _Normalmap ("Normalmap", 2D) = "bump" {}
        _intensity ("intensity", Float ) = 0.1
        _Color ("Color", Color) = (1,1,1,1)
        _Metallic ("Metallic", Range(0, 1)) = 0
        _Gloss ("Gloss", Range(0, 1)) = 0.7179487
        _SuperOpacity ("Super Opacity", Range(0, 1)) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        GrabPass{ "Refraction" }
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D Refraction;
            uniform float _Opacity;
            uniform sampler2D _Normalmap; uniform float4 _Normalmap_ST;
            uniform float _intensity;
            uniform float4 _Color;
            uniform float _Metallic;
            uniform float _Gloss;
            uniform float _SuperOpacity;
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
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 _Normalmap_var = UnpackNormal(tex2D(_Normalmap,TRANSFORM_TEX(i.uv0, _Normalmap)));
                float2 sceneUVs = (i.projPos.xy / i.projPos.w) + (_Normalmap_var.rgb.rg*_intensity);
                float4 sceneColor = tex2D(Refraction, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Metallic,_Metallic,_Metallic);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,(lerp(_Opacity,1.0,(1.0-max(0,dot(normalDirection, viewDirection))))*_SuperOpacity)),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
