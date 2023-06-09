   float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float v4 : TEXCOORD4;
};

struct GS_OUTPUT
{
    float4 dx_Position : SV_Position;
    float4 gl_Position : TEXCOORD5;
    float4 gl_FragCoord : TEXCOORD6;
    float4 v0 : TEXCOORD0;
    float2 v1 : TEXCOORD1;
    float2 v2 : TEXCOORD2;
    float2 v3 : TEXCOORD3;
    float v4 : TEXCOORD4;
};

void copyVertex(inout GS_OUTPUT output, GS_INPUT input, GS_INPUT flatinput)
{
    output.gl_Position = input.gl_Position;
    output.v0 = input.v0; 
    output.v1 = input.v1; 
    output.v2 = input.v2; 
    output.v3 = input.v3; 
    output.v4 = input.v4; 
    output.gl_FragCoord = input.gl_FragCoord;
#ifndef ANGLE_POINT_SPRITE_SHADER
    output.dx_Position = input.dx_Position;
#endif  // ANGLE_POINT_SPRITE_SHADER
}
      �   �   �   �   �  DXBC���p����qs쎌R   �     4      �  �  0  RDEF�     �      <    �� �  �  RD11<          (   $          |                              �                            $Globals DriverConstants ���|      �   �           �      H  P           �           �      ����    ����    �      ,      �      ����    ����      P   ,      �      ����    ����    !  �   ,      �      ����    ����    6  �   ,      �      ����    ����    _sk_RTAdjust float4                             �  _umatrix_S1_c0_c0_c0 float3x3 ��                            �  _umatrix_S1_c0_c0_c1 _umatrix_S1_c0_c0_c2 _umatrix_S1_c0 ���            �      ����    ����                 4      ����    ����    X  0          4      ����    ����    e  <         �      ����    ����    �  @         �      ����    ����    dx_ViewAdjust dx_ViewCoords float2 �                            ,  dx_ViewScale clipControlOrigin float ���                             w  clipControlZeroToOne Microsoft (R) HLSL Shader Compiler 10.1 ���ISGNt         h                    h                  h                  h                  TEXCOORD ���OSGN�         �                    �                 