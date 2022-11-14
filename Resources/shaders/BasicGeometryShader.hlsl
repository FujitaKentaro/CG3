#include "BasicShaderHeader.hlsli"

//struct GSOutput
//{
//	float4 pos : SV_POSITION;
//};

[maxvertexcount(3)]
void main(
	point VSOutput input[1] : SV_POSITION,
	// �g���C�A���O���X�g���[��
	inout TriangleStream< GSOutput > output
	// �_�X�g���[��
	//inout PointStream< GSOutput > output
	// ���C���X�g���[��
	//inout LineStream< GSOutput > output
)
{
	GSOutput element;
	// ����	
	element.normal = input[0].normal;
	element.uv = input[0].uv;
	// �_1
	element.svpos = input[0].svpos;
	output.Append(element);
	// �_2
	element.svpos = input[0].svpos + float4(10.0f, 10.0f, 0.0f, 0.0f);
	output.Append(element);
	// �_3
	element.svpos = input[0].svpos + float4(10.0f, 0.0f, 0.0f, 0.0f);
	output.Append(element);


}