#include "BasicShaderHeader.hlsli"

//struct GSOutput
//{
//	float4 pos : SV_POSITION;
//};

[maxvertexcount(3)]
void main(
	point VSOutput input[1] : SV_POSITION,
	// トライアングルストリーム
	inout TriangleStream< GSOutput > output
	// 点ストリーム
	//inout PointStream< GSOutput > output
	// ラインストリーム
	//inout LineStream< GSOutput > output
)
{
	GSOutput element;
	// 共通	
	element.normal = input[0].normal;
	element.uv = input[0].uv;
	// 点1
	element.svpos = input[0].svpos;
	output.Append(element);
	// 点2
	element.svpos = input[0].svpos + float4(10.0f, 10.0f, 0.0f, 0.0f);
	output.Append(element);
	// 点3
	element.svpos = input[0].svpos + float4(10.0f, 0.0f, 0.0f, 0.0f);
	output.Append(element);


}