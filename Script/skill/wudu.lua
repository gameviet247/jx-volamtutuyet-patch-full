--迭代函数，用于计算技能熟练度
--具体方法：
--根据1级熟练度，升级加速度，级数，重复伤害次数，范围，计算出相应等级熟练度
-- SkillExp(i) = Exp1*a^(i-1)*time*range
EXP_PER = 40
function SkillExpFunc(Exp0,a,Level,Time,Range)
	return floor(Exp0*(a^(Level-1))*Time*Range/2)
end


SKILLS={
	--五毒
	dusha_zhang={ --Doc sa chuong
		poisondamage_v={{{1,2},{20,26}},{{1,60},{20,60}},{{1,10},{20,10}}},
		seriesdamage_p={{{1,1},{20,10}}},
		addskilldamage1={
			[1]={{1,353},{2,353}},
			[3]={{1,2},{20,65}}
		},
		addskilldamage2={
			[1]={{1,71},{2,71}},
			[3]={{1,1},{20,35}}
		},
		--addskilldamage3={
		--	[1]={{1,1066},{2,1066}},
		--	[3]={{1,1},{20,54}}
		--},
		--addskilldamage4={
		--	[1]={{1,1094},{2,1094}},
		--	[3]={{1,1},{20,54}}
		--},
		--addskilldamage5={
		--	[1]={{1,1096},{2,1096}},
		--	[3]={{1,1},{20,54}}
		--},
		missle_speed_v={{{1,20},{20,24}}},
		skill_attackradius={{{1,320},{20,384}}},
		skill_cost_v={{{1,10},{20,10}}}
	},
	wudu_daofa={ --Ngu doc dao phap
		addphysicsdamage_p={{{1,20},{20,180}},{{1,-1},{20,-1}},{{1,1},{2,1}}},
		deadlystrikeenhance_p={{{1,6},{20,25}},{{1,-1},{2,-1}}}
	},
	wudu_zhangfa={ --Ngu doc chuong phap
		addpoisonmagic_v={{{1,15},{20,45}},{{1,-1},{2,-1}},{{1,10},{2,10}}},
	},
	binglan_xuanjing={ --Bang lam huyen tinh
		coldres_p={{{1,-9},{20,-49}},{{1,18*20},{20,18*90}}},
		skill_cost_v={{{1,10},{20,60}}}
	},
	xuedao_dusha={ --Huyet dao doc sat
		physicsenhance_p={{{1,15},{20,65}}},
		seriesdamage_p={{{1,1},{20,10}}},
		poisondamage_v={{{1,4},{20,11}},{{1,60},{20,60}},{{1,10},{20,10}}},
		addskilldamage1={
			[1]={{1,355},{2,355}},
			[3]={{1,1},{20,60}}
		},
		addskilldamage2={
			[1]={{1,74},{2,74}},
			[3]={{1,1},{20,35}}
		},
		--addskilldamage3={
		--	[1]={{1,1067},{2,1067}},
		--	[3]={{1,1},{20,50}}
		--},
		missle_speed_v={{{1,20},{20,24}}},
		skill_attackradius={{{1,320},{20,384}}},
		skill_cost_v={{{1,20},{20,20}}}
	},
	zanan_yaojing={ --Tap nan Duoc kinh
		poisonres_p={{{1,9},{20,39}},{{1,-1},{2,-1}}}
	},
	jiutian_kuanglei={ --Cuu thien cuong loi
		lightingres_p={{{1,-9},{20,-49}},{{1,18*20},{20,18*90}}},
		skill_cost_v={{{1,10},{20,60}}}
	},
	youming_kulou={ --U Minh kho lau
		poisondamage_v={{{1,11},{20,40}},{{1,60},{20,60}},{{1,10},{20,10}}},
		seriesdamage_p={{{1,5},{20,30}}},
		addskilldamage1={
			[1]={{1,353},{2,353}},
			[3]={{1,2},{20,85}}
		},
		--addskilldamage2={
		--	[1]={{1,1066},{2,1066}},
		--	[3]={{1,1},{20,70}}
		--},
		--addskilldamage3={
		--	[1]={{1,1094},{2,1094}},
		--	[3]={{1,1},{20,70}}
		--},
		--addskilldamage4={
		--	[1]={{1,1096},{2,1096}},
		--	[3]={{1,1},{20,70}}
		--},
		missle_speed_v={{{1,24},{20,28}}},
		skill_attackradius={{{1,384},{20,448}}},
		skill_cost_v={{{1,40},{20,40}}}
	},
	wuxing_gu={ --Vo hinh doc -- tam thoi ko su dung.
		poisondamage_v={
			[1]={{1,5},{20,25}},
			[2]={{1,20},{20,20}},
			[3]={{1,25},{2,25}}
		}
	},
	chiyan_shitian={ --Xich diem Thuc thien
		fireres_p={{{1,-9},{20,-49}},{{1,18*20},{20,18*90}}},
		skill_cost_v={{{1,10},{20,60}}}
	},
	chuanxin_duci={ --Xuyen tam doc thich
		poisonres_p={{{1,-29},{20,-49}},{{1,18*20},{20,18*90}}},
		skill_cost_v={{{1,10},{20,60}}}
	},
	wangu_shixin={ --Van doc Thuc tam
		poisontimereduce_p={{{1,-100},{20,-200}},{{1,18*45},{20,18*120}}},
		skill_cost_v={{{1,40},{20,40}}}
	},
	tiangang_disha={ --Thien cuong dia sat
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		poisondamage_v={{{1,50},{20,135}},{{1,60},{20,60}},{{1,10},{20,10}}},
		addskilldamage1={
			[1]={{1,354},{2,354}},
			[3]={{1,2},{20,181}}
		},
		--addskilldamage2={
		--	[1]={{1,1066},{2,1066}},
		--	[3]={{1,1},{20,20}}
		--},
		--addskilldamage3={
		--	[1]={{1,1094},{2,1094}},
		--	[3]={{1,1},{20,20}}
		--},
		--addskilldamage4={
		--	[1]={{1,1096},{2,1096}},
		--	[3]={{1,1},{20,140}}
		--},
		skill_attackradius={{{1,448},{20,480}}},
		skill_cost_v={{{1,60},{20,60}}}
	},
	zhuha_qingming={ --Chu Cap thanh minh
		seriesdamage_p={{{1,10},{20,50},{21,52}}},
		physicsenhance_p={{{1,30},{20,392}}},
		poisondamage_v={{{1,16},{20,53}},{{1,60},{20,60}},{{1,10},{20,10}}},
		addskilldamage1={
			[1]={{1,355},{2,355}},
			[3]={{1,1},{20,60}}
		},
		--addskilldamage2={
		--	[1]={{1,1067},{2,1067}},
		--	[3]={{1,1},{20,50}}
		--},
		missle_speed_v={{{1,28},{20,32},{21,32}}},
		skill_attackradius={{{1,448},{20,512},{21,512}}},
		skill_cost_v={{{1,17},{20,55}}}
	},
	wudu_qijing={ --Ngu doc Ky kinh
		addpoisonmagic_v={{{1,5},{30,100}},{{1,-1},{20,-1}},{{1,10},{2,10}}},
		addpoisondamage_v={{{1,5},{30,45}},{{1,-1},{20,-1}},{{1,10},{2,10}}},
		poisonenhance_p={{{1,12},{30,50}},{{1,-1},{2,-1}}},
		deadlystrikeenhance_p={{{1,4},{30,45}},{{1,-1},{2,-1}}},
	},
	baidu_chuanxin={ --Bach doc xuyen tam
		physicsenhance_p={{{1,10},{20,95}}},
		seriesdamage_p={{{1,5},{20,30}}},
		poisondamage_v={{{1,4},{20,20}},{{1,60},{20,60}},{{1,10},{20,10}}},
		addskilldamage1={
			[1]={{1,383},{2,383}},
			[3]={{1,1},{20,70}}
		},
		--addskilldamage2={
		--	[1]={{1,1095},{2,1095}},
		--	[3]={{1,1},{20,58}}
		--},
		missle_speed_v={{{1,24},{20,28}}},
		skill_attackradius={{{1,384},{20,448}}},
		skill_cost_v={{{1,10},{20,32}}}
	},
	yinfeng_shigu={ --Am Phong thuc cot
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		poisondamage_v={{{1,20},{15,50},{20,121}},{{1,60},{20,60}},{{1,10},{20,10}}},
		skill_attackradius={{{1,448},{20,480},{21,480}}},
		skill_cost_v={{{1,30},{20,80}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
		--skill_flyevent={
		--	[1]={{1,0},{10,0},{10,1},{20,1}},
		--	[2]={{1,6},{2,6}},
		--	[3]={{1,388},{20,388}}
		--},
		skill_vanishedevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,354},{20,354}}
		},
		--addskilldamage1={
		--	[1]={{1,1066},{2,1066}},
		--	[3]={{1,1},{20,60}}
		--},
		--addskilldamage2={
		--	[1]={{1,1094},{2,1094}},
		--	[3]={{1,1},{20,60}}
		--},
		--addskilldamage3={
		--	[1]={{1,1096},{2,1096}},
		--	[3]={{1,1},{20,60}}
		--},
		skill_showevent={{{1,0},{10,0},{10,8},{20,8}}},
		addskillexp1={{{1,353},{2,353}},{{1,EXP_PER},{20,EXP_PER}},{{1,0},{2,0}}},
		skill_skillexp_v={{	{1,SkillExpFunc(3540,1.15,1,1,5)},
							{2,SkillExpFunc(3540,1.15,2,1,5)},
							{3,SkillExpFunc(3540,1.16,3,1,5)},
							{4,SkillExpFunc(3540,1.17,4,1,5)},
							{5,SkillExpFunc(3540,1.18,5,1,5)},
							{6,SkillExpFunc(3540,1.19,6,1,5)},
							{7,SkillExpFunc(3540,1.20,7,1,5)},
							{8,SkillExpFunc(3540,1.21,8,1,5)},
							{9,SkillExpFunc(3540,1.22,9,1,5)},
							{10,SkillExpFunc(3540,1.23,10,1,5)},
							{11,SkillExpFunc(3540,1.24,11,1,5)},
							{12,SkillExpFunc(3540,1.23,12,1,5)},
							{13,SkillExpFunc(3540,1.22,13,1,5)},
							{14,SkillExpFunc(3540,1.21,14,1,5)},
							{15,SkillExpFunc(3540,1.20,15,1,5)},
							{16,SkillExpFunc(3540,1.19,16,1,5)},
							{17,SkillExpFunc(3540,1.18,17,1,5)},
							{18,SkillExpFunc(3540,1.17,18,1,5)},
							{19,SkillExpFunc(3540,1.16,19,1,5)},
							{20,SkillExpFunc(3540,1.15,20,1,5)},
							}},
	},
	zhuifeng_duji={ --Truy phong Doc cat'--ko su dung
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		poisondamage_v={{{1,1},{20,15}},{{1,60},{20,60}},{{1,10},{20,10}}},
	},
	tiangang_dushou={ --Thien Cuong Doc thu
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		poisondamage_v={{{1,1},{20,15}},{{1,80},{20,60}},{{1,10},{20,10}}},
	},
	xuanyin_zhan={ --Huyen am tram
		seriesdamage_p={{{1,20},{15,20},{20,60},{21,62}}},
		physicsenhance_p={{{1,15},{15,80},{20,173}}},
		poisondamage_v={{{1,20},{15,30},{20,60}},{{1,60},{20,60}},{{1,10},{20,10}}},
		missle_speed_v={{{1,28},{20,32},{21,40}}},
		skill_attackradius={{{1,448},{20,512},{21,512}}},
		skill_cost_v={{{1,30},{20,60}}},
		addskillexp1={{{1,355},{2,355}},{{1,EXP_PER},{20,EXP_PER}},{{1,0},{2,0}}},
		skill_skillexp_v={{	{1,SkillExpFunc(5000,1.15,1,1,3)},
							{2,SkillExpFunc(5000,1.15,2,1,3)},
							{3,SkillExpFunc(5000,1.16,3,1,3)},
							{4,SkillExpFunc(5000,1.17,4,1,3)},
							{5,SkillExpFunc(5000,1.18,5,1,3)},
							{6,SkillExpFunc(5000,1.19,6,1,3)},
							{7,SkillExpFunc(5000,1.20,7,1,3)},
							{8,SkillExpFunc(5000,1.21,8,1,3)},
							{9,SkillExpFunc(5000,1.22,9,1,3)},
							{10,SkillExpFunc(5000,1.23,10,1,3)},
							{11,SkillExpFunc(5000,1.24,11,1,3)},
							{12,SkillExpFunc(5000,1.23,12,1,3)},
							{13,SkillExpFunc(5000,1.22,13,1,3)},
							{14,SkillExpFunc(5000,1.21,14,1,3)},
							{15,SkillExpFunc(5000,1.20,15,1,3)},
							{16,SkillExpFunc(5000,1.19,16,1,3)},
							{17,SkillExpFunc(5000,1.18,17,1,3)},
							{18,SkillExpFunc(5000,1.17,18,1,3)},
							{19,SkillExpFunc(5000,1.16,19,1,3)},
							{20,SkillExpFunc(5000,1.15,20,1,3)},
							}},
		--addskilldamage1={
		--	[1]={{1,1067},{2,1067}},
		--	[3]={{1,1},{20,32}}
		--},
		skill_eventskilllevel={{{1,1},{20,20}}},
--		skill_flyevent={
--			[1]={{1,0},{10,0},{10,1},{20,1}},
--			[2]={{1,10},{20,5},{60,1},{61,1}},
--			[3]={{1,383},{20,383}}
--		},
		skill_collideevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,383},{20,383}}
		},
		skill_showevent={{{1,0},{10,0},{10,4},{20,4}}},
	},
	xingkong_po={ --Tinh khong pha'
		seriesdamage_p={{{1,20},{20,60},{21,62}}},
		poisondamage_v={{{1,1},{20,10}},{{1,60},{20,60}},{{1,10},{20,10}}},
	},
	duanjin_fugu={ --Doan can hu cot
		allres_p={{{1,-1},{20,-40}},{{1,18*20},{20,18*90}}},
		skill_cost_v={{{1,60},{20,120}}}
	},
	chuanyi_pojia={ --Xuyen y Pha giap
		physicsres_p={{{1,-9},{20,-49}},{{1,18*20},{20,18*90}}},
		skill_cost_v={{{1,10},{20,60}}}
	},
	wudu120={ --Hap Tinh yem skill 120
		autoattackskill={{{1,1},{20,20},{21,21}},{{1,-1},{20,-1}},{{1,719},{20,719},{21,719}}},--level[1], skillid[3]
		autoattackskillplus={{{1,1},{15,12},{20,15},{21,15}},{{1,-1},{20,-1}},{{1,10*18},{20,10*18}}},--xac suat, thoi gian cho`
		skill_desc=
			function(level)
				return "X竎 su蕋 <color=orange>"..floor(Link(level,SKILLS.wudu120.autoattackskillplus[1])).."%<color> khi課 cho i thng b?c s竧,\n"..
				"ng th阨 l祄 gi秏 <color=orange>"..floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[1])).."%<color> n閕 l鵦 i phng"..
				" trong <color=orange>"..floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[2]) / 18).." gi﹜<color>\n"..
				" <color=orange>"..floor(Link(level,SKILLS.wudu120.autoattackskillplus[3]) / 18).." gi﹜<color> sau m韎 c?th?thi tri觧 ti誴"
			end,
		skill_skillexp_v={{	{1,17851239},
							{2,19487603},
							{3,22760330},
							{4,27669421},
							{5,34214875},
							{6,42396694},
							{7,52214875},
							{8,63669421},
							{9,76760330},
							{10,91487603},
							{11,107851239},
							{12,135669421},
							{13,174942148},
							{14,225669421},
							{15,274418181},
							{16,344618181},
							{17,425738181},
							{18,517778181},
							{19,620738181},
							{20,620738181},
							}},	
	},
	wudu120zuzhou={ --Hap tinh Yem~ Quyet Chu' - skill phu. 120
		poison2decmana_p={{{1,30},{15,80},{20,85},{21,85}},{{1,3*18},{15,5*18},{20,6*18},{21,6*18}}},
	},
	zhangwudu150={ --Hinh tieu Cot lap - 150
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		--poisondamage_v={{{1,20},{15,50},{20,121}},{{1,60},{20,60}},{{1,10},{20,10}}},
		poisondamage_v={{{1,25},{15,100},{20,215},{23,353},{26,422}},{{1,60},{20,60}},{{1,10},{20,10}}},
		skill_attackradius={{{1,448},{20,480},{21,480}}},
		skill_cost_v={{{1,35},{20,100},{23,120}}},
		skill_eventskilllevel={{{1,1},{20,20}}},--startevent: 1094
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,90000},
												{21,120000},
												{22,150000},
												{23,200000},
												{24,250000},
												{25,300000},
												}},	
	},
	zhangwudu150_2={ --chuong 150 tang 2
		seriesdamage_p={{{1,40},{20,80},{21,82}}},
		poisondamage_v={{{1,1},{20,25}},{{1,60},{20,60}},{{1,10},{20,10}}},
	},
	daowudu150={ --U Hon Phe anh -150
		seriesdamage_p={{{1,40},{15,40},{20,80},{21,82}}},
		physicsenhance_p={{{1,18},{15,95},{20,208},{23,343},{26,411}}},
		--poisondamage_v={{{1,20},{15,30},{20,60}},{{1,60},{20,60}},{{1,10},{20,10}}},
		poisondamage_v={{{1,24},{15,72},{20,144},{23,230},{26,273}},{{1,60},{20,60}},{{1,10},{20,10}}},
		missle_speed_v={{{1,28},{20,30},{21,30}}},
		skill_attackradius={{{1,448},{20,512},{21,512}}},
		skill_cost_v={{{1,36},{20,72},{23,83}}},
		skill_eventskilllevel={{{1,1},{20,20}}},
--		skill_flyevent={
--			[1]={{1,0},{10,0},{10,1},{20,1}},
--			[2]={{1,10},{20,5},{60,1},{61,1}},
--			[3]={{1,383},{20,383}}
--		},
		skill_collideevent={
			[1]={{1,0},{10,0},{10,1},{20,1}},
			[3]={{1,1095},{20,1095}}
		},
		skill_showevent={{{1,0},{10,0},{10,4},{20,4}}},
		skill_skillexp_v={{	{1,300},
												{2,600},
												{3,1000},
												{4,1500},
												{5,2100},
												{6,2800},
												{7,3600},
												{8,4500},
												{9,5500},
												{10,6600},
												{11,7800},
												{12,9100},
												{13,10500},
												{14,12000},
												{15,13600},
												{16,15300},
												{17,17100},
												{18,19000},
												{19,21400},
												{20,90000},
												{21,120000},
												{22,150000},
												{23,200000},
												{24,250000},
												{25,300000},
												}},	
	},
	daowudu150_2={ --Hon Anh tung sanh -150 tang 2
		seriesdamage_p={{{1,40},{20,80},{21,82}}},
		poisondamage_v={{{1,1},{20,12},{23,15}},{{1,60},{20,60}},{{1,10},{20,10}}},
	},
}
-----------------------------------------------
--Create by yfeng 2004-05-20
-----------------------------------------------

-----------------------------------------------
--根据2个点，求线形函数f(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--当x2=x1, 有x=c,该直线是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：
function Line(x,x1,y1,x2,y2)
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--根据2个点，求2次形函数f(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--当x1或者x2 < 0 ,y =0
--当x2=x1, 有x=c,是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：extrac
function Conic(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
end

-----------------------------------------------
--根据2个点，求-2次形函数f(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--当x2或者x1<0, y=0,
--当x1=x2,有x=c,是一条垂直于x轴的直线
--这是可以取得y=任意值
--因此，如果已知两点(x1,y1),(x2,y2)可求得过此2点的
--函数为：extrac
function Extrac(x,x1,y1,x2,y2)
	if((x1 < 0) or (x2<0))then 
		return 0
	end
	if(x2==x1) then
		return y2
	end
	return (y2-y1)*(x-x1)/(x2-x1)+y1
end

-----------------------------------------------
--描绘连接线:Link(x,points)
--根据points提供的一系列点，用相邻的两个点描绘曲线
--return y值
--x 输入值
--points 点集合
--形如：points是形如{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}的映射
function Link(x,points)
	num = getn(points)
	if(num<2) then
		return -1
	end
	for i=1,num do
		if(points[i][3]==nil) then
			points[i][3]=Line
		end
	end
	if(x < points[1][1]) then
		return points[1][3](x,points[1][1],points[1][2],points[2][1],points[2][2])
	end
	if(x > points[num][1]) then
		return points[num][3](x,points[num-1][1],points[num-1][2],points[num][1],points[num][2])
	end
	
	c = 2
	for i=2,num do
		if((x >= points[i-1][1]) and (x <= points[i][1])) then
			c = i
			break
		end
	end
	return points[c][3](x,points[c-1][1],points[c-1][2],points[c][1],points[c][2])
end

------------------------------------------------------
--技能设定格式如下：
--SKILLS={
--	技能名称=	{
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		。。。。。
--	}，
--	技能名称=	{
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		魔法属性=	{
--			[1]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[2]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，
--			[3]={{级别,数值，曲线}，{级别，数值，曲线}，。。。。}，	
--		}，
--		。。。。。
--	}，
--	。。。。。
--}
--如：
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--魔法属性physicsenhance_p参数1，1级时为35，20级时为335，曲线不填，默认线形
--			[2]={{1,0},{20,0}},
--		},--没有[3]，表示魔法属性physicsenhance_p参数2，默认为任何时候都是0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--以上描述技能“三环套月”的魔法属性和数值
-----------------------------------------------------------
--函数GetSkillLevelData(levelname, data, level)
--levelname：魔法属性名称
--data：技能名称
--level：技能等级
--return：当技能名称为data，技能等级为level
--			时的魔法属性levelname所需求的三个参数的具体值
-----------------------------------------------------------
function GetSkillLevelData(levelname, data, level)
	if(data==nil) then
		return ""
	end
	if(data == "") then
		return ""
	end
	if(SKILLS[data]==nil) then
		return ""
	end
	if(SKILLS[data][levelname]==nil) then
		return ""
	end
	if(type(SKILLS[data][levelname]) == "function") then
		return SKILLS[data][levelname](level)
	end
	if(SKILLS[data][levelname][1]==nil) then
		SKILLS[data][levelname][1]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][2]==nil) then
		SKILLS[data][levelname][2]={{0,0},{20,0}}
	end
	if(SKILLS[data][levelname][3]==nil) then
		SKILLS[data][levelname][3]={{0,0},{20,0}}
	end
	p1=floor(Link(level,SKILLS[data][levelname][1]))
	p2=floor(Link(level,SKILLS[data][levelname][2]))
	p3=floor(Link(level,SKILLS[data][levelname][3]))
	return Param2String(p1,p2,p3)
end;


function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;
