
I
MyInputPlaceholder*
dtype0*$
shape:���������  
?
VariableConst*
valueB*
dtype0
5

Variable_1Const*
value
B*
dtype0
A

Variable_2Const*
valueB*
dtype0
5

Variable_3Const*
value
B*
dtype0
Q
#Flatten/flatten/strided_slice/stackConst*
dtype0*
valueB: 
S
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0
R
Flatten/flatten/Reshape/shape/1Const*
valueB :
���������*
dtype0
:

Variable_4Const*
valueB	�x*
dtype0
5

Variable_5Const*
value
Bx*
dtype0
9

Variable_6Const*
dtype0*
valueBxT
5

Variable_7Const*
dtype0*
value
BT
9

Variable_8Const*
dtype0*
valueBT

5

Variable_9Const*
dtype0*
value
B

�
Conv2DConv2DMyInputVariable*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*
	dilations
*
T0
'
addAddConv2D
Variable_1*
T0
 

MyConv2D_1Reluadd*
T0
�
MyMaxPooling2D_1MaxPool
MyConv2D_1*
ksize
*
paddingVALID*
T0*
strides
*
data_formatNHWC
�
Conv2D_1Conv2DMyMaxPooling2D_1
Variable_2*
paddingVALID*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
+
add_1AddConv2D_1
Variable_3*
T0
"

MyConv2D_2Reluadd_1*
T0
�
MyMaxPooling2D_2MaxPool
MyConv2D_2*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
I
Flatten/flatten/ShapeShapeMyMaxPooling2D_2*
T0*
out_type0
�
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_1*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask
�
Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*
T0*

axis *
N
j
Flatten/flatten/ReshapeReshapeMyMaxPooling2D_2Flatten/flatten/Reshape/shape*
T0*
Tshape0
d
MatMulMatMulFlatten/flatten/Reshape
Variable_4*
T0*
transpose_a( *
transpose_b( 
)
add_2AddMatMul
Variable_5*
T0
!
	MyDense_1Reluadd_2*
T0
X
MatMul_1MatMul	MyDense_1
Variable_6*
transpose_a( *
transpose_b( *
T0
+
add_3AddMatMul_1
Variable_7*
T0
!
	MyDense_2Reluadd_3*
T0
X
MatMul_2MatMul	MyDense_2
Variable_8*
T0*
transpose_a( *
transpose_b( 
+
add_4AddMatMul_2
Variable_9*
T0
$
	MySoftMaxSoftmaxadd_4*
T0 " 