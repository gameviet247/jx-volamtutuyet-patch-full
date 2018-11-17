SKILLS={ --trang suc
	bingfengqianli={ --Ngung Tuyet Han Suong
		fastwalkrun_p={{{1,-50},{20,-50}},{{1,18*3},{20,18*3}}},
	},
	binghuanchufa={ --��������
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
	guanghuan_lifemax1={ --��Ѫ����
		lifemax_v={{{1,800},{2,800}},{{1,18*8},{2,18*8}}},
		lifemax_yan_v={{{1,800},{2,800}},{{1,18*8},{2,18*8}}},
	},
	guanghuan_lifemax2={ --��Ѫ����
		lifemax_v={{{1,-800},{2,-800}},{{1,18*8},{2,18*8}}},
		lifemax_yan_v={{{1,-800},{2,-800}},{{1,18*8},{2,18*8}}},
	},
	guanghuan_fastwalkrun1={ --������
		fastwalkrun_p={{{1,30},{2,30}},{{1,18*8},{2,18*8}}},
	},
	guanghuan_fastwalkrun2={ --������
		fastwalkrun_p={{{1,-30},{2,-30}},{{1,18*8},{2,18*8}}},
	},
	zhandan_randmove={ --Ⱥ������߶�
		randmove={{{1,1},{2,1}},{{1,4*18},{20,4*18}}},
		missle_missrate={{{1,25},{2,25}}},
		missle_hitcount={{{1,1},{2,1}}},
	},
	zhandan_fatallystrike={ --����һ��
		physicsdamage_v={
			[1]={{1,3000},{20,3000}},
			[3]={{1,3000},{20,3000}},
		},
		fatallystrike_p={{{1,75},{2,75}}},
	},
	zhudong_quankang={ --�ͷ�����ȫ��		
		allres_yan_p={{{1,10},{2,10}},{{1,18*90},{2,18*90}}},
		allres_p={{{1,10},{2,10}},{{1,18*90},{2,18*90}}},
	},
	zhudong_jiangongji={ --������������
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
--����2���㣬��2���κ���f(x)=a*x2+c
--y= (y2-y1)*x*x/(x2*x2-x1*x1)-(y2-y1)*x1*x1/(x2*x2-x1*x1)+y1
--��x1����x2 < 0 ,y =0
--��x2=x1, ��x=c,��һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��extrac
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
--����2���㣬��-2���κ���f(x)=a*sqrt(x2)+c
--y=(y2-y1)*x/(sqrt(x2)-sqrt(x1))+y1-(y2-y1)/((sqrt(x2)-sqrt(x1))
--��x2����x1<0, y=0,
--��x1=x2,��x=c,��һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��extrac
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
--���������:Link(x,points)
--����points�ṩ��һϵ�е㣬�����ڵ��������������
--return yֵ
--x ����ֵ
--points �㼯��
--���磺points������{{x1,y1,func=xxx},{x2,y2,func=xxx},...{xn,yn,func=xxx}}��ӳ��
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
--�����趨��ʽ���£�
--SKILLS={
--	��������=	{
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		����������
--	}��
--	��������=	{
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		ħ������=	{
--			[1]={{����,��ֵ������}��{������ֵ������}����������}��
--			[2]={{����,��ֵ������}��{������ֵ������}����������}��
--			[3]={{����,��ֵ������}��{������ֵ������}����������}��	
--		}��
--		����������
--	}��
--	����������
--}
--�磺
--SKILLS={
--	Sanhuan-taoyue={
--		physicsenhance_p={
--			[1]={{1,50},{20,335}},--ħ������physicsenhance_p����1��1��ʱΪ35��20��ʱΪ335�����߲��Ĭ������
--			[2]={{1,0},{20,0}},
--		},--û��[3]����ʾħ������physicsenhance_p����2��Ĭ��Ϊ�κ�ʱ����0
--		lightingdamage_v={
--			[1]={{1,65},{20,350}},
--			[3]={{1,65},{20,350}},
--		}
--	}
--}
--�����������ܡ��������¡���ħ�����Ժ���ֵ
-----------------------------------------------------------
--����GetSkillLevelData(levelname, data, level)
--levelname��ħ����������
--data����������
--level�����ܵȼ�
--return������������Ϊdata�����ܵȼ�Ϊlevel
--			ʱ��ħ������levelname����������������ľ���ֵ
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

