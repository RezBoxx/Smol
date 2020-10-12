// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33206,y:32651,varname:node_4795,prsc:2|diff-2393-OUT,emission-2393-OUT,voffset-3142-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32542,y:32691,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-797-RGB,D-9248-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:32142,y:32941,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:9248,x:32235,y:33081,varname:node_9248,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:798,x:32516,y:32962,varname:node_798,prsc:2|A-6074-A,B-2053-A,C-797-A;n:type:ShaderForge.SFN_Fresnel,id:1929,x:32500,y:33547,varname:node_1929,prsc:2|EXP-4148-OUT;n:type:ShaderForge.SFN_Slider,id:4148,x:32094,y:33593,ptovrint:False,ptlb:node_4148,ptin:_node_4148,varname:node_4148,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0.2097315,max:1;n:type:ShaderForge.SFN_OneMinus,id:9260,x:32778,y:33532,varname:node_9260,prsc:2|IN-1929-OUT;n:type:ShaderForge.SFN_Multiply,id:9807,x:32869,y:33209,varname:node_9807,prsc:2|A-8913-OUT,B-4326-OUT;n:type:ShaderForge.SFN_Slider,id:4326,x:32359,y:33355,ptovrint:False,ptlb:power,ptin:_power,varname:node_4326,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1135416,max:1;n:type:ShaderForge.SFN_Time,id:5974,x:30889,y:32899,varname:node_5974,prsc:2;n:type:ShaderForge.SFN_Sin,id:2280,x:31643,y:33028,varname:node_2280,prsc:2|IN-5963-OUT;n:type:ShaderForge.SFN_Multiply,id:8913,x:32359,y:33183,varname:node_8913,prsc:2|A-6654-OUT,B-3590-OUT;n:type:ShaderForge.SFN_NormalVector,id:3590,x:32013,y:33340,prsc:2,pt:False;n:type:ShaderForge.SFN_Abs,id:6654,x:31860,y:33062,varname:node_6654,prsc:2|IN-2280-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:6324,x:30852,y:33255,varname:node_6324,prsc:2;n:type:ShaderForge.SFN_Add,id:2619,x:31135,y:33319,varname:node_2619,prsc:2|A-6324-X,B-6324-Y,C-6324-Z;n:type:ShaderForge.SFN_Multiply,id:6181,x:31469,y:33191,varname:node_6181,prsc:2|A-2619-OUT,B-5577-OUT;n:type:ShaderForge.SFN_Slider,id:5577,x:31410,y:33413,ptovrint:False,ptlb:tile,ptin:_tile,varname:node_5577,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.072652,max:10;n:type:ShaderForge.SFN_Add,id:5963,x:31432,y:32984,varname:node_5963,prsc:2|A-9846-OUT,B-6181-OUT;n:type:ShaderForge.SFN_Multiply,id:3142,x:32882,y:32974,varname:node_3142,prsc:2|A-2053-A,B-9807-OUT;n:type:ShaderForge.SFN_Vector1,id:6973,x:31229,y:33096,varname:node_6973,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9846,x:31184,y:32855,varname:node_9846,prsc:2|A-5974-T,B-3230-OUT;n:type:ShaderForge.SFN_Vector1,id:3230,x:31019,y:33096,varname:node_3230,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:1196,x:32050,y:33242,varname:node_1196,prsc:2,v1:1;proporder:6074-797-4148-4326-5577;pass:END;sub:END;*/

Shader "Shader Forge/DarkBubbles" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _TintColor ("Color", Color) = (0,0,0,1)
        _node_4148 ("node_4148", Range(-1, 1)) = 0.2097315
        _power ("power", Range(0, 1)) = 0.1135416
        _tile ("tile", Range(0, 10)) = 1.072652
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _power;
            uniform float _tile;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_5974 = _Time;
                v.vertex.xyz += (o.vertexColor.a*((abs(sin(((node_5974.g*2.0)+((mul(unity_ObjectToWorld, v.vertex).r+mul(unity_ObjectToWorld, v.vertex).g+mul(unity_ObjectToWorld, v.vertex).b)*_tile))))*v.normal)*_power));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 node_2393 = (_MainTex_var.rgb*i.vertexColor.rgb*_TintColor.rgb*2.0);
                float3 emissive = node_2393;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
