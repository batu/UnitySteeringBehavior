
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
shape: *
dtype0*
	container *
shared_name 

global_step/AssignAssignglobal_stepglobal_step/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
/
add/yConst*
value	B :*
dtype0
,
addAddglobal_step/readadd/y*
T0
t
AssignAssignglobal_stepadd*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
F
last_reward/initial_valueConst*
valueB
 *    *
dtype0
W
last_reward
VariableV2*
shape: *
dtype0*
	container *
shared_name 

last_reward/AssignAssignlast_rewardlast_reward/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
R
last_reward/readIdentitylast_reward*
T0*
_class
loc:@last_reward
3

new_rewardPlaceholder*
dtype0*
shape: 
}
Assign_1Assignlast_reward
new_reward*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
?
statePlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
p
running_mean/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@running_mean
}
running_mean
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_class
loc:@running_mean

running_mean/AssignAssignrunning_meanrunning_mean/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@running_mean
U
running_mean/readIdentityrunning_mean*
T0*
_class
loc:@running_mean
w
!running_variance/Initializer/onesConst*
valueB*  ?*
dtype0*#
_class
loc:@running_variance

running_variance
VariableV2*
shape:*
dtype0*
	container *
shared_name *#
_class
loc:@running_variance
­
running_variance/AssignAssignrunning_variance!running_variance/Initializer/ones*
T0*
validate_shape(*
use_locking(*#
_class
loc:@running_variance
a
running_variance/readIdentityrunning_variance*
T0*#
_class
loc:@running_variance
-
subSubstaterunning_mean/read*
T0
6
CastCastglobal_step/read*

SrcT0*

DstT0
4
add_1/yConst*
valueB
 *  ?*
dtype0
$
add_1AddCastadd_1/y*
T0
9
truedivRealDivrunning_variance/readadd_1*
T0

SqrtSqrttruediv*
T0
(
	truediv_1RealDivsubSqrt*
T0
G
normalized_state/Minimum/yConst*
valueB
 *   @*
dtype0
S
normalized_state/MinimumMinimum	truediv_1normalized_state/Minimum/y*
T0
?
normalized_state/yConst*
valueB
 *   À*
dtype0
R
normalized_stateMaximumnormalized_state/Minimumnormalized_state/y*
T0
5
new_meanPlaceholder*
dtype0*
shape:
9
new_variancePlaceholder*
dtype0*
shape:
}
Assign_2Assignrunning_meannew_mean*
T0*
validate_shape(*
use_locking(*
_class
loc:@running_mean

Assign_3Assignrunning_variancenew_variance*
T0*
validate_shape(*
use_locking(*#
_class
loc:@running_variance

-dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *
dtype0*
_class
loc:@dense/kernel
y
+dense/kernel/Initializer/random_uniform/minConst*
valueB
 *¾*
dtype0*
_class
loc:@dense/kernel
y
+dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *>*
dtype0*
_class
loc:@dense/kernel
Å
5dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform-dense/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*
_class
loc:@dense/kernel
¶
+dense/kernel/Initializer/random_uniform/subSub+dense/kernel/Initializer/random_uniform/max+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel
À
+dense/kernel/Initializer/random_uniform/mulMul5dense/kernel/Initializer/random_uniform/RandomUniform+dense/kernel/Initializer/random_uniform/sub*
T0*
_class
loc:@dense/kernel
²
'dense/kernel/Initializer/random_uniformAdd+dense/kernel/Initializer/random_uniform/mul+dense/kernel/Initializer/random_uniform/min*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
§
dense/kernel/AssignAssigndense/kernel'dense/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
j
dense/MatMulMatMulnormalized_statedense/kernel/read*
transpose_a( *
transpose_b( *
T0
'
	dense/EluEludense/MatMul*
T0

/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *
dtype0*!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *×³]¾*
dtype0*!
_class
loc:@dense_1/kernel
}
-dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *×³]>*
dtype0*!
_class
loc:@dense_1/kernel
Ë
7dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform/dense_1/kernel/Initializer/random_uniform/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_1/kernel
¾
-dense_1/kernel/Initializer/random_uniform/subSub-dense_1/kernel/Initializer/random_uniform/max-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel
È
-dense_1/kernel/Initializer/random_uniform/mulMul7dense_1/kernel/Initializer/random_uniform/RandomUniform-dense_1/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@dense_1/kernel
º
)dense_1/kernel/Initializer/random_uniformAdd-dense_1/kernel/Initializer/random_uniform/mul-dense_1/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@dense_1/kernel

dense_1/kernel
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
¯
dense_1/kernel/AssignAssigndense_1/kernel)dense_1/kernel/Initializer/random_uniform*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
[
dense_1/kernel/readIdentitydense_1/kernel*
T0*!
_class
loc:@dense_1/kernel
g
dense_2/MatMulMatMul	dense/Eludense_1/kernel/read*
transpose_a( *
transpose_b( *
T0
+
dense_2/EluEludense_2/MatMul*
T0
5

batch_sizePlaceholder*
dtype0*
shape:

1dense_2/kernel/Initializer/truncated_normal/shapeConst*
valueB"@      *
dtype0*!
_class
loc:@dense_2/kernel

0dense_2/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_2/kernel

2dense_2/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *i<*
dtype0*!
_class
loc:@dense_2/kernel
Ó
;dense_2/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_2/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_2/kernel
Ó
/dense_2/kernel/Initializer/truncated_normal/mulMul;dense_2/kernel/Initializer/truncated_normal/TruncatedNormal2dense_2/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_2/kernel
Á
+dense_2/kernel/Initializer/truncated_normalAdd/dense_2/kernel/Initializer/truncated_normal/mul0dense_2/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_2/kernel

dense_2/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
±
dense_2/kernel/AssignAssigndense_2/kernel+dense_2/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
[
dense_2/kernel/readIdentitydense_2/kernel*
T0*!
_class
loc:@dense_2/kernel
i
dense_3/MatMulMatMuldense_2/Eludense_2/kernel/read*
transpose_a( *
transpose_b( *
T0
0
action_probsSoftmaxdense_3/MatMul*
T0
M
#multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0
}
multinomial/MultinomialMultinomialdense_3/MatMul#multinomial/Multinomial/num_samples*

seed *
seed2 *
T0
4
actionIdentitymultinomial/Multinomial*
T0	

1dense_3/kernel/Initializer/truncated_normal/shapeConst*
valueB"@      *
dtype0*!
_class
loc:@dense_3/kernel

0dense_3/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
dtype0*!
_class
loc:@dense_3/kernel

2dense_3/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *Eñ>*
dtype0*!
_class
loc:@dense_3/kernel
Ó
;dense_3/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal1dense_3/kernel/Initializer/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*!
_class
loc:@dense_3/kernel
Ó
/dense_3/kernel/Initializer/truncated_normal/mulMul;dense_3/kernel/Initializer/truncated_normal/TruncatedNormal2dense_3/kernel/Initializer/truncated_normal/stddev*
T0*!
_class
loc:@dense_3/kernel
Á
+dense_3/kernel/Initializer/truncated_normalAdd/dense_3/kernel/Initializer/truncated_normal/mul0dense_3/kernel/Initializer/truncated_normal/mean*
T0*!
_class
loc:@dense_3/kernel

dense_3/kernel
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
±
dense_3/kernel/AssignAssigndense_3/kernel+dense_3/kernel/Initializer/truncated_normal*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
[
dense_3/kernel/readIdentitydense_3/kernel*
T0*!
_class
loc:@dense_3/kernel
i
dense_4/MatMulMatMuldense_2/Eludense_3/kernel/read*
transpose_a( *
transpose_b( *
T0
3
value_estimateIdentitydense_4/MatMul*
T0
4
add_2/yConst*
valueB
 *ÿæÛ.*
dtype0
,
add_2Addaction_probsadd_2/y*
T0

LogLogadd_2*
T0
&
mulMulaction_probsLog*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
L
SumSummulSum/reduction_indices*
	keep_dims( *
T0*

Tidx0

NegNegSum*
T0
A
PlaceholderPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
C
OneHotEncoding/ToInt64CastPlaceholder*

SrcT0*

DstT0	
I
OneHotEncoding/one_hot/ConstConst*
valueB
 *  ?*
dtype0
K
OneHotEncoding/one_hot/Const_1Const*
valueB
 *    *
dtype0
F
OneHotEncoding/one_hot/depthConst*
value	B :*
dtype0
L
OneHotEncoding/one_hot/on_valueConst*
valueB
 *  ?*
dtype0
M
 OneHotEncoding/one_hot/off_valueConst*
valueB
 *    *
dtype0
Á
OneHotEncoding/one_hotOneHotOneHotEncoding/ToInt64OneHotEncoding/one_hot/depthOneHotEncoding/one_hot/on_value OneHotEncoding/one_hot/off_value*
axisÿÿÿÿÿÿÿÿÿ*
T0*
TI0	
K
old_probabilitiesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
;
mul_1Mulaction_probsOneHotEncoding/one_hot*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
R
Sum_1Summul_1Sum_1/reduction_indices*
	keep_dims( *
T0*

Tidx0
@
mul_2Mulold_probabilitiesOneHotEncoding/one_hot*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2Summul_2Sum_2/reduction_indices*
	keep_dims( *
T0*

Tidx0
H
discounted_rewardsPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
D

advantagesPlaceholder*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
J
PolynomialDecay/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 *·C:Q*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *
×#<*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
4
add_3/yConst*
valueB
 *ÿæÛ.*
dtype0
%
add_3AddSum_2add_3/y*
T0
+
	truediv_2RealDivSum_1add_3*
T0
,
mul_3Mul	truediv_2
advantages*
T0
4
sub_1/xConst*
valueB
 *  ?*
dtype0
/
sub_1Subsub_1/xPolynomialDecay*
T0
4
add_4/xConst*
valueB
 *  ?*
dtype0
/
add_4Addadd_4/xPolynomialDecay*
T0
;
clip_by_value/MinimumMinimum	truediv_2add_4*
T0
?
clip_by_valueMaximumclip_by_value/Minimumsub_1*
T0
0
mul_4Mulclip_by_value
advantages*
T0
)
MinimumMinimummul_3mul_4*
T0
:
ConstConst*
valueB"       *
dtype0
B
MeanMeanMinimumConst*
	keep_dims( *
T0*

Tidx0

Neg_1NegMean*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
[
Sum_3Sumvalue_estimateSum_3/reduction_indices*
	keep_dims( *
T0*

Tidx0
J
SquaredDifferenceSquaredDifferencediscounted_rewardsSum_3*
T0
5
Const_1Const*
valueB: *
dtype0
P
Mean_1MeanSquaredDifferenceConst_1*
	keep_dims( *
T0*

Tidx0
L
PolynomialDecay_1/learning_rateConst*
valueB
 *o:*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 *·C:Q*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
$
add_5AddNeg_1Mean_1*
T0
5
Const_2Const*
valueB: *
dtype0
B
Mean_2MeanNegConst_2*
	keep_dims( *
T0*

Tidx0
0
mul_5MulPolynomialDecay_1Mean_2*
T0
#
sub_2Subadd_5mul_5*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *·Q8*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 *·C:Q*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
8
gradients/ShapeConst*
valueB *
dtype0
<
gradients/ConstConst*
valueB
 *  ?*
dtype0
A
gradients/FillFillgradients/Shapegradients/Const*
T0
C
gradients/sub_2_grad/ShapeConst*
valueB *
dtype0
E
gradients/sub_2_grad/Shape_1Const*
valueB *
dtype0

*gradients/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_2_grad/Shapegradients/sub_2_grad/Shape_1*
T0

gradients/sub_2_grad/SumSumgradients/Fill*gradients/sub_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/sub_2_grad/ReshapeReshapegradients/sub_2_grad/Sumgradients/sub_2_grad/Shape*
T0*
Tshape0

gradients/sub_2_grad/Sum_1Sumgradients/Fill,gradients/sub_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
D
gradients/sub_2_grad/NegNeggradients/sub_2_grad/Sum_1*
T0
x
gradients/sub_2_grad/Reshape_1Reshapegradients/sub_2_grad/Neggradients/sub_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_2_grad/tuple/group_depsNoOp^gradients/sub_2_grad/Reshape^gradients/sub_2_grad/Reshape_1
¹
-gradients/sub_2_grad/tuple/control_dependencyIdentitygradients/sub_2_grad/Reshape&^gradients/sub_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_2_grad/Reshape
¿
/gradients/sub_2_grad/tuple/control_dependency_1Identitygradients/sub_2_grad/Reshape_1&^gradients/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_2_grad/Reshape_1
C
gradients/add_5_grad/ShapeConst*
valueB *
dtype0
E
gradients/add_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_5_grad/Shapegradients/add_5_grad/Shape_1*
T0
 
gradients/add_5_grad/SumSum-gradients/sub_2_grad/tuple/control_dependency*gradients/add_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_5_grad/ReshapeReshapegradients/add_5_grad/Sumgradients/add_5_grad/Shape*
T0*
Tshape0
¤
gradients/add_5_grad/Sum_1Sum-gradients/sub_2_grad/tuple/control_dependency,gradients/add_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_5_grad/Reshape_1Reshapegradients/add_5_grad/Sum_1gradients/add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_5_grad/tuple/group_depsNoOp^gradients/add_5_grad/Reshape^gradients/add_5_grad/Reshape_1
¹
-gradients/add_5_grad/tuple/control_dependencyIdentitygradients/add_5_grad/Reshape&^gradients/add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_5_grad/Reshape
¿
/gradients/add_5_grad/tuple/control_dependency_1Identitygradients/add_5_grad/Reshape_1&^gradients/add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_5_grad/Reshape_1
C
gradients/mul_5_grad/ShapeConst*
valueB *
dtype0
E
gradients/mul_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
a
gradients/mul_5_grad/mulMul/gradients/sub_2_grad/tuple/control_dependency_1Mean_2*
T0

gradients/mul_5_grad/SumSumgradients/mul_5_grad/mul*gradients/mul_5_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
n
gradients/mul_5_grad/mul_1MulPolynomialDecay_1/gradients/sub_2_grad/tuple/control_dependency_1*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
¹
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
¿
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
W
gradients/Neg_1_grad/NegNeg-gradients/add_5_grad/tuple/control_dependency*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/add_5_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
P
gradients/Mean_1_grad/ShapeShapeSquaredDifference*
T0*
out_type0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*
T0*

Tmultiples0
R
gradients/Mean_1_grad/Shape_1ShapeSquaredDifference*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
{
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
¶
gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
}
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
º
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
{
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
¢
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
 
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*0
_class&
$"loc:@gradients/Mean_1_grad/Shape_1
Z
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape/gradients/mul_5_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
B
gradients/Mean_2_grad/ShapeShapeNeg*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*
T0*

Tmultiples0
D
gradients/Mean_2_grad/Shape_1ShapeNeg*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
{
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
¶
gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
}
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
º
gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
	keep_dims( *
T0*

Tidx0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
{
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
¢
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
 
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0*0
_class&
$"loc:@gradients/Mean_2_grad/Shape_1
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
V
!gradients/Mean_grad/Reshape/shapeConst*
valueB"      *
dtype0
z
gradients/Mean_grad/ReshapeReshapegradients/Neg_1_grad/Neg!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
D
gradients/Mean_grad/ShapeShapeMinimum*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*
T0*

Tmultiples0
F
gradients/Mean_grad/Shape_1ShapeMinimum*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
w
gradients/Mean_grad/ConstConst*
valueB: *
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
®
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
y
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
²
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
w
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_grad/Shape_1
V
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
\
&gradients/SquaredDifference_grad/ShapeShapediscounted_rewards*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_3*
T0*
out_type0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0
t
'gradients/SquaredDifference_grad/scalarConst^gradients/Mean_1_grad/truediv*
valueB
 *   @*
dtype0
|
$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalargradients/Mean_1_grad/truediv*
T0
o
$gradients/SquaredDifference_grad/subSubdiscounted_rewardsSum_3^gradients/Mean_1_grad/truediv*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
E
gradients/Neg_grad/NegNeggradients/Mean_2_grad/truediv*
T0
E
gradients/Minimum_grad/ShapeShapemul_3*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_4*
T0*
out_type0
]
gradients/Minimum_grad/Shape_2Shapegradients/Mean_grad/truediv*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
q
gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_3mul_4*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqualgradients/Mean_grad/truedivgradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zerosgradients/Mean_grad/truediv*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
L
gradients/Sum_3_grad/ShapeShapevalue_estimate*
T0*
out_type0
r
gradients/Sum_3_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
t
gradients/Sum_3_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
y
 gradients/Sum_3_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
y
 gradients/Sum_3_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
½
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
x
gradients/Sum_3_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
á
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
N*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
w
gradients/Sum_3_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
£
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_3_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*
T0*

Tmultiples0
?
gradients/Sum_grad/ShapeShapemul*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*
valueB *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/startConst*
value	B : *
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
u
gradients/Sum_grad/range/deltaConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
N*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
s
gradients/Sum_grad/Maximum/yConst*
value	B :*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
v
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*
T0*

Tmultiples0
G
gradients/mul_3_grad/ShapeShape	truediv_2*
T0*
out_type0
J
gradients/mul_3_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
e
gradients/mul_3_grad/mulMul/gradients/Minimum_grad/tuple/control_dependency
advantages*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/mul*gradients/mul_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
f
gradients/mul_3_grad/mul_1Mul	truediv_2/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
¿
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
K
gradients/mul_4_grad/ShapeShapeclip_by_value*
T0*
out_type0
J
gradients/mul_4_grad/Shape_1Shape
advantages*
T0*
out_type0

*gradients/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_4_grad/Shapegradients/mul_4_grad/Shape_1*
T0
g
gradients/mul_4_grad/mulMul1gradients/Minimum_grad/tuple/control_dependency_1
advantages*
T0

gradients/mul_4_grad/SumSumgradients/mul_4_grad/mul*gradients/mul_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_4_grad/ReshapeReshapegradients/mul_4_grad/Sumgradients/mul_4_grad/Shape*
T0*
Tshape0
l
gradients/mul_4_grad/mul_1Mulclip_by_value1gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_4_grad/Sum_1Sumgradients/mul_4_grad/mul_1,gradients/mul_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_4_grad/Reshape_1Reshapegradients/mul_4_grad/Sum_1gradients/mul_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Reshape^gradients/mul_4_grad/Reshape_1
¹
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Reshape&^gradients/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_4_grad/Reshape
¿
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Reshape_1&^gradients/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_4_grad/Reshape_1
H
gradients/mul_grad/ShapeShapeaction_probs*
T0*
out_type0
A
gradients/mul_grad/Shape_1ShapeLog*
T0*
out_type0

(gradients/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_grad/Shapegradients/mul_grad/Shape_1*
T0
D
gradients/mul_grad/mulMulgradients/Sum_grad/TileLog*
T0

gradients/mul_grad/SumSumgradients/mul_grad/mul(gradients/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
n
gradients/mul_grad/ReshapeReshapegradients/mul_grad/Sumgradients/mul_grad/Shape*
T0*
Tshape0
O
gradients/mul_grad/mul_1Mulaction_probsgradients/Sum_grad/Tile*
T0

gradients/mul_grad/Sum_1Sumgradients/mul_grad/mul_1*gradients/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_grad/Reshape_1Reshapegradients/mul_grad/Sum_1gradients/mul_grad/Shape_1*
T0*
Tshape0
g
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Reshape^gradients/mul_grad/Reshape_1
±
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Reshape$^gradients/mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
·
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Reshape_1$^gradients/mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_grad/Reshape_1
[
"gradients/clip_by_value_grad/ShapeShapeclip_by_value/Minimum*
T0*
out_type0
M
$gradients/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
u
$gradients/clip_by_value_grad/Shape_2Shape-gradients/mul_4_grad/tuple/control_dependency*
T0*
out_type0
U
(gradients/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0

"gradients/clip_by_value_grad/zerosFill$gradients/clip_by_value_grad/Shape_2(gradients/clip_by_value_grad/zeros/Const*
T0
`
)gradients/clip_by_value_grad/GreaterEqualGreaterEqualclip_by_value/Minimumsub_1*
T0

2gradients/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/clip_by_value_grad/Shape$gradients/clip_by_value_grad/Shape_1*
T0
´
#gradients/clip_by_value_grad/SelectSelect)gradients/clip_by_value_grad/GreaterEqual-gradients/mul_4_grad/tuple/control_dependency"gradients/clip_by_value_grad/zeros*
T0
¶
%gradients/clip_by_value_grad/Select_1Select)gradients/clip_by_value_grad/GreaterEqual"gradients/clip_by_value_grad/zeros-gradients/mul_4_grad/tuple/control_dependency*
T0
¦
 gradients/clip_by_value_grad/SumSum#gradients/clip_by_value_grad/Select2gradients/clip_by_value_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

$gradients/clip_by_value_grad/ReshapeReshape gradients/clip_by_value_grad/Sum"gradients/clip_by_value_grad/Shape*
T0*
Tshape0
¬
"gradients/clip_by_value_grad/Sum_1Sum%gradients/clip_by_value_grad/Select_14gradients/clip_by_value_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

&gradients/clip_by_value_grad/Reshape_1Reshape"gradients/clip_by_value_grad/Sum_1$gradients/clip_by_value_grad/Shape_1*
T0*
Tshape0

-gradients/clip_by_value_grad/tuple/group_depsNoOp%^gradients/clip_by_value_grad/Reshape'^gradients/clip_by_value_grad/Reshape_1
Ù
5gradients/clip_by_value_grad/tuple/control_dependencyIdentity$gradients/clip_by_value_grad/Reshape.^gradients/clip_by_value_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/clip_by_value_grad/Reshape
ß
7gradients/clip_by_value_grad/tuple/control_dependency_1Identity&gradients/clip_by_value_grad/Reshape_1.^gradients/clip_by_value_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_grad/Reshape_1

$gradients/dense_4/MatMul_grad/MatMulMatMulgradients/Sum_3_grad/Tiledense_3/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_4/MatMul_grad/MatMul_1MatMuldense_2/Elugradients/Sum_3_grad/Tile*
transpose_a(*
transpose_b( *
T0

.gradients/dense_4/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_4/MatMul_grad/MatMul'^gradients/dense_4/MatMul_grad/MatMul_1
Û
6gradients/dense_4/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_4/MatMul_grad/MatMul/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
á
8gradients/dense_4/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_4/MatMul_grad/MatMul_1/^gradients/dense_4/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_4/MatMul_grad/MatMul_1
k
gradients/Log_grad/Reciprocal
Reciprocaladd_2.^gradients/mul_grad/tuple/control_dependency_1*
T0
t
gradients/Log_grad/mulMul-gradients/mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0
W
*gradients/clip_by_value/Minimum_grad/ShapeShape	truediv_2*
T0*
out_type0
U
,gradients/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0

,gradients/clip_by_value/Minimum_grad/Shape_2Shape5gradients/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
]
0gradients/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

*gradients/clip_by_value/Minimum_grad/zerosFill,gradients/clip_by_value/Minimum_grad/Shape_20gradients/clip_by_value/Minimum_grad/zeros/Const*
T0
V
.gradients/clip_by_value/Minimum_grad/LessEqual	LessEqual	truediv_2add_4*
T0
¶
:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients/clip_by_value/Minimum_grad/Shape,gradients/clip_by_value/Minimum_grad/Shape_1*
T0
Ñ
+gradients/clip_by_value/Minimum_grad/SelectSelect.gradients/clip_by_value/Minimum_grad/LessEqual5gradients/clip_by_value_grad/tuple/control_dependency*gradients/clip_by_value/Minimum_grad/zeros*
T0
Ó
-gradients/clip_by_value/Minimum_grad/Select_1Select.gradients/clip_by_value/Minimum_grad/LessEqual*gradients/clip_by_value/Minimum_grad/zeros5gradients/clip_by_value_grad/tuple/control_dependency*
T0
¾
(gradients/clip_by_value/Minimum_grad/SumSum+gradients/clip_by_value/Minimum_grad/Select:gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
¤
,gradients/clip_by_value/Minimum_grad/ReshapeReshape(gradients/clip_by_value/Minimum_grad/Sum*gradients/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
Ä
*gradients/clip_by_value/Minimum_grad/Sum_1Sum-gradients/clip_by_value/Minimum_grad/Select_1<gradients/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
ª
.gradients/clip_by_value/Minimum_grad/Reshape_1Reshape*gradients/clip_by_value/Minimum_grad/Sum_1,gradients/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0

5gradients/clip_by_value/Minimum_grad/tuple/group_depsNoOp-^gradients/clip_by_value/Minimum_grad/Reshape/^gradients/clip_by_value/Minimum_grad/Reshape_1
ù
=gradients/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity,gradients/clip_by_value/Minimum_grad/Reshape6^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/clip_by_value/Minimum_grad/Reshape
ÿ
?gradients/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity.gradients/clip_by_value/Minimum_grad/Reshape_16^gradients/clip_by_value/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value/Minimum_grad/Reshape_1
J
gradients/add_2_grad/ShapeShapeaction_probs*
T0*
out_type0
E
gradients/add_2_grad/Shape_1Const*
valueB *
dtype0

*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0

gradients/add_2_grad/SumSumgradients/Log_grad/mul*gradients/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0

gradients/add_2_grad/Sum_1Sumgradients/Log_grad/mul,gradients/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
¹
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
¿
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
Ç
gradients/AddNAddN-gradients/mul_3_grad/tuple/control_dependency=gradients/clip_by_value/Minimum_grad/tuple/control_dependency*
N*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
G
gradients/truediv_2_grad/ShapeShapeSum_1*
T0*
out_type0
I
 gradients/truediv_2_grad/Shape_1Shapeadd_3*
T0*
out_type0

.gradients/truediv_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_2_grad/Shape gradients/truediv_2_grad/Shape_1*
T0
K
 gradients/truediv_2_grad/RealDivRealDivgradients/AddNadd_3*
T0

gradients/truediv_2_grad/SumSum gradients/truediv_2_grad/RealDiv.gradients/truediv_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0

 gradients/truediv_2_grad/ReshapeReshapegradients/truediv_2_grad/Sumgradients/truediv_2_grad/Shape*
T0*
Tshape0
3
gradients/truediv_2_grad/NegNegSum_1*
T0
[
"gradients/truediv_2_grad/RealDiv_1RealDivgradients/truediv_2_grad/Negadd_3*
T0
a
"gradients/truediv_2_grad/RealDiv_2RealDiv"gradients/truediv_2_grad/RealDiv_1add_3*
T0
`
gradients/truediv_2_grad/mulMulgradients/AddN"gradients/truediv_2_grad/RealDiv_2*
T0

gradients/truediv_2_grad/Sum_1Sumgradients/truediv_2_grad/mul0gradients/truediv_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0

"gradients/truediv_2_grad/Reshape_1Reshapegradients/truediv_2_grad/Sum_1 gradients/truediv_2_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_2_grad/tuple/group_depsNoOp!^gradients/truediv_2_grad/Reshape#^gradients/truediv_2_grad/Reshape_1
É
1gradients/truediv_2_grad/tuple/control_dependencyIdentity gradients/truediv_2_grad/Reshape*^gradients/truediv_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_2_grad/Reshape
Ï
3gradients/truediv_2_grad/tuple/control_dependency_1Identity"gradients/truediv_2_grad/Reshape_1*^gradients/truediv_2_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_2_grad/Reshape_1
C
gradients/Sum_1_grad/ShapeShapemul_1*
T0*
out_type0
r
gradients/Sum_1_grad/SizeConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/addAddSum_1/reduction_indicesgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/modFloorModgradients/Sum_1_grad/addgradients/Sum_1_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
t
gradients/Sum_1_grad/Shape_1Const*
valueB *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/startConst*
value	B : *
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
y
 gradients/Sum_1_grad/range/deltaConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
½
gradients/Sum_1_grad/rangeRange gradients/Sum_1_grad/range/startgradients/Sum_1_grad/Size gradients/Sum_1_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
x
gradients/Sum_1_grad/Fill/valueConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/FillFillgradients/Sum_1_grad/Shape_1gradients/Sum_1_grad/Fill/value*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
á
"gradients/Sum_1_grad/DynamicStitchDynamicStitchgradients/Sum_1_grad/rangegradients/Sum_1_grad/modgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Fill*
N*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
w
gradients/Sum_1_grad/Maximum/yConst*
value	B :*
dtype0*-
_class#
!loc:@gradients/Sum_1_grad/Shape
£
gradients/Sum_1_grad/MaximumMaximum"gradients/Sum_1_grad/DynamicStitchgradients/Sum_1_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/floordivFloorDivgradients/Sum_1_grad/Shapegradients/Sum_1_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_1_grad/Shape

gradients/Sum_1_grad/ReshapeReshape1gradients/truediv_2_grad/tuple/control_dependency"gradients/Sum_1_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/floordiv*
T0*

Tmultiples0
J
gradients/mul_1_grad/ShapeShapeaction_probs*
T0*
out_type0
V
gradients/mul_1_grad/Shape_1ShapeOneHotEncoding/one_hot*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
[
gradients/mul_1_grad/mulMulgradients/Sum_1_grad/TileOneHotEncoding/one_hot*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/mul*gradients/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
S
gradients/mul_1_grad/mul_1Mulaction_probsgradients/Sum_1_grad/Tile*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
¿
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
ä
gradients/AddN_1AddN+gradients/mul_grad/tuple/control_dependency-gradients/add_2_grad/tuple/control_dependency-gradients/mul_1_grad/tuple/control_dependency*
N*
T0*-
_class#
!loc:@gradients/mul_grad/Reshape
O
gradients/action_probs_grad/mulMulgradients/AddN_1action_probs*
T0
_
1gradients/action_probs_grad/Sum/reduction_indicesConst*
valueB:*
dtype0
 
gradients/action_probs_grad/SumSumgradients/action_probs_grad/mul1gradients/action_probs_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0
^
)gradients/action_probs_grad/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0

#gradients/action_probs_grad/ReshapeReshapegradients/action_probs_grad/Sum)gradients/action_probs_grad/Reshape/shape*
T0*
Tshape0
f
gradients/action_probs_grad/subSubgradients/AddN_1#gradients/action_probs_grad/Reshape*
T0
`
!gradients/action_probs_grad/mul_1Mulgradients/action_probs_grad/subaction_probs*
T0

$gradients/dense_3/MatMul_grad/MatMulMatMul!gradients/action_probs_grad/mul_1dense_2/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_3/MatMul_grad/MatMul_1MatMuldense_2/Elu!gradients/action_probs_grad/mul_1*
transpose_a(*
transpose_b( *
T0

.gradients/dense_3/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_3/MatMul_grad/MatMul'^gradients/dense_3/MatMul_grad/MatMul_1
Û
6gradients/dense_3/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_3/MatMul_grad/MatMul/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_3/MatMul_grad/MatMul
á
8gradients/dense_3/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_3/MatMul_grad/MatMul_1/^gradients/dense_3/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_3/MatMul_grad/MatMul_1
Ó
gradients/AddN_2AddN6gradients/dense_4/MatMul_grad/tuple/control_dependency6gradients/dense_3/MatMul_grad/tuple/control_dependency*
N*
T0*7
_class-
+)loc:@gradients/dense_4/MatMul_grad/MatMul
U
"gradients/dense_2/Elu_grad/EluGradEluGradgradients/AddN_2dense_2/Elu*
T0

$gradients/dense_2/MatMul_grad/MatMulMatMul"gradients/dense_2/Elu_grad/EluGraddense_1/kernel/read*
transpose_a( *
transpose_b(*
T0

&gradients/dense_2/MatMul_grad/MatMul_1MatMul	dense/Elu"gradients/dense_2/Elu_grad/EluGrad*
transpose_a(*
transpose_b( *
T0

.gradients/dense_2/MatMul_grad/tuple/group_depsNoOp%^gradients/dense_2/MatMul_grad/MatMul'^gradients/dense_2/MatMul_grad/MatMul_1
Û
6gradients/dense_2/MatMul_grad/tuple/control_dependencyIdentity$gradients/dense_2/MatMul_grad/MatMul/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense_2/MatMul_grad/MatMul
á
8gradients/dense_2/MatMul_grad/tuple/control_dependency_1Identity&gradients/dense_2/MatMul_grad/MatMul_1/^gradients/dense_2/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dense_2/MatMul_grad/MatMul_1
w
 gradients/dense/Elu_grad/EluGradEluGrad6gradients/dense_2/MatMul_grad/tuple/control_dependency	dense/Elu*
T0

"gradients/dense/MatMul_grad/MatMulMatMul gradients/dense/Elu_grad/EluGraddense/kernel/read*
transpose_a( *
transpose_b(*
T0

$gradients/dense/MatMul_grad/MatMul_1MatMulnormalized_state gradients/dense/Elu_grad/EluGrad*
transpose_a(*
transpose_b( *
T0

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
g
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@dense/kernel
x
beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
S
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/kernel
g
beta2_power/initial_valueConst*
valueB
 *w¾?*
dtype0*
_class
loc:@dense/kernel
x
beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
S
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/kernel
y
#dense/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*
_class
loc:@dense/kernel

dense/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel
{
%dense/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*
_class
loc:@dense/kernel

dense/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *
_class
loc:@dense/kernel
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
}
%dense_1/kernel/Adam/Initializer/zerosConst*
valueB@@*    *
dtype0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
µ
dense_1/kernel/Adam/AssignAssigndense_1/kernel/Adam%dense_1/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
e
dense_1/kernel/Adam/readIdentitydense_1/kernel/Adam*
T0*!
_class
loc:@dense_1/kernel

'dense_1/kernel/Adam_1/Initializer/zerosConst*
valueB@@*    *
dtype0*!
_class
loc:@dense_1/kernel

dense_1/kernel/Adam_1
VariableV2*
shape
:@@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_1/kernel
»
dense_1/kernel/Adam_1/AssignAssigndense_1/kernel/Adam_1'dense_1/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
i
dense_1/kernel/Adam_1/readIdentitydense_1/kernel/Adam_1*
T0*!
_class
loc:@dense_1/kernel
}
%dense_2/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
µ
dense_2/kernel/Adam/AssignAssigndense_2/kernel/Adam%dense_2/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
e
dense_2/kernel/Adam/readIdentitydense_2/kernel/Adam*
T0*!
_class
loc:@dense_2/kernel

'dense_2/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_2/kernel

dense_2/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_2/kernel
»
dense_2/kernel/Adam_1/AssignAssigndense_2/kernel/Adam_1'dense_2/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
i
dense_2/kernel/Adam_1/readIdentitydense_2/kernel/Adam_1*
T0*!
_class
loc:@dense_2/kernel
}
%dense_3/kernel/Adam/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
µ
dense_3/kernel/Adam/AssignAssigndense_3/kernel/Adam%dense_3/kernel/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
e
dense_3/kernel/Adam/readIdentitydense_3/kernel/Adam*
T0*!
_class
loc:@dense_3/kernel

'dense_3/kernel/Adam_1/Initializer/zerosConst*
valueB@*    *
dtype0*!
_class
loc:@dense_3/kernel

dense_3/kernel/Adam_1
VariableV2*
shape
:@*
dtype0*
	container *
shared_name *!
_class
loc:@dense_3/kernel
»
dense_3/kernel/Adam_1/AssignAssigndense_3/kernel/Adam_1'dense_3/kernel/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
i
dense_3/kernel/Adam_1/readIdentitydense_3/kernel/Adam_1*
T0*!
_class
loc:@dense_3/kernel
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
Ë
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon6gradients/dense/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@dense/kernel
×
$Adam/update_dense_1/kernel/ApplyAdam	ApplyAdamdense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_1/kernel
×
$Adam/update_dense_2/kernel/ApplyAdam	ApplyAdamdense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_3/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_2/kernel
×
$Adam/update_dense_3/kernel/ApplyAdam	ApplyAdamdense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay_2
Adam/beta1
Adam/beta2Adam/epsilon8gradients/dense_4/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@dense_3/kernel
ñ
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@dense/kernel
ó

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam*
T0*
_class
loc:@dense/kernel

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@dense/kernel
Ä
AdamNoOp#^Adam/update_dense/kernel/ApplyAdam%^Adam/update_dense_1/kernel/ApplyAdam%^Adam/update_dense_2/kernel/ApplyAdam%^Adam/update_dense_3/kernel/ApplyAdam^Adam/Assign^Adam/Assign_1
Ú
initNoOp^global_step/Assign^last_reward/Assign^running_mean/Assign^running_variance/Assign^dense/kernel/Assign^dense_1/kernel/Assign^dense_2/kernel/Assign^dense_3/kernel/Assign^beta1_power/Assign^beta2_power/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense_1/kernel/Adam/Assign^dense_1/kernel/Adam_1/Assign^dense_2/kernel/Adam/Assign^dense_2/kernel/Adam_1/Assign^dense_3/kernel/Adam/Assign^dense_3/kernel/Adam_1/Assign
8

save/ConstConst*
valueB Bmodel*
dtype0

save/SaveV2/tensor_namesConst*Ó
valueÉBÆBbeta1_powerBbeta2_powerBdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bdense_1/kernelBdense_1/kernel/AdamBdense_1/kernel/Adam_1Bdense_2/kernelBdense_2/kernel/AdamBdense_2/kernel/Adam_1Bdense_3/kernelBdense_3/kernel/AdamBdense_3/kernel/Adam_1Bglobal_stepBlast_rewardBrunning_meanBrunning_variance*
dtype0
k
save/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0
¹
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerdense/kerneldense/kernel/Adamdense/kernel/Adam_1dense_1/kerneldense_1/kernel/Adamdense_1/kernel/Adam_1dense_2/kerneldense_2/kernel/Adamdense_2/kernel/Adam_1dense_3/kerneldense_3/kernel/Adamdense_3/kernel/Adam_1global_steplast_rewardrunning_meanrunning_variance* 
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
S
save/RestoreV2/tensor_namesConst* 
valueBBbeta1_power*
dtype0
L
save/RestoreV2/shape_and_slicesConst*
valueB
B *
dtype0
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
U
save/RestoreV2_1/tensor_namesConst* 
valueBBbeta2_power*
dtype0
N
!save/RestoreV2_1/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2

save/Assign_1Assignbeta2_powersave/RestoreV2_1*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
V
save/RestoreV2_2/tensor_namesConst*!
valueBBdense/kernel*
dtype0
N
!save/RestoreV2_2/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2

save/Assign_2Assigndense/kernelsave/RestoreV2_2*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
[
save/RestoreV2_3/tensor_namesConst*&
valueBBdense/kernel/Adam*
dtype0
N
!save/RestoreV2_3/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2

save/Assign_3Assigndense/kernel/Adamsave/RestoreV2_3*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
]
save/RestoreV2_4/tensor_namesConst*(
valueBBdense/kernel/Adam_1*
dtype0
N
!save/RestoreV2_4/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2

save/Assign_4Assigndense/kernel/Adam_1save/RestoreV2_4*
T0*
validate_shape(*
use_locking(*
_class
loc:@dense/kernel
X
save/RestoreV2_5/tensor_namesConst*#
valueBBdense_1/kernel*
dtype0
N
!save/RestoreV2_5/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2

save/Assign_5Assigndense_1/kernelsave/RestoreV2_5*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
]
save/RestoreV2_6/tensor_namesConst*(
valueBBdense_1/kernel/Adam*
dtype0
N
!save/RestoreV2_6/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2

save/Assign_6Assigndense_1/kernel/Adamsave/RestoreV2_6*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
_
save/RestoreV2_7/tensor_namesConst**
value!BBdense_1/kernel/Adam_1*
dtype0
N
!save/RestoreV2_7/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2

save/Assign_7Assigndense_1/kernel/Adam_1save/RestoreV2_7*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_1/kernel
X
save/RestoreV2_8/tensor_namesConst*#
valueBBdense_2/kernel*
dtype0
N
!save/RestoreV2_8/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2

save/Assign_8Assigndense_2/kernelsave/RestoreV2_8*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
]
save/RestoreV2_9/tensor_namesConst*(
valueBBdense_2/kernel/Adam*
dtype0
N
!save/RestoreV2_9/shape_and_slicesConst*
valueB
B *
dtype0
|
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2

save/Assign_9Assigndense_2/kernel/Adamsave/RestoreV2_9*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
`
save/RestoreV2_10/tensor_namesConst**
value!BBdense_2/kernel/Adam_1*
dtype0
O
"save/RestoreV2_10/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2

save/Assign_10Assigndense_2/kernel/Adam_1save/RestoreV2_10*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_2/kernel
Y
save/RestoreV2_11/tensor_namesConst*#
valueBBdense_3/kernel*
dtype0
O
"save/RestoreV2_11/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2

save/Assign_11Assigndense_3/kernelsave/RestoreV2_11*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
^
save/RestoreV2_12/tensor_namesConst*(
valueBBdense_3/kernel/Adam*
dtype0
O
"save/RestoreV2_12/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2

save/Assign_12Assigndense_3/kernel/Adamsave/RestoreV2_12*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
`
save/RestoreV2_13/tensor_namesConst**
value!BBdense_3/kernel/Adam_1*
dtype0
O
"save/RestoreV2_13/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2

save/Assign_13Assigndense_3/kernel/Adam_1save/RestoreV2_13*
T0*
validate_shape(*
use_locking(*!
_class
loc:@dense_3/kernel
V
save/RestoreV2_14/tensor_namesConst* 
valueBBglobal_step*
dtype0
O
"save/RestoreV2_14/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2

save/Assign_14Assignglobal_stepsave/RestoreV2_14*
T0*
validate_shape(*
use_locking(*
_class
loc:@global_step
V
save/RestoreV2_15/tensor_namesConst* 
valueBBlast_reward*
dtype0
O
"save/RestoreV2_15/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2

save/Assign_15Assignlast_rewardsave/RestoreV2_15*
T0*
validate_shape(*
use_locking(*
_class
loc:@last_reward
W
save/RestoreV2_16/tensor_namesConst*!
valueBBrunning_mean*
dtype0
O
"save/RestoreV2_16/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2

save/Assign_16Assignrunning_meansave/RestoreV2_16*
T0*
validate_shape(*
use_locking(*
_class
loc:@running_mean
[
save/RestoreV2_17/tensor_namesConst*%
valueBBrunning_variance*
dtype0
O
"save/RestoreV2_17/shape_and_slicesConst*
valueB
B *
dtype0

save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2

save/Assign_17Assignrunning_variancesave/RestoreV2_17*
T0*
validate_shape(*
use_locking(*#
_class
loc:@running_variance
¾
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17
¿
Const_3Const*
valueBB	max_stepsB50000000000.0Bprojet_nameBSteeringBenv_nameBv3.1c_randomstartBcurriculum_fileBNoneBgammaB0.99BlambdB0.95Btime_horizonB2048BbetaB0.001B	num_epochB5BepsilonB0.2Bbuffer_sizeB2048Bleaning_rateB5e-05Bhidden_unitsB64B
batch_sizeB64*
dtype0
K
Hyperparameters/tagConst* 
valueB BHyperparameters*
dtype0
\
+Hyperparameters/serialized_summary_metadataConst*
valueB B

text*
dtype0
v
HyperparametersTensorSummaryV2Hyperparameters/tagConst_3+Hyperparameters/serialized_summary_metadata*
T0"