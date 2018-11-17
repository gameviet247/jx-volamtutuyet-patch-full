SKILLS={ --trang suc
	bingfengqianli={ --Ngung Tuyet Han Suong
		fastwalkrun_p={{{1,-50},{20,-50}},{{1,18*3},{20,18*3}}},
	},
	binghuanchufa={ --冰环触发
		autoreplyskill={{{1,1021 * 256 + 1},{20,1021 * 256 + 20},{21,1021*256 + 21}},{{1,-1},{2,-1}},{{1,60*18*256 + 50},{19,60*18*256 + 50},{20,60*18*256 + 50},{21,60*18*256 + 50}}},
	},
	binghuanzidan={ --Thuy Ngoc bang Huyen
		--forbit_attack={{{1,1},{2,1}},{{1,18*3},{2,18*3}}},
		--frozen_action={{{1,1},{2,1}},{{1,18*3},{2,18*3}}},
		--invincibility={{{1,1},{2,1}},{{1,18*3},{2,18*3}}},
		--forbit_takemedicine={{{1,1},{2,1}},{{1,18*3},{2,18*3}}},
		stop_action={{{1,1},{2,1}},{{1,18*3},{2,18*3}}},
		missle_hitcount={{{1,3},{20,3}}},
	},
	guanghuan_lifemax1={ --加血上限
		lifemax_v={{{1,800},{2,800}},{{1,18*8},{2,18*8}}},
		lifemax_yan_v={{{1,800},{2,800}},{{1,18*8},{2,18*8}}},
	},
	guanghuan_lifemax2={ --减血上限
		lifemax_v={{{1,-800},{2,-800}},{{1,18*8},{2,18*8}}},
		lifemax_yan_v={{{1,-800},{2,-800}},{{1,18*8},{2,18*8}}},
	},
	guanghuan_fastwalkrun1={ --加跑速
		fastwalkrun_p={{{1,30},{2,30}},{{1,18*8},{2,18*8}}},
	},
	guanghuan_fastwalkrun2={ --减跑速
		fastwalkrun_p={{{1,-30},{2,-30}},{{1,18*8},{2,18*8}}},
	},
	zhandan_randmove={ --群体随机走动
		randmove={{{1,1},{2,1}},{{1,4*18},{20,4*18}}},
		missle_missrate={{{1,25},{2,25}}},
		missle_hitcount={{{1,1},{2,1}}},
	},
	zhandan_fatallystrike={ --致命一击
		physicsdamage_v={
			[1]={{1,3000},{20,3000}},
			[3]={{1,3000},{20,3000}},
		},
		fatallystrike_p={{{1,75},{2,75}}},
	},
	zhudong_quankang={ --释放自身全抗		
		allres_yan_p={{{1,10},{2,10}},{{1,18*90},{2,18*90}}},
		allres_p={{{1,10},{2,10}},{{1,18*90},{2,18*90}}},
	},
	zhudong_jiangongji={ --主动减攻减速
		fastwalkrun_p={{{1,-30},{2,-30}},{{1,18*60},{2,18*60}}},
		attackratingenhance_p={{{1,-155},{2,-155}},{{1,18*60},{20,18*60}}},
		skill_enhance={{{1,-25},{2,-25}},{{1,18*60},{20,18*60}}},
	},
}

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

