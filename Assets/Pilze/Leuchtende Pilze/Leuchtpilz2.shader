// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6953,x:32719,y:32712,varname:node_6953,prsc:2|emission-1291-OUT;n:type:ShaderForge.SFN_Tex2d,id:226,x:31746,y:32696,ptovrint:False,ptlb:emission mask,ptin:_emissionmask,varname:node_226,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1291,x:32313,y:32844,varname:node_1291,prsc:2|A-4731-OUT,B-7353-RGB,C-1180-OUT;n:type:ShaderForge.SFN_Color,id:7353,x:31938,y:32985,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7353,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.3196164,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:1180,x:31938,y:33232,ptovrint:False,ptlb:emission intensity,ptin:_emissionintensity,varname:node_1180,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_Power,id:4731,x:32271,y:32604,varname:node_4731,prsc:2|VAL-226-R,EXP-4053-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4053,x:32062,y:32733,ptovrint:False,ptlb:node_4053,ptin:_node_4053,varname:node_4053,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:226-7353-1180-4053;pass:END;sub:END;*/

Shader "Custom/Leuchtpilz2" {
    Properties {
        _emissionmask ("emission mask", 2D) = "white" {}
        _Color ("Color", Color) = (0.3196164,1,0,1)
        _emissionintensity ("emission intensity", Float ) = 10
        _node_4053 ("node_4053", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _emissionmask; uniform float4 _emissionmask_ST;
            uniform float4 _Color;
            uniform float _emissionintensity;
            uniform float _node_4053;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _emissionmask_var = tex2D(_emissionmask,TRANSFORM_TEX(i.uv0, _emissionmask));
                float3 emissive = (pow(_emissionmask_var.r,_node_4053)*_Color.rgb*_emissionintensity);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
