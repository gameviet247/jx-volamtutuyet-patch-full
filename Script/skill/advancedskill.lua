SKILLS=
{
	sl_adskill={ --���ֽ��׼���
		skill_desc=
			function(level)
				return format("D�ng <color=water>[Minh K�nh V� Di]<color> t�ng khi b�n th�n b� c�ng k�ch g�n v� xa <color=orange>%d%%<color> h�i ph�c s�t th��ng, duy tr� <color=orange>%d gi�y <color>\n", floor(Link(level,SKILLS.sl_adskill.meleedamagereturn_p[1])), floor(Link(level,SKILLS.sl_adskill.meleedamagereturn_p[2]) / 18))
			end,
		autoreplyskill=
		{
			{{1,1230 * 256 + 1},{20,1230 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 5},{20,20*18*256 + 5}}
		},
		meleedamagereturn_p={{{1,10},{20,50},{21,50}},{{1,10*18},{20,15*18}}},
		rangedamagereturn_p={{{1,10},{20,50},{21,50}},{{1,10*18},{20,15*18}}},
							},
	tw_adskill={ --�������׼���
		skill_desc=
			function(level)
				return format("D�ng <color=water>[Du Long Ch�n Kh�]<color> c� <color=orange>%d%%<color> t� l� l�m cho b�n th�n mi�n d�ch v�i tr�ng th�i ti�u c�c, duy tr� <color=orange>%d gi�y <color>\n",floor(100 - Link(level,SKILLS.tw_adskill.missle_missrate[1])), floor(Link(level,SKILLS.tw_adskill.ignorenegativestate_p[2]) / 18))
			end,
		autoreplyskill=
		{
			{{1,1231 * 256 + 1},{20,1231 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 1},{19,10*18*256 + 3},{20,10*18*256 + 3}}
		},
--		autoattackskill=
--		{
--			{{1,738*256 + 1},{20,738*256 + 20}},
--			{{1,10},{20,40}},
--			{{1,10*18*256 + 10},{20,4*18*256 + 50}}
--		},
		missle_missrate={{{1,80},{20,20},{21,20}}},
		ignorenegativestate_p=
		{
			{{1,100},{15,100},{20,100},{21,100}},
			{{1,1*18},{20,3*18},{21,3*18}},
		},
							},
	wu_adskill ={ --�嶾���׼���
		skill_desc=
			function(level)
				return format("M�c ti�u c� <color=orange>%d%%<color> t� l� k�ch ho�t c�p �� t��ng �ng c�a <color=water>[H�n Nh�t T�ng Sinh]<color>\n sau m�i l�n k�ch ho�t trong <color=orange>%d gi�y <color> kh�ng th� k�ch ho�t n�a\n",floor(Link(level,SKILLS.wu_adskill.autoattackskill[3]) - 1*18*256), floor((Link(level,SKILLS.wu_adskill.autoattackskill[3]) / (18*256))))
			end,
		autoattackskill=
		{
			{{1,1232*256 + 1},{20,1232*256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,1*18*256 + 20},{20,1*18*256 + 60}}
		},
							},
	tm_adskill ={ --���Ž��׼���
		skill_desc=
			function(level)
				return format("Khi sinh l�c th�p h�n 25%% c� <color=orange>%d%%<color> t� l� ng�n ch�n k�ch ho�t 100%%\n sau m�i l�n k�ch ho�t trong <color=orange>%d gi�y <color> kh�ng th� k�ch ho�t n�a\n ", floor(Link(level,SKILLS.tm_adskill.autorescueskill[3]) - 10*18*256), floor((Link(level,SKILLS.tm_adskill.autorescueskill[3]) / (18*256))))
			end,	
		block_rate={{{1,100},{2,100}},{{1,18*2},{20,18*5}}},
		autorescueskill=
		{
			{
				{1,1233*256 + 1},{20,1233*256 + 20},
			},
			{
				{1,-1},{20,-1}
			},
			{
				{1,10*18*256 + 5},
				{20,10*18*256 + 20},
			}
		},
								},
	em_adskill ={ --��ü���׼���
		skill_desc=
			function(level)
				return format("M�c ti�u c� <color=orange>%d%%<color> t� l� thi tri�n c�p �� t��ng �ng c�a <color=water>[T� H�ng Ph� ��]<color>\n sau m�i l�n k�ch ho�t trong <color=orange>%d gi�y <color> kh�ng th� k�ch ho�t n�a\n",floor(Link(level,SKILLS.em_adskill.autoattackskill[3]) - 3*18*256),floor((Link(level,SKILLS.em_adskill.autoattackskill[3]) / (18*256))))
			end,
		autoattackskill=
		{
			{{1,1234*256 + 1},{20,1234*256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,3*18*256 + 10},{20,3*18*256 + 30}}
		},
							},
	cy_adskill ={ --���̽��׼���
		skill_desc=
			function(level)
				return format("D�ng <color=water>[Dung Tuy�t V� Tung]<color> l�m cho b�n th�n t�ng h�nh, m�i l�n t�ng h�nh duy tr� <color=orange>%d gi�y <color>\n", floor(Link(level,SKILLS.cy_adskill.hide[2]) / 18))
			end,
		autoreplyskill=
		{
			{{1,1235 * 256 + 1},{20,1235 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,20*18*256 + 5},{19,10*18*256 + 10},{20,10*18*256 + 10}}
		},
		hide=
		{
			{{1,2},{20,5}},
			{{1,2*18},{20,5*18}}
		},
								},				
	tr_adskill ={ --���̽��׼���
		autoreplyskill=
		{
			{{1,1236 * 256 + 1},{20,1236 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 1},{19,20*18*256 + 3},{20,20*18*256 + 3}}
		},
								},
	gb_adskill={ --ؤ����׼���
		skill_desc=
			function(level)
				return format("Khi d�ng <color=water>[Thi�n H�nh Kh� C�ng]<color> c� th� n�ng cao[H�n Thi�n Kh� C�ng]t� l� k�ch ho�t <color=orange>%d%%<color>, \n v� b� qua h�a ph�ng c�a ��i ph��ng: <color=orange>%d%% (d��ng) <color>, duy tr� hi�u �ng <color=orange>%d gi�y <color>\n ",floor(Link(level,SKILLS.gb_adskill.enhance_714_auto[1])),floor(Link(level,SKILLS.gb_adskill.anti_fireres_yan_p[1])),floor(Link(level,SKILLS.gb_adskill.enhance_714_auto[2])/18))
				end,
		autoreplyskill=
		{
			{{1,1237 * 256 + 1},{20,1237 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 10},{20,20*18*256 + 10}}
		},
		enhance_714_auto=
		{
			{{1,2},{20,20}},
			{{1,5*18 },{20,15*18}}
		},
		anti_fireres_yan_p=
		{
			{{1,6},{20,20}},
			{{1,5*18 },{20,15*18}}
		},
								},
	wd_adskill ={ --�䵱���׼���
		skill_desc=
			function(level)
				return format("Khi d�ng <color=water>[�m D��ng Kh� Quy�t]<color> c� th� l�m cho <color=orange>%d%%<color> s�t th��ng chuy�n h�a th�nh n�i l�c, duy tr� hi�u �ng <color=orange>%d gi�y <color>\n",floor(Link(level,SKILLS.wd_adskill.damage2addmana_p[1])),floor(Link(level,SKILLS.wd_adskill.damage2addmana_p[2])/18))
				end,
		autoreplyskill=
		{
			{{1,1238 * 256 + 1},{20,1238 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 5},{20,20*18*256 + 5}}
		},
		damage2addmana_p=
		{
			{{1,50},{20,200}},
			{{1,5*18 },{20,15*18}}
		}
								},
	kl_adskill ={ --���ؽ��׼���
		skill_desc=
			function(level)
				return format("Khi d�ng <color=water>[Ti�n Thi�n C��ng Kh�]<color> c� th� n�ng cao?L��ng Nghi Ch�n Kh�]t� l� k�ch ho�t <color=orange>%d%%<color>, \n v� b� qua l�i ph�ng c�a ��i ph��ng: <color=orange>%d%% (d��ng) <color>, duy tr� hi�u �ng <color=orange>%d gi�y <color>\n ",floor(Link(level,SKILLS.kl_adskill.enhance_717_auto[1])), floor(Link(level,SKILLS.kl_adskill.anti_lightingres_yan_p[1])),floor(Link(level,SKILLS.gb_adskill.enhance_714_auto[2])/18))
				end,
		autoreplyskill=
		{
			{{1,1239 * 256 + 1},{20,1239 * 256 + 20}},
			{{1,-1 },{20,-1 }},
			{{1,30*18*256 + 3},{19,20*18*256 + 5},{20,20*18*256 + 5}}
		},
		enhance_717_auto=
		{
			{{1,3},{20,15}},
			{{1,5*18 },{20,15*18}}
		},
		anti_lightingres_yan_p=
		{
			{{1,5},{20,15}},
			{{1,5*18 },{20,15*18}}
		},
								},
}
-----------------------------------------------
--����2���㣬�����κ���f(x)=k*x+b
--y= (y2-y1)*(x-x1)/(x2-x1)+y1
--��x2=x1, ��x=c,��ֱ����һ����ֱ��x���ֱ��
--���ǿ���ȡ��y=����ֵ
--��ˣ������֪����(x1,y1),(x2,y2)����ù���2���
--����Ϊ��
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