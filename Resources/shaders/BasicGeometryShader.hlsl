#include "BasicShaderHeader.hlsli"

//struct GSOutput
//{
//	float4 pos : SV_POSITION;
//};

[maxvertexcount(6)]
void main(
	triangle VSOutput input[3] : SV_POSITION, 
	// �g���C�A���O���X�g���[��
	inout TriangleStream< GSOutput > output
	// �_�X�g���[��
	//inout PointStream< GSOutput > output
	// ���C���X�g���[��
	//inout LineStream< GSOutput > output
)
{
	// �O�p1
	for (uint i = 0; i < 3; i++) {
		GSOutput element;
		element.svpos = input[i].svpos;
		element.normal = input[i].normal;
		element.uv = input[i].uv;
		output.Append(element);

	}
	// ���݂̃X�g���b�v���I��
	output.RestartStrip();
	// �O�p2
	for (uint i = 0; i < 3; i++) {
		GSOutput element;
		element.svpos = input[i].svpos + float4(20.0f,0.0f,0.0f,0.0f);
		element.normal = input[i].normal;
		element.uv = input[i].uv * 5.0f;
		output.Append(element);

	}
}