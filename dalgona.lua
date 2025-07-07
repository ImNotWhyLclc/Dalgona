-- Decompiler will be improved VERY SOON!
-- Decompiled with Konstant V2.1, a fast Luau decompiler made in Luau by plusgiant5 (https://discord.gg/brNTY8nX8t)
-- Decompiled on 2025-07-06 18:26:13
-- Luau version 6, Types version 3
-- Time taken: 0.124587 seconds

local ReplicatedStorage_upvr = game:GetService("ReplicatedStorage")
local Players_upvr = game:GetService("Players")
local RunService_upvr = game:GetService("RunService")
local LocalPlayer_upvr_3 = Players_upvr.LocalPlayer
local Dalgona_3_upvr = ReplicatedStorage_upvr.Effects.Games.Dalgona
local PlayerGui_upvr = LocalPlayer_upvr_3.PlayerGui
local tbl_22_upvr = {
	Pick = CFrame.new(-0.00668334961, -2.36825562, -2.05554199, -0.00869561918, 0.115533076, -0.993265629, -0.0745474771, 0.990464151, 0.115859859, 0.997179568, 0.0750529096, 0);
	Umbrella = CFrame.new(-0.0252380371, -2.93081665, -2.06484985, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	UmbrellaOutline = CFrame.new(-0.0163269043, -2.92922974, -1.69216919, 0.693418622, 0, 0.720534921, 0, 1, 0, -0.720534921, 0, 0.693418622);
	Star = CFrame.new(-0.0252380371, -2.93081665, -2.06484985, 0.805959225, 0, -0.591970921, 0, 1, 0, 0.591970921, 0, 0.805959225);
	StarOutline = CFrame.new(-0.254730225, -2.91059113, -1.96237183, 0.168880373, 0, 0.985636532, 0, 1, 0, -0.985636592, 0, 0.168880373);
	Circle = CFrame.new(-0.0252380371, -2.93081665, -2.06484985, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	CircleOutline = CFrame.new(-0.0307922363, -2.90307903, -1.68043518, 1, 0, 0, 0, 1, 0, 0, 0, 1) + Vector3.new(0, -0.0215, 0);
	Triangle = CFrame.new(-0.0252380371, -2.93081665, -2.06484985, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	TriangleOutline = CFrame.new(0.0382995605, -2.90168762, -1.79675293, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	SackBoy = CFrame.new(-0.0252380371, -2.93081665, -2.06484985, -1, 0, 0, 0, 1, 0, 0, 0, -1);
	SackBoyOutline = CFrame.new(-0.307861328, -2.95241547, -2.26300049, 0.159608155, 1.45519152e-11, -0.987180352, 0.000286216993, 1.00000012, 0.0000436031551, 0.987181306, -0.000289805466, 0.159607947);
	MonaLisa = CFrame.new(-0.0252380371, -2.93081665, -2.06484985, -1, 9.11913977e-16, -4.54747351e-13, -9.11913977e-16, 1, -7.21644966e-16, -4.54747351e-13, 7.21644966e-16, -1);
	MonaLisaOutline = CFrame.new(-0.0782165527, -2.89529419, -2.52568054, -0.435961127, -0.0000353674841, 0.899965405, -0.000176951246, 1, -0.000046419962, -0.899965465, -0.000179487324, -0.435961097);
}
local tbl_20_upvr = {
	UmbrellaShattered1 = CFrame.new(-0.134735107, -0.000221252441, 0.165374756, 0.981510282, -0.0000090712274, -0.19140996, 0.0000250203266, 1.00000024, 0.0000808602344, 0.191409916, -0.0000834540988, 0.981510222);
	UmbrellaShattered2 = CFrame.new(-0.220214844, -0.000205993652, -0.037612915, 0.981537044, -0.00000907131471, -0.191272601, 0.0000249965378, 1.00000024, 0.0000808034092, 0.191272557, -0.0000834540988, 0.981536984);
	UmbrellaShattered3 = CFrame.new(0.118469238, -0.00032043457, 0.240325928, 0.99910152, -0.00000338812401, -0.0423841141, 0.00000416277453, 1.00000012, 0.0000181896321, 0.0423841029, -0.0000183497104, 0.99910146);
	UmbrellaShattered4 = CFrame.new(-0.0000610351562, -0.000297546387, -0.0416107178, 0.970347047, 0.0000343134416, 0.241716728, -0.00000874951911, 1.00000012, -0.000106833424, -0.241716743, 0.000101550599, 0.970346928);
	UmbrellaShattered5 = CFrame.new(0.157745361, -0.000366210938, -0.00202941895, 0.988488495, -0.00000851505683, -0.151297465, 0.0000184393139, 1.00000024, 0.0000641913284, 0.15129745, -0.0000662422026, 0.988488317);
	UmbrellaShattered6 = CFrame.new(-0.0594787598, 0.00299835205, 0.0817718506, 0.947389662, 0, 0.320082486, 0, 1, 0, -0.320082486, 0, 0.947389662);
	UmbrellaShattered7 = CFrame.new(-0.153259277, 0.0068359375, -0.192260742, 0.565928519, 0, -0.824454427, 0, 1, 0, 0.824454427, 0, 0.565928519);
	UmbrellaShattered8 = CFrame.new(0.119537354, -0.00412750244, 0.094543457, 0.784292817, 0, -0.620390832, 0, 1, 0, 0.620390832, 0, 0.784292817);
	UmbrellaShattered9 = CFrame.new(0.0526123047, 0, -0.00756835938, 0.930060446, 0, 0.367406577, 0, 1, 0, -0.367406577, 0, 0.930060446);
	UmbrellaShattered10 = CFrame.new(-0.0330810547, 0.00339508057, -0.145904541, -0.18164593, 0, 0.983364105, 0, 1, 0, -0.983364105, 0, -0.18164593);
	UmbrellaShattered11 = CFrame.new(-0.0114746094, 0.00910186768, 0.0853881836, 0.985560536, 0, -0.169323355, 0, 1, 0, 0.169323355, 0, 0.985560536);
	StarShattered1 = CFrame.new(-0.134460449, -0.000221252441, 0.165710449, 0.98150444, -0.0000090711801, -0.191408843, 0.0000250203266, 1.00000024, 0.0000808602344, 0.191408843, -0.0000834536186, 0.98150444);
	StarShattered2 = CFrame.new(-0.219940186, -0.000205993652, -0.0372924805, 0.981531262, -0.00000907126741, -0.191271454, 0.0000249965378, 1.00000024, 0.0000808034092, 0.191271424, -0.0000834536113, 0.981531262);
	StarShattered3 = CFrame.new(0.0973052979, -0.00032043457, -0.0979919434, 0.99909842, 5.55329279e-07, -0.0423839986, 0, 1, 0.0000131023216, 0.0423839986, -0.0000130905091, 0.99909842);
	StarShattered4 = CFrame.new(0.0810394287, -0.000297546387, -0.0564575195, 0.970344067, 0.0000258232649, 0.241716027, 0, 1, -0.000106833118, -0.241716027, 0.000103664868, 0.970344067);
	StarShattered5 = CFrame.new(0.157989502, -0.000366210938, -0.0016784668, 0.988482714, -0.00000851500772, -0.151296616, 0.0000184393139, 1.00000024, 0.0000641913284, 0.151296526, -0.000066241817, 0.988482475);
	StarShattered6 = CFrame.new(-0.0591888428, 0.00299835205, 0.0821228027, 0.947384119, 0, 0.320080608, 0, 1, 0, -0.320080608, 0, 0.947384119);
	StarShattered7 = CFrame.new(-0.152984619, 0.0068359375, -0.191955566, 0.565925241, 0, -0.824449599, 0, 1, 0, 0.824449599, 0, 0.565925241);
	StarShattered8 = CFrame.new(-0.179534912, -0.00412750244, -0.0574035645, 0.784290493, 0, -0.620388985, 0, 1, 0, 0.620388985, 0, 0.784290493);
	StarShattered9 = CFrame.new(0.0528564453, 0, -0.00723266602, 0.930055022, 0, 0.367404401, 0, 1, 0, -0.367404401, 0, 0.930055022);
	StarShattered10 = CFrame.new(-0.112045288, 0.00339508057, -0.0873413086, -0.181644827, 0, 0.983358383, 0, 1, 0, -0.983358383, 0, -0.181644827);
	StarShattered11 = CFrame.new(-0.0111999512, 0.00910186768, 0.085723877, 0.985554814, 0, -0.169322342, 0, 1, 0, 0.169322342, 0, 0.985554814);
	CircleShattered1 = CFrame.new(-0.134918213, -0.000511169434, 0.165679932, 0.981510282, -0.0000090712274, -0.19140996, 0.0000250203266, 1.00000024, 0.0000808602344, 0.191409916, -0.0000834540988, 0.981510222);
	CircleShattered2 = CFrame.new(-0.220397949, -0.000495910645, -0.0373077393, 0.981537044, -0.00000907131471, -0.191272601, 0.0000249965378, 1.00000024, 0.0000808034092, 0.191272557, -0.0000834540988, 0.981536984);
	CircleShattered3 = CFrame.new(-0.0651855469, -0.000610351562, -0.0198059082, 0.642763138, 0.0000135445371, -0.766065121, 0, 1, 0.0000181896194, 0.766065061, -0.0000123797117, 0.642763138);
	CircleShattered4 = CFrame.new(-0.000244140625, -0.000587463379, -0.041305542, 0.970347047, 0.0000343134416, 0.241716728, -0.00000874951911, 1.00000012, -0.000106833424, -0.241716743, 0.000101550599, 0.970346928);
	CircleShattered5 = CFrame.new(0.157562256, -0.00065612793, -0.00172424316, 0.988488495, -0.00000851505683, -0.151297465, 0.0000184393139, 1.00000024, 0.0000641913284, 0.15129745, -0.0000662422026, 0.988488317);
	CircleShattered6 = CFrame.new(0.0428161621, 0.00270843506, 0.140365601, 0.947389662, 0, 0.320082486, 0, 1, 0, -0.320082486, 0, 0.947389662);
	CircleShattered7 = CFrame.new(-0.207122803, 0.00654602051, -0.191955566, 0.565928519, 0, -0.824454427, 0, 1, 0, 0.824454427, 0, 0.565928519);
	CircleShattered8 = CFrame.new(0.0387573242, -0.00441741943, 0.113708496, 0.871429086, 0, -0.49052155, 0, 1, 0, 0.49052155, 0, 0.871429086);
	CircleShattered9 = CFrame.new(0.0969543457, -0.000289916992, -0.0542144775, 0.930060446, 0, 0.367406577, 0, 1, 0, -0.367406577, 0, 0.930060446);
	CircleShattered10 = CFrame.new(0.10546875, 0.00310516357, -0.0414123535, -0.18164593, 0, 0.983364105, 0, 1, 0, -0.983364105, 0, -0.181645915);
	CircleShattered11 = CFrame.new(-0.141357422, 0.00881195068, 0.275238037, 0.709959865, 0, 0.704242229, 0, 1, 0, -0.704242229, 0, 0.709959865);
	CircleShattered12 = CFrame.new(-0.0621032715, -0.000289916992, 0.0266876221, 0.999486864, 0, -0.032030981, 0, 1, 0, 0.032030981, 0, 0.999486864);
	TriangleShattered1 = CFrame.new(-0.134460449, -0.000633239746, 0.165664673, 0.981510282, -0.0000090712274, -0.19140996, 0.0000250203266, 1.00000024, 0.0000808602344, 0.191409916, -0.0000834540988, 0.981510222);
	TriangleShattered2 = CFrame.new(0.0108032227, -0.000617980957, 0.303543091, 0.990409791, -0.0000134362053, -0.138161123, 0.0000249965342, 1, 0.000081937731, 0.138161108, -0.0000846054681, 0.990409851);
	TriangleShattered3 = CFrame.new(0.234588623, -0.000732421875, 0.240615845, 0.99910152, 1.60418261e-12, -0.0423841141, 0, 1, 0.0000181896321, 0.0423841029, -0.0000183497104, 0.99910146);
	TriangleShattered4 = CFrame.new(0.241210938, -0.000709533691, 0.0857543945, 0.973085344, -0.0000246192812, -0.230445474, 0, 1, -0.000106833446, 0.230445474, 0.000103958046, 0.973085344);
	TriangleShattered5 = CFrame.new(-0.0744934082, -0.000778198242, -0.00173950195, 0.986772299, -0.00002050484, 0.162113607, 0.0000184393139, 1, 0.0000641913284, -0.162113681, -0.0000629887363, 0.98677212);
	TriangleShattered6 = CFrame.new(-0.171478271, 0.00258636475, 0.024017334, 0.947389662, 0, 0.320082486, 0, 1, 0, -0.320082486, 0, 0.947389662);
	TriangleShattered7 = CFrame.new(-0.0579528809, 0.0064239502, -0.385986328, 0.686382055, 0, -0.727241278, 0, 1, 0, 0.727241278, 0, 0.686382055);
	TriangleShattered8 = CFrame.new(0.119812012, -0.00453948975, 0.176208496, 0.784292817, 0, -0.620390832, 0, 1, 0, 0.620390832, 0, 0.784292817);
	SackBoyShattered1 = CFrame.new(-0.135009766, -0.000473022461, 0.165756226, 0.981510282, -0.00000907123467, -0.191409871, 0.0000250203266, 1.00000024, 0.0000808602344, 0.191409826, -0.0000834540988, 0.981510222);
	SackBoyShattered2 = CFrame.new(-0.220489502, -0.000457763672, -0.0372314453, 0.981537044, -0.00000907132198, -0.191272512, 0.0000249965378, 1.00000024, 0.0000808034092, 0.191272467, -0.0000834540988, 0.981536984);
	SackBoyShattered3 = CFrame.new(-0.079284668, -0.00057220459, 0.176391602, 0.9991014, 0, -0.0423840173, 0, 1, 0.0000181896194, 0.0423840135, -0.0000183497068, 0.99910146);
	SackBoyShattered4 = CFrame.new(0.0814819336, -0.000549316406, 0.0908203125, 0.970346928, 0.0000343134998, 0.241716802, 0, 1, -0.000106833431, -0.241716802, 0.00010155057, 0.970346928);
	SackBoyShattered5 = CFrame.new(0.157470703, -0.000617980957, -0.00164794922, 0.974696636, 0, -0.223532379, 0.0000184393139, 1, 0.0000641913284, 0.223532379, -0.0000666888518, 0.974696457);
	SackBoyShattered6 = CFrame.new(-0.059753418, 0.00274658203, 0.0821533203, 0.947389662, 0, 0.320082575, 0, 1, 0, -0.320082575, 0, 0.947389662);
	SackBoyShattered7 = CFrame.new(0.065826416, 0.00658416748, -0.0103607178, 0.99856776, 0, -0.0535030663, 0, 1, 0, 0.0535030663, 0, 0.99856776);
	SackBoyShattered8 = CFrame.new(-0.00311279297, -0.00437927246, 0.0102996826, 0.996716499, 0, -0.0809700489, 0, 1, 0, 0.0809700489, 0, 0.996716499);
	SackBoyShattered9 = CFrame.new(0.0523376465, -0.00025177002, -0.00718688965, 0.930060387, 0, 0.367406666, 0, 1, 0, -0.367406666, 0, 0.930060387);
	SackBoyShattered10 = CFrame.new(-0.177337646, 0.00314331055, -0.145523071, -0.322440624, 0, 0.946589768, 0, 1, 0, -0.946589768, 0, -0.322440624);
	SackBoyShattered11 = CFrame.new(-0.482055664, 0.00885009766, 0.337341309, 0.933944106, 0, 0.357418925, 0, 1, 0, -0.357418925, 0, 0.933944106);
	SackBoyShattered12 = CFrame.new(-0.000274658203, -0.00025177002, 0.0299835205, 1, 0, 0, 0, 1, 0, 0, 0, 1);
	SackBoyShattered13 = CFrame.new(-0.0172729492, -0.00025177002, 0.135726929, 0.880441487, 0, 0.47415486, 0, 1, 0, -0.47415486, 0, 0.880441487);
	MonaLisaShattered1 = CFrame.new(-0.114898682, -0.00065612793, 0.0543060303, 0.981510282, 1.45962062e-11, -0.191409901, 0.0000250203266, 1, 0.0000801747083, 0.191409916, -0.0000834814273, 0.981510222);
	MonaLisaShattered2 = CFrame.new(-0.262084961, -0.000640869141, -0.0375518799, 0.998444796, -0.0000203909894, -0.0557500795, 0.0000249965378, 1, 0.0000819132765, 0.0557500944, -0.0000831794459, 0.998444736);
	MonaLisaShattered3 = CFrame.new(-0.0692749023, -0.000755310059, -0.0909576416, 0.992767096, 3.19858896e-12, -0.120056093, -7.93564755e-15, 1, 0.0000181896194, 0.120056078, -0.0000182939875, 0.992767155);
	MonaLisaShattered4 = CFrame.new(0.142974854, -0.000732421875, 0.0168151855, 0.970346808, 0.0000258234249, 0.241716683, -5.6835123e-15, 1, -0.000106833424, -0.241716683, 0.000103665472, 0.970346808);
	MonaLisaShattered5 = CFrame.new(-0.235870361, -0.00598144531, -0.00198364258, 0.64512825, 0.0000400489043, -0.764074445, 0.0000184393139, 1, 0.0000641913284, 0.764074564, -0.0000533243692, 0.645128071);
	MonaLisaShattered6 = CFrame.new(-0.129547119, 0.00256347656, 0.137786865, 0.974001408, -1.71163657e-22, 0.226541907, -5.79778043e-15, 1, -7.2757606e-15, -0.226541907, -1.49636015e-29, 0.974001408);
	MonaLisaShattered7 = CFrame.new(0.0132751465, 0.00640106201, 0.108261108, 0.99891746, -1.71163657e-22, 0.0465189442, -7.01885212e-15, 1, -6.10628127e-15, -0.0465189442, -1.49636015e-29, 0.99891746);
	MonaLisaShattered8 = CFrame.new(0.0399475098, -0.00456237793, 0.00997924805, 0.957817495, -1.71163657e-22, -0.287377208, -8.64665039e-15, 1, -3.43312851e-15, 0.287377208, -1.49636015e-29, 0.957817495);
	MonaLisaShattered9 = CFrame.new(0.0379333496, -0.000434875488, -0.00750732422, 0.908136725, -1.71163657e-22, 0.418673724, -4.20806815e-15, 1, -8.29717392e-15, -0.418673724, -1.49636015e-29, 0.908136725);
	MonaLisaShattered10 = CFrame.new(-0.177520752, 0.00296020508, -0.218551636, -0.274944127, -1.71163657e-22, 0.961460292, 7.55646817e-15, 1, -5.42685539e-15, -0.961460292, -1.49636015e-29, -0.274944127);
	MonaLisaShattered11 = CFrame.new(-0.496368408, 0.00866699219, 0.337020874, 0.210144281, -1.71163657e-22, 0.977670312, 4.11118029e-15, 1, -8.34560472e-15, -0.977670312, -1.49636015e-29, 0.210144281);
	MonaLisaShattered12 = CFrame.new(0.107116699, -0.000434875488, 0.0296630859, 0.775082707, -1.71163657e-22, -0.631859779, -9.30229794e-15, 1, 1.34936584e-16, 0.631859779, -1.49636015e-29, 0.775082707);
	MonaLisaShattered13 = CFrame.new(-0.167297363, -0.000434875488, 0.106033325, 0.880441546, -1.71163657e-22, 0.47415477, -3.68572242e-15, 1, -8.54203759e-15, -0.47415477, -1.49636015e-29, 0.880441546);
	MonaLisaShattered14 = CFrame.new(-0.121948242, -0.000183105469, -0.00032043457, 0.924306273, -1.71163657e-22, -0.381651491, -8.94643737e-15, 1, -2.55190338e-15, 0.381651491, -1.49636015e-29, 0.924306273);
	MonaLisaShattered15 = CFrame.new(-0.0557250977, -0.000183105469, -0.0223388672, 0.988736629, -1.71163657e-22, 0.149666458, -6.34909216e-15, 1, -6.79999956e-15, -0.149666458, -1.49636015e-29, 0.988736629);
	MonaLisaShattered16 = CFrame.new(-0.000183105469, -0.000183105469, -0.00772094727, 1, -1.71163657e-22, -1.74843734e-07, -7.29531182e-15, 1, -5.77315973e-15, 1.74847372e-07, -1.49636015e-29, 1);
	MonaLisaShattered17 = CFrame.new(-0.000183105469, -0.000183105469, -0.0426483154, 0.987430334, -1.71163657e-22, -0.158055037, -8.11608844e-15, 1, -4.54753355e-15, 0.158055037, -1.49636015e-29, 0.987430334);
	MonaLisaShattered18 = CFrame.new(-0.000183105469, -0.000183105469, -0.0772399902, 0.953667879, -1.71163657e-22, -0.300861388, -8.694224e-15, 1, -3.31080065e-15, 0.300861388, -1.49636015e-29, 0.953667879);
	MonaLisaShattered19 = CFrame.new(0.0631713867, -0.0274429321, -0.00032043457, 0.932961583, -1.71163657e-22, -0.359975874, -8.88444388e-15, 1, -2.7600018e-15, 0.359975874, -1.49636015e-29, 0.932961583);
	MonaLisaShattered20 = CFrame.new(0.0674133301, -0.000183105469, -0.00032043457, 0.994413257, -1.71163657e-22, 0.105556965, -6.64515728e-15, 1, -6.51097879e-15, -0.105556965, -1.49636015e-29, 0.994413257);
	MonaLisaShattered21 = CFrame.new(0.0986328125, -0.000183105469, -0.00032043457, 0.948050678, -1.71163657e-22, -0.318119586, -8.75287933e-15, 1, -3.15246753e-15, 0.318119586, -1.49636015e-29, 0.948050678);
	MonaLisaShattered22 = CFrame.new(-0.000183105469, -0.000183105469, -0.046585083, 0.87791115, -1.71163657e-22, 0.478823572, -3.64030874e-15, 1, -8.56148885e-15, -0.478823572, -1.49636015e-29, 0.87791115);
}
local function var9_upvr(arg1, arg2, arg3) -- Line 130
	--[[ Upvalues[2]:
		[1]: Dalgona_3_upvr (readonly)
		[2]: PlayerGui_upvr (readonly)
	]]
	local clone_4 = Dalgona_3_upvr.ViewportFrame:Clone()
	clone_4.Parent = PlayerGui_upvr.ImpactFrames
	local PickModel = clone_4.PickModel
	if arg3 then
		clone_4.Size = UDim2.new(0, 75, 0, 133)
	end
	local Camera = Instance.new("Camera")
	Camera.CFrame = CFrame.new(0, 0, 26, 1, 0, 0, 0, 1, 0, 0, 0, 1)
	Camera.Parent = clone_4
	Camera.FieldOfView = 70
	Camera.CameraType = Enum.CameraType.Scriptable
	clone_4.CurrentCamera = Camera
	table.insert(arg2, clone_4)
	table.insert(arg2, PickModel)
	table.insert(arg2, Camera)
	return PickModel, clone_4, Camera
end
local UserInputService_upvr = game:GetService("UserInputService")
local GuiService_upvr = game:GetService("GuiService")
local TweenService_upvr = game:GetService("TweenService")
local DebrisBD_upvr = LocalPlayer_upvr_3:WaitForChild("DebrisBD")
local random_state_upvr = Random.new()
local var18_upvr = RunService_upvr:IsStudio() and false
function Dalgona(arg1, arg2) -- Line 154
	--[[ Upvalues[15]:
		[1]: LocalPlayer_upvr_3 (readonly)
		[2]: ReplicatedStorage_upvr (readonly)
		[3]: Players_upvr (readonly)
		[4]: UserInputService_upvr (readonly)
		[5]: GuiService_upvr (readonly)
		[6]: Dalgona_3_upvr (readonly)
		[7]: tbl_22_upvr (readonly)
		[8]: TweenService_upvr (readonly)
		[9]: PlayerGui_upvr (readonly)
		[10]: DebrisBD_upvr (readonly)
		[11]: var9_upvr (readonly)
		[12]: random_state_upvr (readonly)
		[13]: tbl_20_upvr (readonly)
		[14]: RunService_upvr (readonly)
		[15]: var18_upvr (readonly)
	]]
	-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
	print("SetupDalgonaClient")
	local var427
	if arg1.Init then
		local CurrentCamera_upvr = workspace.CurrentCamera
		local SharedFunctions_upvr_2 = require(ReplicatedStorage_upvr.Modules.SharedFunctions)
		local Effects_upvr_2 = require(ReplicatedStorage_upvr.Modules.Effects)
		local SkipIfStudio = arg1.SkipIfStudio
		local LocalPlayer_upvr_2 = Players_upvr.LocalPlayer
		local Character_upvr_2 = LocalPlayer_upvr_2.Character
		local HumanoidRootPart_upvr_2 = Character_upvr_2:FindFirstChild("HumanoidRootPart")
		local Shape_upvr_2 = arg1.Shape
		local tbl_64_upvr = {}
		local tbl_56_upvr = {}
		for _, v in pairs(arg1.CurrentPart:GetDescendants()) do
			if v:IsA("BasePart") then
				v.Transparency = 1
			end
		end
		if not GuiService_upvr:IsTenFootInterface() then
			local controllerpressed_upvr = shared.controllerpressed
		end
		local clone_2_upvr = Dalgona_3_upvr:FindFirstChild(Shape_upvr_2):Clone()
		clone_2_upvr.Parent = workspace.Effects
		local clone_14_upvr = Dalgona_3_upvr:FindFirstChild(Shape_upvr_2.."Outline"):Clone()
		clone_14_upvr.Parent = workspace.Effects
		local clone_8_upvr = Dalgona_3_upvr:FindFirstChild("Pick"):Clone()
		clone_8_upvr.Parent = workspace.Effects
		local clone_18_upvr = Dalgona_3_upvr:FindFirstChild("RedDot"):Clone()
		clone_18_upvr.Parent = workspace.Effects
		clone_18_upvr.Position = Vector3.new(0, -100, 0)
		table.insert(tbl_56_upvr, clone_18_upvr)
		table.insert(tbl_56_upvr, clone_2_upvr)
		table.insert(tbl_56_upvr, clone_14_upvr)
		table.insert(tbl_56_upvr, clone_8_upvr)
		var427 = tbl_22_upvr[clone_2_upvr.Name]
		clone_2_upvr:PivotTo(HumanoidRootPart_upvr_2.CFrame * var427)
		var427 = tbl_22_upvr[clone_14_upvr.Name]
		clone_14_upvr:PivotTo(HumanoidRootPart_upvr_2.CFrame * var427)
		var427 = clone_8_upvr.Name
		clone_8_upvr.CFrame = HumanoidRootPart_upvr_2.CFrame * tbl_22_upvr[var427]
		var427 = clone_8_upvr.Position
		clone_8_upvr.Position = Vector3.new(clone_8_upvr.Position.X, 95.85, var427.Z)
		CurrentCamera_upvr.CameraType = Enum.CameraType.Scriptable
		if SkipIfStudio then
			var427 = 0
		else
			var427 = 2
		end
		;({}).FieldOfView = 75
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		;({}).CFrame = HumanoidRootPart_upvr_2.CFrame * CFrame.new(-0.0252380371, -1.83222198, -1.96484983, 1, 0, 0, 0, 0.0871556923, 0.99619472, 0, -0.99619472, 0.0871556923)
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(var427, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {}):Play()
		TweenService_upvr:Create(PlayerGui_upvr.Hotbar.Backpack, TweenInfo.new(1.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
			Position = UDim2.new(0, 0, 1.25, 0);
		}):Play()
		if SkipIfStudio then
		else
		end
		task.wait(1.5)
		TweenService_upvr:Create(PlayerGui_upvr.Hotbar.Backpack, TweenInfo.new(1.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
			Position = UDim2.new(0, 0, 1.25, 0);
		}):Play()
		local clone_15_upvr = ReplicatedStorage_upvr.UI.ProgressBar:Clone()
		clone_15_upvr.Position += UDim2.new(0, 0, 1, 0)
		clone_15_upvr.Parent = PlayerGui_upvr.ImpactFrames
		local tbl_60 = {}
		-- KONSTANTERROR: Expression was reused, decompilation is incorrect
		tbl_60.Position = clone_15_upvr.Position
		TweenService_upvr:Create(clone_15_upvr, TweenInfo.new(1.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), tbl_60):Play()
		local clone_13_upvr = ReplicatedStorage_upvr.Effects.Particles:FindFirstChild("SmokeParticleDalgona"):Clone()
		clone_13_upvr.Parent = workspace.Terrain
		table.insert(tbl_56_upvr, clone_13_upvr)
		SharedFunctions_upvr_2.Invisible(Character_upvr_2, 1, true)
		local var451_upvw = false
		local var452_upvw = tick() - 5
		local var453_upvw
		local var454_upvw = 0
		local tick_result1_upvw_2 = tick()
		local tbl_24_upvr = {}
		local var458_upvw
		local function var457_upvr() -- Line 254
			--[[ Upvalues[11]:
				[1]: tbl_64_upvr (readonly)
				[2]: var458_upvw (read and write)
				[3]: tbl_24_upvr (readonly)
				[4]: SharedFunctions_upvr_2 (readonly)
				[5]: tbl_56_upvr (readonly)
				[6]: UserInputService_upvr (copied, readonly)
				[7]: TweenService_upvr (copied, readonly)
				[8]: PlayerGui_upvr (copied, readonly)
				[9]: clone_15_upvr (readonly)
				[10]: DebrisBD_upvr (copied, readonly)
				[11]: CurrentCamera_upvr (readonly)
			]]
			for i_2, v_2 in pairs(tbl_64_upvr) do
				if v_2 then
					v_2:Disconnect()
				end
			end
			if var458_upvw then
				var458_upvw = nil
				i_2 = true
				game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, i_2)
			end
			for _, v_3 in pairs(tbl_24_upvr) do
				if v_3 and v_3.Parent then
					SharedFunctions_upvr_2.Invisible(v_3, 0)
				end
			end
			for _, v_4 in pairs(tbl_56_upvr) do
				if v_4 then
					v_4:Destroy()
				end
			end
			UserInputService_upvr.MouseIconEnabled = true
			TweenService_upvr:Create(PlayerGui_upvr.Hotbar.Backpack, TweenInfo.new(1.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
				Position = UDim2.new(0, 0, 0, 0);
			}):Play()
			if clone_15_upvr then
				DebrisBD_upvr:Fire(clone_15_upvr, 2)
				TweenService_upvr:Create(clone_15_upvr, TweenInfo.new(1.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
					Position = UDim2.new(clone_15_upvr.Position.X.Scale, 0, clone_15_upvr.Position.Y.Scale + 1, 0);
				}):Play()
			end
			CurrentCamera_upvr.CameraType = Enum.CameraType.Custom
		end
		task.delay(3, function() -- Line 292
			--[[ Upvalues[5]:
				[1]: CurrentCamera_upvr (readonly)
				[2]: tbl_56_upvr (readonly)
				[3]: UserInputService_upvr (copied, readonly)
				[4]: TweenService_upvr (copied, readonly)
				[5]: PlayerGui_upvr (copied, readonly)
			]]
			if CurrentCamera_upvr.CameraType == Enum.CameraType.Scriptable and 1 <= #tbl_56_upvr and not UserInputService_upvr.MouseIconEnabled then
				TweenService_upvr:Create(PlayerGui_upvr.Hotbar.Backpack, TweenInfo.new(1.5, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut), {
					Position = UDim2.new(0, 0, 1.25, 0);
				}):Play()
			end
		end)
		local function _(arg1_8, arg2_5) -- Line 326
			--[[ Upvalues[3]:
				[1]: var451_upvw (read and write)
				[2]: SharedFunctions_upvr_2 (readonly)
				[3]: var454_upvw (read and write)
			]]
			if arg1_8.UserInputType == Enum.UserInputType.MouseButton1 or arg1_8.UserInputType == Enum.UserInputType.Touch or arg1_8.KeyCode == Enum.KeyCode.ButtonX then
				if var451_upvw then
					SharedFunctions_upvr_2.PlaySound(workspace.Sounds, "rbxassetid://113009709054282", 0.2)
				end
				var451_upvw = false
				var454_upvw = 0
			end
		end
		local vector2_upvw_2 = Vector2.new(0, 0)
		local Humanoid_upvr_2 = Character_upvr_2:FindFirstChild("Humanoid")
		local function MoveDirection_upvr() -- Line 346, Named "MoveDirection"
			--[[ Upvalues[2]:
				[1]: Humanoid_upvr_2 (readonly)
				[2]: CurrentCamera_upvr (readonly)
			]]
			local MoveDirection = Humanoid_upvr_2.MoveDirection
			if MoveDirection ~= Vector3.new(0, 0, 0) then
				local LookVector_2 = CurrentCamera_upvr.CFrame.LookVector
				return CFrame.lookAt(Vector3.new(0, 0, 0), Vector3.new(LookVector_2.X, 0, LookVector_2.Z).Unit):VectorToObjectSpace(Vector3.new(MoveDirection.X, 0, MoveDirection.Z).Unit)
			end
			return Vector3.new(0, 0, 0)
		end
		UserInputService_upvr.MouseIconEnabled = false
		if not controllerpressed_upvr then
			local var9_result1, var9_upvr_result2_2, _ = var9_upvr(tbl_64_upvr, tbl_56_upvr, UserInputService_upvr.TouchEnabled)
			local var490_upvw = var9_result1
			local var491_upvw = var9_upvr_result2_2
			clone_8_upvr:Destroy()
			clone_18_upvr:Destroy()
		end
		local tbl_53 = {
			Umbrella = {
				HBRadius = 0.02625;
				HBRadiusFail = 0.03;
			};
			Star = {
				HBRadius = 0.03;
				HBRadiusFail = 0.043750000000000004;
			};
			Triangle = {
				HBRadius = 0.03375;
				HBRadiusFail = 0.048125;
			};
			Circle = {
				HBRadius = 0.03;
				HBRadiusFail = 0.06875;
			};
			SackBoy = {
				HBRadius = 0.0195;
				HBRadiusFail = 0.026250000000000002;
			};
		}
		local tbl_35 = {
			HBRadius = 0.014;
			HBRadiusFail = 0.022;
		}
		tbl_53.MonaLisa = tbl_35
		tbl_35 = tbl_53[Shape_upvr_2].HBRadius
		local var499_upvw = tbl_35
		local HBRadiusFail_upvw = tbl_53[Shape_upvr_2].HBRadiusFail
		if controllerpressed_upvr then
			var499_upvw *= 1.45
			HBRadiusFail_upvw *= 1.75
		elseif UserInputService_upvr.TouchEnabled then
			var499_upvw *= 1.25
			HBRadiusFail_upvw *= 1.35
		end
		local var501_upvw = 0
		local var502_upvw
		local var503_upvr = var491_upvw
		if var503_upvr then
			var503_upvr = var491_upvw:FindFirstChild("PickModel"):FindFirstChild("Pick")
		end
		local var504_upvr = var503_upvr
		if var504_upvr then
			var504_upvr = var503_upvr.CFrame
		end
		local var505_upvr = var503_upvr
		if var505_upvr then
			var505_upvr = var503_upvr.CFrame * CFrame.new(2, -1.5, 1) * CFrame.Angles(0.08726646259971647, 0, 0)
		end
		local var506_upvr = var503_upvr
		if var506_upvr then
			var506_upvr = var503_upvr.CFrame * CFrame.new(-2, 1.5, -1.5) * CFrame.Angles(-0.1308996938995747, 0, 0)
		end
		local NewRem_upvr = arg1.NewRem
		local var508_upvw
		local var509_upvr = false
		if 85 <= #clone_14_upvr:GetChildren() then
			var509_upvr = 5.5
		end
		for i_5 = 1, 3 do
			local SOME_5 = Dalgona_3_upvr:FindFirstChild(Shape_upvr_2.."Crack"..i_5)
			if SOME_5 then
				local clone_10_upvw = SOME_5:Clone()
				clone_10_upvw.Parent = workspace.Effects
				clone_10_upvw:PivotTo(clone_2_upvr:GetPivot() + Vector3.new(0, -2, 0))
				table.insert(tbl_56_upvr, clone_10_upvw)
				if i_5 == 3 then
				end
			end
		end
		local DalgonaGameTime_upvr = arg1.DalgonaGameTime
		local var514_upvw
		var514_upvw = workspace:GetAttributeChangedSignal("CurrentGameTime"):Connect(function() -- Line 457
			--[[ Upvalues[6]:
				[1]: DalgonaGameTime_upvr (readonly)
				[2]: var514_upvw (read and write)
				[3]: var508_upvw (read and write)
				[4]: Dalgona_3_upvr (copied, readonly)
				[5]: clone_14_upvr (readonly)
				[6]: tbl_56_upvr (readonly)
			]]
			if workspace:GetAttribute("CurrentGameTime") and workspace:GetAttribute("CurrentGameTime") <= DalgonaGameTime_upvr / 2 then
				var514_upvw:Disconnect()
				var508_upvw = Dalgona_3_upvr:FindFirstChild("Highlight"):Clone()
				var508_upvw.Parent = clone_14_upvr
				table.insert(tbl_56_upvr, var508_upvw)
			end
		end)
		local var515_upvw
		local var517_upvw
		local function var516_upvr() -- Line 474
			--[[ Upvalues[18]:
				[1]: var517_upvw (read and write)
				[2]: var515_upvw (read and write)
				[3]: SharedFunctions_upvr_2 (readonly)
				[4]: clone_8_upvr (readonly)
				[5]: TweenService_upvr (copied, readonly)
				[6]: clone_18_upvr (readonly)
				[7]: clone_2_upvr (readonly)
				[8]: var490_upvw (read and write)
				[9]: CurrentCamera_upvr (readonly)
				[10]: HumanoidRootPart_upvr_2 (readonly)
				[11]: Character_upvr_2 (readonly)
				[12]: clone_15_upvr (readonly)
				[13]: DebrisBD_upvr (copied, readonly)
				[14]: ReplicatedStorage_upvr (copied, readonly)
				[15]: Effects_upvr_2 (readonly)
				[16]: LocalPlayer_upvr_2 (readonly)
				[17]: arg2 (readonly)
				[18]: var457_upvr (readonly)
			]]
			if not var517_upvw then
				var517_upvw = true
				var515_upvw = true
				SharedFunctions_upvr_2.PlaySound(workspace.Sounds, "rbxassetid://70595188193033", 0.5)
				if clone_8_upvr and clone_8_upvr.Parent then
					TweenService_upvr:Create(clone_8_upvr, TweenInfo.new(2, Enum.EasingStyle.Quad), {
						Transparency = 1;
					}):Play()
				end
				if clone_18_upvr and clone_18_upvr.Parent then
					TweenService_upvr:Create(clone_18_upvr, TweenInfo.new(2, Enum.EasingStyle.Quad), {
						Transparency = 1;
					}):Play()
				end
				for _, v_5 in pairs(clone_2_upvr:GetChildren()) do
					if v_5.Name == "DalgonaClickPart" and v_5:IsA("BasePart") then
						TweenService_upvr:Create(v_5, TweenInfo.new(2, Enum.EasingStyle.Quad), {
							Transparency = 1;
						}):Play()
					end
				end
				if var490_upvw then
					for _, v_6 in pairs(var490_upvw:GetDescendants()) do
						if v_6:IsA("BasePart") then
							TweenService_upvr:Create(v_6, TweenInfo.new(2, Enum.EasingStyle.Quad), {
								Transparency = 1;
							}):Play()
						end
					end
				end
				local cframe = CFrame.new(0, 0, 0)
				TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(0.75, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
					CFrame = HumanoidRootPart_upvr_2.CFrame * CFrame.new(-0.004, -0.192, -1.3, 1, -0.021, 0.005, 0.003, 0.375, 0.927, -0.021, -0.927, 0.375) * cframe;
				}):Play()
				local tbl_57 = {"Right Arm", "Left Arm", "Right Leg", "Left Leg", "Torso"}
				for i_8, v_7 in pairs(tbl_57) do
					local SOME_2 = Character_upvr_2:FindFirstChild(v_7)
					if SOME_2 then
						TweenService_upvr:Create(SOME_2, TweenInfo.new(0.5), {
							Transparency = 0;
						}):Play()
					end
				end
				if clone_15_upvr then
					i_8 = 2
					DebrisBD_upvr:Fire(clone_15_upvr, i_8)
					i_8 = TweenInfo.new
					v_7 = 3
					i_8 = i_8(v_7, Enum.EasingStyle.Circular, Enum.EasingDirection.InOut)
					v_7 = {}
					v_7.Position = UDim2.new(clone_15_upvr.Position.X.Scale, 0, clone_15_upvr.Position.Y.Scale + 1, 0)
					TweenService_upvr:Create(clone_15_upvr, i_8, v_7):Play()
				end
				local clone_12 = ReplicatedStorage_upvr.Effects.Games.Dalgona.Cutscenes.RevolverGuard:Clone()
				clone_12.Parent = workspace.Effects
				clone_12.HumanoidRootPart.CFrame = HumanoidRootPart_upvr_2.CFrame * CFrame.new(0, 0, -6) * CFrame.Angles(0, math.pi, 0)
				DebrisBD_upvr:Fire(clone_12, 5)
				local any_LoadAnimation_result1_2 = clone_12:FindFirstChild("Humanoid"):FindFirstChild("Animator"):LoadAnimation(ReplicatedStorage_upvr.Animations.Games.Dalgona.GuardShoot)
				any_LoadAnimation_result1_2:Play(0)
				any_LoadAnimation_result1_2:AdjustSpeed(0)
				task.wait(0.75)
				any_LoadAnimation_result1_2:AdjustSpeed(1)
				Effects_upvr_2.CutsceneMove({
					Target = LocalPlayer_upvr_2.Character:FindFirstChild("HumanoidRootPart");
					Path = "DalgonaDeath_Player";
					CamOffset = cframe;
					ExtraTBL = {
						UseLerp = 0.1;
						FreezeAtFinalFrame = 1.5;
					};
				})
				task.wait(2.16)
				for _, v_8 in pairs(tbl_57) do
					local SOME_4 = Character_upvr_2:FindFirstChild(v_8)
					if SOME_4 then
						SOME_4.Transparency = 1
					end
				end
				arg2.MauioShake({
					Length = 0.45;
					Intensity = 1;
					TweenSpeed = 0.015;
					AxisMultipliers = Vector3.new(1, 1, 1);
					FadeStyle = "inQuad";
					PositionStyle = "inCubic";
				})
				LocalPlayer_upvr_2:FindFirstChild("OtherBD"):Fire("DiedProperties", {
					Properties = {
						DiedVolume = 1;
						SpectateDelay = 2.5;
					};
				})
				TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(0.45, Enum.EasingStyle.Quad), {
					CFrame = CFrame.lookAt(HumanoidRootPart_upvr_2.Position + Vector3.new(0, 9, 0), HumanoidRootPart_upvr_2.Position) * CFrame.Angles(0, 0, (math.pi/2));
				}):Play()
				SharedFunctions_upvr_2.Invisible(Character_upvr_2, 0, true)
				arg2.BlackCameraEffect({
					WaitBeforeGoingBack = 2.25;
				})
				task.wait(0.75)
				var457_upvr()
				CurrentCamera_upvr.CameraType = Enum.CameraType.Scriptable
			end
		end
		local function _() -- Line 584
			--[[ Upvalues[12]:
				[1]: SharedFunctions_upvr_2 (readonly)
				[2]: LocalPlayer_upvr_2 (readonly)
				[3]: var515_upvw (read and write)
				[4]: TweenService_upvr (copied, readonly)
				[5]: clone_2_upvr (readonly)
				[6]: CurrentCamera_upvr (readonly)
				[7]: clone_8_upvr (readonly)
				[8]: clone_18_upvr (readonly)
				[9]: Character_upvr_2 (readonly)
				[10]: var490_upvw (read and write)
				[11]: HumanoidRootPart_upvr_2 (readonly)
				[12]: var457_upvr (readonly)
			]]
			SharedFunctions_upvr_2.CreateFolder(LocalPlayer_upvr_2, "RecentGameStartedMessage", 0.01)
			task.delay(0.5, function() -- Line 587
				--[[ Upvalues[11]:
					[1]: var515_upvw (copied, read and write)
					[2]: TweenService_upvr (copied, readonly)
					[3]: clone_2_upvr (copied, readonly)
					[4]: CurrentCamera_upvr (copied, readonly)
					[5]: clone_8_upvr (copied, readonly)
					[6]: clone_18_upvr (copied, readonly)
					[7]: SharedFunctions_upvr_2 (copied, readonly)
					[8]: Character_upvr_2 (copied, readonly)
					[9]: var490_upvw (copied, read and write)
					[10]: HumanoidRootPart_upvr_2 (copied, readonly)
					[11]: var457_upvr (copied, readonly)
				]]
				var515_upvw = true
				TweenService_upvr:Create(clone_2_upvr.shape, TweenInfo.new(2, Enum.EasingStyle.Quad), {
					Position = clone_2_upvr.shape.Position + Vector3.new(0, 0.5, 0);
				}):Play()
				for i_10, v_9 in pairs(clone_2_upvr:GetChildren()) do
					if v_9.Name == "DalgonaClickPart" and v_9:IsA("BasePart") then
						TweenService_upvr:Create(v_9, TweenInfo.new(2, Enum.EasingStyle.Quad), {
							Position = v_9.Position + Vector3.new(0, 0.5, 0);
						}):Play()
					end
				end
				i_10 = TweenInfo.new
				v_9 = 3
				i_10 = i_10(v_9, Enum.EasingStyle.Quad)
				v_9 = {}
				v_9.CFrame = CurrentCamera_upvr.CFrame * CFrame.new(0, -0.85, 0.4) * CFrame.Angles(0.6981317007977318, 0, 0)
				TweenService_upvr:Create(CurrentCamera_upvr, i_10, v_9):Play()
				if clone_8_upvr and clone_8_upvr.Parent then
					i_10 = TweenInfo.new
					v_9 = 2
					i_10 = i_10(v_9, Enum.EasingStyle.Quad)
					v_9 = {}
					v_9.Transparency = 1
					TweenService_upvr:Create(clone_8_upvr, i_10, v_9):Play()
				end
				if clone_18_upvr and clone_18_upvr.Parent then
					i_10 = TweenInfo.new
					v_9 = 2
					i_10 = i_10(v_9, Enum.EasingStyle.Quad)
					v_9 = {}
					v_9.Transparency = 1
					TweenService_upvr:Create(clone_18_upvr, i_10, v_9):Play()
				end
				task.wait(1)
				for _, v_10 in pairs(clone_2_upvr:GetChildren()) do
					if v_10.Name == "DalgonaClickPart" and v_10:IsA("BasePart") then
						TweenService_upvr:Create(v_10, TweenInfo.new(2, Enum.EasingStyle.Quad), {
							Transparency = 1;
						}):Play()
					end
				end
				task.wait(2)
				SharedFunctions_upvr_2.Invisible(Character_upvr_2, 0, true)
				if var490_upvw then
					for _, v_11 in pairs(var490_upvw:GetDescendants()) do
						if v_11:IsA("BasePart") then
							TweenService_upvr:Create(v_11, TweenInfo.new(2, Enum.EasingStyle.Quad), {
								Transparency = 1;
							}):Play()
						end
					end
				end
				TweenService_upvr:Create(CurrentCamera_upvr, TweenInfo.new(2, Enum.EasingStyle.Quad), {
					CFrame = HumanoidRootPart_upvr_2.CFrame * CFrame.new(0.0841674805, 8.45438766, 6.69675446, 0.999918401, -0.00898250192, 0.00907994807, 3.31699681e-08, 0.710912943, 0.703280032, -0.0127722733, -0.703222632, 0.710854948);
				}):Play()
				task.wait(2)
				var457_upvr()
			end)
		end
		local var579_upvw
		local var581_upvw
		local function var580_upvr() -- Line 639
			--[[ Upvalues[20]:
				[1]: var579_upvw (read and write)
				[2]: var451_upvw (read and write)
				[3]: var452_upvw (read and write)
				[4]: var501_upvw (read and write)
				[5]: SharedFunctions_upvr_2 (readonly)
				[6]: Effects_upvr_2 (readonly)
				[7]: arg2 (readonly)
				[8]: random_state_upvr (copied, readonly)
				[9]: NewRem_upvr (readonly)
				[10]: Shape_upvr_2 (readonly)
				[11]: LocalPlayer_upvr_2 (readonly)
				[12]: clone_10_upvw (read and write)
				[13]: clone_2_upvr (readonly)
				[14]: tbl_20_upvr (copied, readonly)
				[15]: TweenService_upvr (copied, readonly)
				[16]: clone_14_upvr (readonly)
				[17]: clone_18_upvr (readonly)
				[18]: var502_upvw (read and write)
				[19]: var581_upvw (read and write)
				[20]: Dalgona_3_upvr (copied, readonly)
			]]
			-- KONSTANTWARNING: Variable analysis failed. Output will have some incorrect variable assignments
			var579_upvw = true
			task.delay(0.2, function() -- Line 642
				--[[ Upvalues[1]:
					[1]: var579_upvw (copied, read and write)
				]]
				var579_upvw = nil
			end)
			var451_upvw = false
			var452_upvw = tick()
			var501_upvw += 1
			local var610
			if var501_upvw == 2 then
				var610 = SharedFunctions_upvr_2
				var610 = workspace.Sounds
				var610.PlaySound(var610, "rbxassetid://78163886222459", 0.5)
				function var610() -- Line 655
					--[[ Upvalues[1]:
						[1]: Effects_upvr_2 (copied, readonly)
					]]
					Effects_upvr_2.AnnouncementTween({
						AnnouncementOneLine = true;
						FasterTween = true;
						DisplayTime = 4;
						ShakeText = true;
						AnnouncementDisplayText = "ONLY ONE MORE CHANCE.";
					})
				end
				task.spawn(var610)
			elseif var501_upvw == 1 then
				function var610() -- Line 659
					--[[ Upvalues[1]:
						[1]: Effects_upvr_2 (copied, readonly)
					]]
					Effects_upvr_2.ScreenHighlight({
						Color = Color3.fromRGB(255, 0, 0);
						TweenTimeBack = 0.5;
						ImageTransparency = 0.4;
					})
				end
				task.spawn(var610)
			end
			var610 = arg2
			var610 = {}
			local var612 = 0.45
			var610.Length = var612
			if 3 <= var501_upvw then
				var612 = 0.25
			else
				var612 = 0.1
			end
			var610.Intensity = var612
			var610.TweenSpeed = 0.075
			var610.AxisMultipliers = Vector3.new(1, 0.15000, 1)
			var610.FadeStyle = "inQuad"
			var610.PositionStyle = "inCubic"
			var610.MauioShake(var610)
			local any_NextInteger_result1_2 = random_state_upvr:NextInteger(1, 4)
			if any_NextInteger_result1_2 == 1 then
				var610 = "rbxassetid://95708089383752"
			elseif any_NextInteger_result1_2 == 2 then
				var610 = "rbxassetid://120804953110091"
			elseif any_NextInteger_result1_2 == 3 then
				var610 = "rbxassetid://103295882653704"
			else
				var610 = "rbxassetid://127889132719108"
			end
			SharedFunctions_upvr_2.PlaySound(workspace.Sounds, var610, 0.5)
			local tbl_59 = {
				ShapeName = Shape_upvr_2;
				CrackAmount = var501_upvw;
			}
			if 3 > var501_upvw then
			else
			end
			tbl_59.FullyCracked = true
			NewRem_upvr:FireServer(tbl_59)
			if 3 <= var501_upvw then
				SharedFunctions_upvr_2.CreateFolder(LocalPlayer_upvr_2, "RecentGameStartedMessage", 0.01)
				SharedFunctions_upvr_2.PlaySound(workspace.Sounds, "rbxassetid://99207455467527", 0.75)
				if clone_10_upvw then
					clone_10_upvw:PivotTo(clone_2_upvr:GetPivot())
					for _, v_12 in pairs(clone_10_upvw:GetChildren()) do
						if v_12:IsA("BasePart") and v_12.Name ~= "outer" then
							v_12.Position = Vector3.new(v_12.Position.X, clone_2_upvr.outer.Position.Y, v_12.Position.Z)
							local var618 = tbl_20_upvr[v_12.Name]
							TweenService_upvr:Create(v_12, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								CFrame = v_12.CFrame * (CFrame.new(var618.Position * random_state_upvr:NextNumber(1, 2)) * var618 - var618.Position);
							}):Play()
						end
					end
					for _, v_13 in pairs(clone_2_upvr:GetChildren()) do
						if v_13:IsA("BasePart") then
							v_13.Transparency = 1
						end
					end
					for i_15, v_14 in pairs(clone_14_upvr:GetChildren()) do
						if v_14:IsA("BasePart") then
							v_14.Transparency = 1
						end
					end
					if clone_18_upvr and clone_18_upvr.Parent then
						i_15 = TweenInfo.new
						v_14 = 0.01
						i_15 = i_15(v_14, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
						v_14 = {}
						v_14.Transparency = 1
						TweenService_upvr:Create(clone_18_upvr, i_15, v_14):Play()
					end
				end
				var502_upvw = true
				task.delay(6.5, function() -- Line 722
					--[[ Upvalues[1]:
						[1]: var581_upvw (copied, read and write)
					]]
					var581_upvw:Disconnect()
				end)
			else
				clone_2_upvr.outer.SurfaceAppearance:Destroy()
				clone_2_upvr.shape.SurfaceAppearance:Destroy()
				Dalgona_3_upvr:FindFirstChild(Shape_upvr_2.."Crack"..var501_upvw).outer.SurfaceAppearance:Clone().Parent = clone_2_upvr.outer
				Dalgona_3_upvr:FindFirstChild(Shape_upvr_2.."Crack"..var501_upvw).shape.SurfaceAppearance:Clone().Parent = clone_2_upvr.shape
			end
		end
		if controllerpressed_upvr then
			var458_upvw = true
			game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
		end
		local cframe_2_upvr = CFrame.new(-0.0252380371, -1.83222198, -1.96484983, 1, 0, 0, 0, 0.0871556923, 0.99619472, 0, -0.99619472, 0.0871556923)
		local any_toObjectSpace_result1_upvr_2 = clone_2_upvr:GetPivot():toObjectSpace(HumanoidRootPart_upvr_2.CFrame * CFrame.new(-0.0252380371, -1.83222198, -1.96484983, 1, 0, 0, 0, 0.0871556923, 0.99619472, 0, -0.99619472, 0.0871556923))
		local tick_result1_upvr_3 = tick()
		local tick_result1_upvw_3 = tick()
		local const_number_upvw_2 = 0
		local const_number_upvw = 0
		local len_upvr = #clone_14_upvr:GetChildren()
		local ceiled_upvr_2 = math.ceil(#clone_14_upvr:GetChildren() * 0.05)
		local var636_upvw
		local tick_result1_upvr_2 = tick()
		local mouse_upvr_2 = LocalPlayer_upvr_3:GetMouse()
		local var639_upvr = HumanoidRootPart_upvr_2.CFrame * tbl_22_upvr[clone_8_upvr.Name]
		var581_upvw = RunService_upvr.RenderStepped:Connect(function() -- Line 742
			--[[ Upvalues[54]:
				[1]: var515_upvw (read and write)
				[2]: CurrentCamera_upvr (readonly)
				[3]: cframe_2_upvr (readonly)
				[4]: clone_2_upvr (readonly)
				[5]: any_toObjectSpace_result1_upvr_2 (readonly)
				[6]: tick_result1_upvr_3 (readonly)
				[7]: tbl_24_upvr (readonly)
				[8]: Character_upvr_2 (readonly)
				[9]: HumanoidRootPart_upvr_2 (readonly)
				[10]: SharedFunctions_upvr_2 (readonly)
				[11]: var508_upvw (read and write)
				[12]: tick_result1_upvw_3 (read and write)
				[13]: TweenService_upvr (copied, readonly)
				[14]: const_number_upvw_2 (read and write)
				[15]: const_number_upvw (read and write)
				[16]: len_upvr (readonly)
				[17]: ceiled_upvr_2 (readonly)
				[18]: clone_15_upvr (readonly)
				[19]: var636_upvw (read and write)
				[20]: var501_upvw (read and write)
				[21]: var580_upvr (readonly)
				[22]: LocalPlayer_upvr_2 (readonly)
				[23]: var502_upvw (read and write)
				[24]: var18_upvr (copied, readonly)
				[25]: tick_result1_upvr_2 (readonly)
				[26]: NewRem_upvr (readonly)
				[27]: clone_14_upvr (readonly)
				[28]: clone_13_upvr (readonly)
				[29]: DebrisBD_upvr (copied, readonly)
				[30]: Effects_upvr_2 (readonly)
				[31]: var509_upvr (readonly)
				[32]: random_state_upvr (copied, readonly)
				[33]: clone_8_upvr (readonly)
				[34]: clone_18_upvr (readonly)
				[35]: var490_upvw (read and write)
				[36]: var457_upvr (readonly)
				[37]: tick_result1_upvw_2 (read and write)
				[38]: var451_upvw (read and write)
				[39]: var453_upvw (read and write)
				[40]: UserInputService_upvr (copied, readonly)
				[41]: var491_upvw (read and write)
				[42]: var452_upvw (read and write)
				[43]: var503_upvr (readonly)
				[44]: var506_upvr (readonly)
				[45]: var505_upvr (readonly)
				[46]: var504_upvr (readonly)
				[47]: controllerpressed_upvr (readonly)
				[48]: MoveDirection_upvr (readonly)
				[49]: var454_upvw (read and write)
				[50]: mouse_upvr_2 (readonly)
				[51]: var639_upvr (readonly)
				[52]: var499_upvw (read and write)
				[53]: HBRadiusFail_upvw (read and write)
				[54]: var579_upvw (read and write)
			]]
			-- KONSTANTERROR: [0] 1. Error Block 1 start (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [0] 1. Error Block 1 end (CF ANALYSIS FAILED)
			-- KONSTANTERROR: [2] 3. Error Block 194 start (CF ANALYSIS FAILED)
			if typeof(cframe_2_upvr) ~= "CFrame" then
				CurrentCamera_upvr.CFrame = CurrentCamera_upvr.CFrame:Lerp(cframe_2_upvr.CFrame * CFrame.new(0, 0, 0.05) + (CurrentCamera_upvr:GetAttribute("MauioShakeOffset") or Vector3.new(0, 0, 0)), 1)
			else
				-- KONSTANTERROR: Expression was reused, decompilation is incorrect
				CurrentCamera_upvr.CFrame = clone_2_upvr:GetPivot() * any_toObjectSpace_result1_upvr_2 + (CurrentCamera_upvr:GetAttribute("MauioShakeOffset") or Vector3.new(0, 0, 0))
			end
			-- KONSTANTERROR: [2] 3. Error Block 194 end (CF ANALYSIS FAILED)
		end)
		local var641_upvw
		var641_upvw = NewRem_upvr.OnClientEvent:Connect(function(arg1_10) -- Line 1045
			--[[ Upvalues[3]:
				[1]: var641_upvw (read and write)
				[2]: var457_upvr (readonly)
				[3]: var516_upvr (readonly)
			]]
			if arg1_10 and arg1_10.Disconnect then
				var641_upvw:Disconnect()
				var457_upvr()
			elseif arg1_10 and arg1_10.FailedCutscene then
				var516_upvr()
			end
		end)
		local var643_upvw
		var643_upvw = Character_upvr_2.ChildAdded:Connect(function(arg1_11) -- Line 1055
			--[[ Upvalues[2]:
				[1]: var643_upvw (read and write)
				[2]: var457_upvr (readonly)
			]]
			if arg1_11.Name == "Dead" then
				var643_upvw:Disconnect()
				var457_upvr()
			end
		end)
		table.insert(tbl_64_upvr, var581_upvw)
		table.insert(tbl_64_upvr, var643_upvw)
		table.insert(tbl_64_upvr, UserInputService_upvr.InputBegan:Connect(function(arg1_7, arg2_4) -- Line 298
			--[[ Upvalues[8]:
				[1]: var452_upvw (read and write)
				[2]: var451_upvw (read and write)
				[3]: var453_upvw (read and write)
				[4]: var454_upvw (read and write)
				[5]: SharedFunctions_upvr_2 (readonly)
				[6]: clone_18_upvr (readonly)
				[7]: TweenService_upvr (copied, readonly)
				[8]: tick_result1_upvw_2 (read and write)
			]]
			if arg2_4 then
			elseif arg1_7.UserInputType == Enum.UserInputType.MouseButton1 or arg1_7.UserInputType == Enum.UserInputType.Touch or arg1_7.KeyCode == Enum.KeyCode.ButtonX or 0.5 <= tick() - var452_upvw then
				var451_upvw = true
				var453_upvw = nil
				var454_upvw = -0.05
				SharedFunctions_upvr_2.PlaySound(workspace.Sounds, "rbxassetid://125498588747260", 0.2)
				if clone_18_upvr and clone_18_upvr.Parent then
					local any_Create_result1_2 = TweenService_upvr:Create(clone_18_upvr, TweenInfo.new(0.1, Enum.EasingStyle.Back), {
						Transparency = 1;
					})
					any_Create_result1_2:Play()
					any_Create_result1_2:Destroy()
				end
				tick_result1_upvw_2 = tick()
				return
			end
		end))
		table.insert(tbl_64_upvr, UserInputService_upvr.InputChanged:Connect(function(arg1_9) -- Line 340
			--[[ Upvalues[1]:
				[1]: vector2_upvw_2 (read and write)
			]]
			if arg1_9.UserInputType == Enum.UserInputType.Touch or arg1_9.UserInputType == Enum.UserInputType.MouseMovement then
				vector2_upvw_2 = arg1_9.Position
			end
		end))
		table.insert(tbl_64_upvr, var514_upvw)
		table.insert(tbl_64_upvr, var641_upvw)
	end
end
return Dalgona
