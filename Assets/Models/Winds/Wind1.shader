// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4980,x:33333,y:32737,varname:node_4980,prsc:2|emission-2716-OUT;n:type:ShaderForge.SFN_Tex2d,id:4779,x:32298,y:32761,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_4779,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:097898fce008e3c4ea8e956ad8159878,ntxv:0,isnm:False|UVIN-2177-OUT;n:type:ShaderForge.SFN_TexCoord,id:1917,x:31829,y:32693,varname:node_1917,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:2177,x:32098,y:32778,varname:node_2177,prsc:2|A-1917-UVOUT,B-8004-OUT;n:type:ShaderForge.SFN_Time,id:646,x:31356,y:32763,varname:node_646,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8004,x:31911,y:32972,varname:node_8004,prsc:2|A-9956-OUT,B-7568-OUT,C-2217-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7568,x:31663,y:33111,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_7568,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_Vector2,id:2217,x:31635,y:33238,varname:node_2217,prsc:2,v1:0,v2:-1;n:type:ShaderForge.SFN_Multiply,id:9581,x:32536,y:32867,varname:node_9581,prsc:2|A-4779-R,B-8846-R;n:type:ShaderForge.SFN_VertexColor,id:8846,x:32202,y:33001,varname:node_8846,prsc:2;n:type:ShaderForge.SFN_Add,id:4634,x:31502,y:33000,varname:node_4634,prsc:2|A-1980-X,B-1980-Y,C-1980-Z;n:type:ShaderForge.SFN_ObjectPosition,id:1980,x:31175,y:33045,varname:node_1980,prsc:2;n:type:ShaderForge.SFN_Add,id:9956,x:31597,y:32825,varname:node_9956,prsc:2|A-646-T,B-4634-OUT;n:type:ShaderForge.SFN_Clamp01,id:2716,x:32975,y:32902,varname:node_2716,prsc:2|IN-9056-OUT;n:type:ShaderForge.SFN_Subtract,id:8900,x:32566,y:33135,varname:node_8900,prsc:2|A-9581-OUT,B-606-OUT;n:type:ShaderForge.SFN_Slider,id:606,x:32186,y:33326,ptovrint:False,ptlb:subtractor,ptin:_subtractor,varname:node_606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_DepthBlend,id:4688,x:32798,y:33283,varname:node_4688,prsc:2|DIST-3194-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3194,x:32523,y:33469,ptovrint:False,ptlb:distance,ptin:_distance,varname:node_3194,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:9056,x:32880,y:33104,varname:node_9056,prsc:2|A-8900-OUT,B-4688-OUT;proporder:4779-7568-606-3194;pass:END;sub:END;*/

Shader "Custom/Wind1" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _speed ("speed", Float ) = 0.1
        _subtractor ("subtractor", Range(0, 1)) = 0
        _distance ("distance", Float ) = 1
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _speed;
            uniform float _subtractor;
            uniform float _distance;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_646 = _Time;
                float2 node_2177 = (i.uv0+((node_646.g+(objPos.r+objPos.g+objPos.b))*_speed*float2(0,-1)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_2177, _MainTex));
                float node_2716 = saturate((((_MainTex_var.r*i.vertexColor.r)-_subtractor)*saturate((sceneZ-partZ)/_distance)));
                float3 emissive = float3(node_2716,node_2716,node_2716);
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
