Shader "Custom/NoiseSurface"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
        _MainTex ("Emission Texture AAAA", 2D) = "white" {}
        _EmissionColor ("Emission Color", Color) = (1,1,1,1)
        _EmissionPower ("Emission Power", Float) = 10
        //_MainTex ("Albedo (RGB)", 2D) = "white" {}
        //_Glossiness ("Smoothness", Range(0,1)) = 0.5
        //_Metallic ("Metallic", Range(0,1)) = 0.0
        _Intensity ("Displacement intensity", Float) = .1
        _Speed ("Displacement speed", Float) = 1
        _Tiling ("Displacement tiling", Float) = 1
        _Fresnel ("Fresnel stuff", Float) = 1
        //_MinSpeed ("Min Speed", Float) = 1
        //_MaxSpeed ("Max Speed", Float) = 1.5
        _Distance ("Distance for normal recalc", Float) = .001
        _LightDivide ("Light Divide", Float) = 10
        _MaxBrightness ("Max Brightness", Range(0,1)) = .3
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf  Adam fullforwardshadows vertex:vert

        // Use shader model 3.0 target, to get nicer looking lighting
        #pragma target 3.0

        #include "ClassicNoise3D.hlsl"

        float _Fresnel;

        half4 LightingAdam(SurfaceOutput s, half3 lightDir, half3 viewDir, half atten){
            
            //return half4(s.Albedo,1);
            float a = dot(viewDir, s.Normal);
            a = a*_Fresnel;
            //a = 0;
            return half4(a,a,a,1);
        }

        half4 LightingAdam_GI (SurfaceOutput s, UnityGIInput data, inout UnityGI gi){
            return half4(0,0,0,0);
        }

        sampler2D _MainTex;
        //sampler2D _EmissionTex;

        struct Input
        {
            float2 uv_MainTex;
            float3 superpos;
            //float3 viewDir;

            //vertex color for particle input
            //float4 color : Color;
            //float4 objectpos;
        };

        half _Glossiness;
        half _Metallic;
        fixed4 _Color;
        fixed4 _EmissionColor;
        float _Intensity;
        float _Speed;
        float _Distance;
        float _LightDivide;
        float _MinSpeed, _MaxSpeed;
        float _Tiling;
        float _EmissionPower;

        // Add instancing support for this shader. You need to check 'Enable Instancing' on materials that use the shader.
        // See https://docs.unity3d.com/Manual/GPUInstancing.html for more information about instancing.
        // #pragma instancing_options assumeuniformscaling
        UNITY_INSTANCING_BUFFER_START(Props)
            // put more per-instance properties here
        UNITY_INSTANCING_BUFFER_END(Props)

        void vert (inout appdata_full v, out Input o){

            //float4 objectpos = mul(unity_ObjectToWorld, float4(0,0,0,1));
            //_Speed = lerp(_MinSpeed, _MaxSpeed, abs(sin(length(objectpos))));

            float4 help = mul(unity_ObjectToWorld, v.vertex) * _Tiling + _Time.y * _Speed;
            v.vertex.xyz += v.normal * _Intensity * cnoise(help);

            UNITY_INITIALIZE_OUTPUT(Input,o);
            o.superpos = help;



            //v.normal = cross(normalize(x), normalize(y));

        }

        float _MaxBrightness;

        void surf (Input IN, inout SurfaceOutput o)
        {
            /*
            // Albedo comes from a texture tinted by color
            fixed4 c = tex2D (_MainTex, IN.uv_MainTex) * _Color;
            o.Albedo = c.rgb;
            o.Albedo = abs(sin(IN.superpos));
            float a = length(ObjSpaceViewDir(float4(IN.superpos,1)));
            a = log(a);
            //o.Albedo = float4(a,a,a,1);
            //o.Albedo = float4(0,0,0,1);
            o.Emission = float4(a,a,a,1);
            // Metallic and smoothness come from slider variables
            //o.Metallic = _Metallic;
            //o.Smoothness = _Glossiness;
            o.Alpha = c.a;

            o.Emission = float4(0,0,0,1);
            */
            float noise = cnoise(IN.superpos);
            noise = abs(noise);
            noise = clamp(noise, 0, _MaxBrightness);
            o.Albedo = float4(noise, noise, noise,1);
            //o.Albedo = float4(0,0,0,1);
            o.Albedo = _Color;
            //o.Emission = _Color;

            fixed3 em = tex2D(_MainTex, IN.uv_MainTex).rgb;

            //c = fixed3(1,1,1);
            //o.Emission = _Color * IN.color * c; //Emission Bloom multiplier
            o.Emission = em * _EmissionColor * _EmissionPower;
            //float a = length(ObjSpaceViewDir(float4(IN.superpos,1)));
            //o.Emission *= a;
            
        }
        ENDCG
    }
    FallBack "Diffuse"
}
