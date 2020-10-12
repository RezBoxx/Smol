Shader "Unlit/BlurVideo"
{
    Properties
    {
        _MainTex ("Texture", 2D) = "white" {}
        _BlurOffset ("Blur Offset", Float) = 0.01
        _Mipmap ("Mipmap", Float) = 3
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 100

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            // make fog work
            #pragma multi_compile_fog

            #include "UnityCG.cginc"

            struct appdata
            {
                float4 vertex : POSITION;
                float2 uv : TEXCOORD0;
            };

            struct v2f
            {
                float2 uv : TEXCOORD0;
                UNITY_FOG_COORDS(1)
                float4 vertex : SV_POSITION;
            };

            sampler2D _MainTex;
            float4 _MainTex_ST;
            float _BlurOffset;
            float _Mipmap;

            v2f vert (appdata v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                UNITY_TRANSFER_FOG(o,o.vertex);
                return o;
            }

            float3 GetPixel(float2 offset, float2 uvs){
                float2 res = uvs + offset * _BlurOffset;
                return tex2Dlod(_MainTex, float4(res, 0,_Mipmap));
            }

            float3 BlurPixel(float2 uvs){
                float3 res = GetPixel(float2(0,0), uvs);
                //res += GetPixel(1,0);
                res += GetPixel(float2(1,0), uvs);
                res += GetPixel(float2(1,-1), uvs);
                res += GetPixel(float2(0,-1), uvs);
                res += GetPixel(float2(-1,-1), uvs);
                res += GetPixel(float2(-1,0), uvs);
                res += GetPixel(float2(-1,1), uvs);
                res += GetPixel(float2(0,1), uvs);
                res += GetPixel(float2(1,1), uvs);

                return res / 8;
            }

            fixed4 frag (v2f i) : SV_Target
            {
                // sample the texture
                fixed4 col = tex2D(_MainTex, i.uv);
                col.rgb = BlurPixel(i.uv).rgb;
                col.rgb += BlurPixel(i.uv).rgb;
                col.rgb /= 2;
                // apply fog
                UNITY_APPLY_FOG(i.fogCoord, col);
                return col;
            }
            ENDCG
        }
    }
}
