﻿// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Giraffe/Standard"
{
	Properties
	{
		_MainTex ("Sprite Texture", 2D) = "white" {}
	}

	SubShader
	{
		Tags
		{ 
			"Queue"="Transparent" 
			"IgnoreProjector"="True" 
			"RenderType"="Transparent" 
		}

		Cull Off
		Lighting Off
		ZWrite Off
		ZTest Always
		Fog { Mode Off }
		Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
		CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma fragmentoption ARB_precision_hint_fastest
			#include "UnityCG.cginc"

			sampler2D _MainTex;
			float4 _MainTex_ST;

			struct appdata_t
			{
				float4 vertex   : POSITION;
				float2 texcoord : TEXCOORD0;
				float4 colour : COLOR;
			};

			struct v2f
			{
				float4 vertex        : POSITION;
				float2 texcoord      : TEXCOORD0;
				float4 colour        : COLOR;
			};

			v2f vert(appdata_t IN)
			{
				v2f OUT;
				OUT.vertex = UnityObjectToClipPos(IN.vertex);
				OUT.texcoord = TRANSFORM_TEX(IN.texcoord, _MainTex);
				OUT.colour = IN.colour;

				// Snapping params
				float hpcX = _ScreenParams.x * 0.5;
				float hpcY = _ScreenParams.y * 0.5;
			#ifdef UNITY_HALF_TEXEL_OFFSET
				float hpcOX = -0.5;
				float hpcOY = 0.5;
			#else
				float hpcOX = 0;
				float hpcOY = 0;
			#endif	
				// Snap
				float pos = floor((OUT.vertex.x / OUT.vertex.w) * hpcX + 0.5f) + hpcOX;
				OUT.vertex.x = pos / hpcX * OUT.vertex.w;

				pos = floor((OUT.vertex.y / OUT.vertex.w) * hpcY + 0.5f) + hpcOY;
				OUT.vertex.y = pos / hpcY * OUT.vertex.w;

				return OUT;
			}

			fixed4 frag(v2f IN) : COLOR
			{
				return tex2D( _MainTex, IN.texcoord) * IN.colour;
			}
		ENDCG
		}
	}

}
