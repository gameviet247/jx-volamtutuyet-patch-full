--Խ�ϰ�ʮ�����ɻƽ�BOSS���ܵ���
--Creat by LLX 2013-5-12
--Edit  by LLX 2013-6-14
-- a=�յ�*���������ձ�
-- b=�յ�*��1+�����ձȣ�*��1+�ӳɣ�
-- c=�����˺�*��1+�ӳɣ�
-- d=�����˺�
-- �����˺�=a+b+c+d

-- ��������Ϊ�׻�һ�״���
-- ����Ϊʵ���˺�
-- ���������л� 15957
-- �����̺����� 17948
-- ��������� 22385
-- �������ɾ��� 8949+9597+9365=27911
-- �����һ���  8040 ������ 46382��
-- �����һ����� 18700


Include("\\script\\skill\\head.lua")
SKILLS={
	boss_duanhun={ --�����ϻ��_BOSSר�ã�CD20��
		physicsenhance_p={{{1,25},{20,50000},{21,50000}}},--�չ��˺�50000%
		physicsdamage_v={--150000����
			[1]={{1,100},{20,150000}},
			[3]={{1,100},{20,150000}}
		},
		seriesdamage_p={{{1,1},{20,80},{21,80}}},--�������
		stun_p={{{1,100},{20,100}},{{1,5},{20,36}}},--�����»���ּ���
		skill_param1_v={{{1,4},{5,12},{20,24},{28,31},{31,31}}},
		skill_param2_v={{{1,18},{20,1},{21,1}}},
		deadlystrike_p={{{1,4},{20,80}}},--��������һ����
		missle_speed_v={{{1,22},{20,30},{21,32},{22,32}}},
		skill_attackradius={{{1,22*16},{20,30*16},{21,30*16}}},--���ܹ�����Χ
		skill_cost_v={{{1,10},{20,20}}}--��������
	},
	dachengrulaizhou={ --BOSSר�ó�����������䣬��������80%������55��ʨ�Ӻ�100%ѣ��1��
		poisondamagereturn_p={{{1,5}, {15,40}, {20,45}, {21,45}},{{1,-1}, {2,-1}}},--�������˰ٷֱ�
		returnskill_p={{{1,5},{15,60},{20,80},{21,80}},{{1,-1},{2,-1}}},--��������80%
		autoreplyskill={{{1,20 * 256 + 55},{20,20 * 256 + 55},{21,20*256 + 55}},{{1,-1},{2,-1}},{{1,10*18*256 + 1},{19,4*18*256 + 3},{20,5*18*256 + 3},{21,5*18*256 + 3}}},--3%�����ͷ�55��ʨ�Ӻ�
	},
		liuxing={ --�����һ�����CD20�룬400������ɱ�˺�
		seriesdamage_p={{{1,5},{20,80}}},--�������30%
		firedamage_v=
		{
			[1]={{1,100},{20,50000}},
			[3]={{1,100},{20,50000}}
		},
		poisondamage_v=
		{
			[1]={{1,20},{20,1600}},
			[2]={{1,50},{20,1000}},
			[3]={{1,10},{20,20}}
		},
		physicsdamage_v=
		{
			[1]={{1,100},{20,50000}},
			[3]={{1,100},{20,50000}}
		},
		colddamage_v=
		{
			[1]={{1,100},{20,50000}},
			[2]={{1,1},{20,18}},
			[3]={{1,100},{20,50000}}
		},
		lightingdamage_v=
		{
			[1]={{1,100},{20,50000}},
			[3]={{1,100},{20,50000}}
		}
	},
	liuxing_ji={ --�����һ����Ӽ���
		firedamage_v={
			[1]={{1,100},{20,10000}},
			[3]={{1,100},{20,10000}}
		},
		poisondamage_v={
			[1]={{1,20},{20,1000}},
			[2]={{1,50},{20,50}},
			[3]={{1,10},{20,10}}
		},
		physicsdamage_v={
			[1]={{1,100},{20,10000}},
			[3]={{1,100},{20,10000}}
		},
		colddamage_v={
			[1]={{1,100},{20,10000}},
			[2]={{1,1},{20,18}},
			[3]={{1,100},{20,10000}}
		},
		lightingdamage_v={
			[1]={{1,100},{20,10000}},
			[3]={{1,100},{20,10000}}
		},
		stun_p={{{1,1},{20,20}},{{1,1},{20,20}}}
	},
	luanhuan_ji={ --�����һ�����400�뷶Χ���˺���CD20��
		firedamage_v={--80000����
			[1]={{1,100},{20,80000}},
			[3]={{1,100},{20,80000}}
		},
		poisondamage_v={--3000����/��
			[1]={{1,20},{20,3000},{21,3000}},
			[2]={{1,50},{20,250},{21,250}},
			[3]={{1,10},{20,50},{21,50}}
		},
		physicsdamage_v={--50000����
			[1]={{1,100},{20,50000}},
			[3]={{1,100},{20,50000}}
		},
		colddamage_v={--80000����
			[1]={{1,100},{20,80000},{21,80000}},
			[2]={{1,1},{20,18}},
			[3]={{1,100},{20,80000},{21,80000}}
		},
		lightingdamage_v={--80000����
			[1]={{1,100},{20,80000},{20,80000}},
			[3]={{1,100},{20,80000},{20,80000}}
		},
		stun_p={{{1,1},{20,20}},{{1,1},{20,20}}},
		skill_cost_v={{{1,60},{20,120}}}
	},
	jianzhong_gu={ --�������ι�BOSS�ã����ý�ڣ23�����ιƴ��룬�˺��⻷����Χ600�룬ÿ����100�㶾��
		fastwalkrun_p={{{1,-10},{20,-50},{21,-50}},{{1,18*2},{20,18*2}}},--����50%
		colddamage_v={--���˺�1��1-1�㣬20��100-100��
			[1]={{1,1},{20,100}},
			[3]={{1,1},{20,100}}
		},
		poisondamage_v={{{1,1},{20,100}},{{1,120},{20,120}},{{1,10},{20,10}}},--���˺���ÿ��120��
	},
	kanglong_youhui={ --���������лڣ����˺�,CD20��
		seriesdamage_p={{{1,10},{20,80},{21,80}}},--�������80%
		firedamage_v={--���˺�������200000
			[1]={{1,10},{20,200000}},
			[3]={{1,10},{20,200000}}
		},
		skill_misslesform_v={{{1,1},{10,1},{10,2},{20,2}}},
		skill_misslenum_v={{{1,1},{10,1},{20,15},{25,18},{26,18}}},
		skill_param1_v={{{1,0},{10,0},{10,2},{20,2},{21,2}}},
		missle_speed_v={{{1,28},{20,32}}},
		skill_attackradius={{{1,448},{20,512}}},
		skill_cost_v={{{1,10},{20,50}}}
	},
	liehuo_qingtian={ --�����һ����죬�˺����ӣ�CD20��
		seriesdamage_p={{{1,5},{20,80}}},--�������80%
		physicsenhance_p={{{1,15},{20,20000},{21,20000}}},--�չ��˺�75������20000%
		firedamage_v={
			[1]={{1,8},{20,150000}},--���˺�������150000-150000
			[3]={{1,8},{20,150000}}
		},
		missle_speed_v={{{1,24},{20,28}}},
		skill_attackradius={{{1,384},{20,448}}},
		skill_cost_v={{{1,25},{20,25}}}
	},
	qixin_fu={ --�������ķ���400�뷶Χ��missles���У�������ײ��ΧֵΪ8��lifeTimeֵ��Ϊ3��100%ѣ��
		stun_p={{{1,100},{20,100}},{{1,5},{20,36}}},
		skill_cost_v={{{1,100},{20,100}}}
	},
	luohan_zhen={ --�����޺���NPC��������50%��BOSS�ۼ�15%
		addphysicsdamage_p={{{1,11},{20,135},{21,135}},{{1,18},{2,18}},{{1,6},{2,6}}},--�����չ��˺�20��135%
		meleedamagereturn_p={{{1,15},{19,50},{20,65},{21,65}},{{1,18},{2,18}}},--������1��15%��19��50%,20��65%
		rangedamagereturn_p={{{1,15},{19,50},{20,65},{21,65}},{{1,18},{2,18}}},--Զ�̷���1��15%��19��50%,20��65%
		adddefense_v={{{1,40},{20,800},{21,800}},{{1,18},{2,18}}},--������20������800��
	},
	-- wudu120={ --����������,20��ʱ����Ŀ����10%�ļ���ʹ���ʧȥ��������������6�룬��С���10��
		-- autoattackskill={{{1,719*256 + 1},{20,719*256 + 20},{21,719*256 + 21}},{{1,-1},{20,-1}},{{1,10*18*256 + 2},{5,10*18*256 + 4},{10,10*18*256 + 6},{15,10*18*256 + 8},{20,10*18*256 + 10},{21,10*18*256 + 10}}},
		-- skill_desc=
			-- function(level)
				-- return "����Ŀ��ʱ��<color=orange>"..floor(Link(level,SKILLS.wudu120.autoattackskill[3]) - 10*18*256).."%<color>�ĸ���ʹ�����ܵ����˺�\n"..
				-- "��ͬʱ����<color=orange>"..floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[1])).."%<color>�ı�����ʧ������"..
				-- "����<color=orange>"..floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[2]) / 18).."��<color>\n"..
				-- "��Ч��������<color=orange>"..floor((Link(level,SKILLS.wudu120.autoattackskill[3]) / (18*256))).."��<color>�ڲ����ٴδ���"
			-- end,
	-- },
	wudu120={ --����������,20��ʱ����Ŀ����10%�ļ���ʹ���ʧȥ��������������6�룬��С���10��
		autoattackskill={{{1,719*256 + 1},{20,719*256 + 20},{21,719*256 + 21}},{{1,-1},{20,-1}},{{1,10*18*256 + 2},{5,10*18*256 + 4},{10,10*18*256 + 6},{15,10*18*256 + 8},{20,10*18*256 + 10},{21,10*18*256 + 10}}},
		skill_desc=
			function(level)
				return format("����Ŀ��ʱ��<color=orange>%d%%<color>�ĸ���ʹ�����ܵ����˺�\n��ͬʱ����<color=orange>%d%%<color>�ı�����ʧ����������<color=orange>%d��<color>\n��Ч��������<color=orange>%d��<color>�ڲ����ٴδ���",
				floor(Link(level,SKILLS.wudu120.autoattackskill[3]) - 10*18*256),
				floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[1])),
				floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[2]) / 18),
				floor((Link(level,SKILLS.wudu120.autoattackskill[3]) / (18*256))))
			end,
	},
	wudu120zuzhou={ --�����������Ӽ��ܣ�����.100%ʹ��ҵ�����ȫ����ʧ��20������6��
		poison2decmana_p={{{1,100},{15,100},{20,100},{21,100}},{{1,3*18},{15,5*18},{20,6*18},{21,6*18}}},
	},
	bihai_chaosheng={ --�����̺����������˺�CD20��
		seriesdamage_p={{{1,10},{20,80},{21,80}}},--�������80%
		physicsdamage_v={
			[1]={{1,200},{20,50000}},--�չ��˺�������50000%
			[3]={{1,200},{20,50000}},
		},
		colddamage_v={
			[1]={{1,43},{20,200000}},--�����˺�������200000-200000
			[3]={{1,43},{20,200000}}
		},
		skill_cost_v={{{1,65},{20,65}}}
	},
	bangda_egou={ --��������񹷣����˺�CD20��
		physicsenhance_p={{{1,10},{20,50000}}},--�չ�������50000%
		seriesdamage_p={{{1,10},{20,50},{21,50}}},
		firedamage_v={
			[1]={{1,70},{20,150000}},--��������150000-200000
			[3]={{1,70},{20,200000}}
		},
		missle_speed_v={{{1,28},{20,32}}},
		skill_attackradius={{{1,448},{20,512}}},
		skill_cost_v={{{1,28},{20,48}}}
	},
	tianren120={ --����ħ�����ǣ�600�ķ�Χ�ڻ�����е����(50��)��ɻ��ң�CD20��
		skill_cost_v={{{1,25},{20,80},{21,80}}},
		skill_mintimepercastonhorse_v={{{1,45*18},{15,25*18},{20,20*18},{21,20*18}}},
		skill_mintimepercast_v={{{1,45*18},{15,25*18},{20,20*18},{21,20*18}}},
		skill_desc=
			function(level)
				-- return "��ȴʱ�䣺<color=orange>"..floor(Link(level,SKILLS.tianren120.skill_mintimepercast_v[1]) / 18).."��<color>\n"..
				-- "����ʩչ��ȴʱ�䣺<color=orange>"..floor(Link(level,SKILLS.tianren120.skill_mintimepercastonhorse_v[1]) / 18).."��<color>\n"..
				-- "��<color=orange>"..floor(100 -Link(level,SKILLS.quntisuijizoudong.missle_missrate[1])).."%<color>�ĸ���ʹ����һ����Χ�����"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.missle_hitcount[1])).."�����˿־�<color=orange>"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.randmove[2]) / 18).."��<color>\n"..
				-- "��������<color=orange>"..floor(Link(level,SKILLS.tianren120.autodeathskill[3])).."%<color>�ĸ���ʹ����һ����Χ�����"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.missle_hitcount[1])).."�����˿־�<color=orange>"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.randmove[2]) / 18).."��<color>\n"..
				-- "�־嵼������߶�������������Ч\n"
				return 
				format("��ȴʱ�䣺<color=orange>%d��<color>\n����ʩչ��ȴʱ�䣺<color=orange>%d��<color>\n��<color=orange>%d%%<color>�ĸ���ʹ����һ����Χ�����%d�����˿־�<color=orange>%d��<color>\n",			
				floor(Link(level,SKILLS.tianren120.skill_mintimepercast_v[1]) / 18),
				floor(Link(level,SKILLS.tianren120.skill_mintimepercastonhorse_v[1]) / 18),
				floor(100 -Link(level,SKILLS.quntisuijizoudong.missle_missrate[1])),
				floor(Link(level,SKILLS.quntisuijizoudong.missle_hitcount[1])),
				floor(Link(level,SKILLS.quntisuijizoudong.randmove[2]) / 18))
			end,
	},
	quntisuijizoudong={ --Ⱥ������߶�
		randmove={{{1,1},{20,1}},{{1,1*18},{15,2.5*18},{20,3*18},{21,3*18}}},--20���־�3��
		missle_missrate={{{1,65},{15,20},{20,0},{21,0}}},--������20��100%
		missle_hitcount={{{1,50},{20,50}}},--��Χ��50�����˻���
	},
	jianfei_jingtian={ --�������ɾ��죬�뾶������������2�����ӵ��������ӣ����˺���CD20��
		seriesdamage_p={{{1,5},{20,30}}},
		physicsenhance_p={{{1,20},{20,20000}}},--20���չ��˺�������20000%
		lightingdamage_v={
			[1]={{1,10},{20,80000}},--20���������޴�24����Ϊ80000
			[3]={{1,10},{20,100000}}--20���������޴�225����Ϊ100000
		},
		skill_attackradius={{{1,384},{20,500}}},--20�������ߵ�500
		skill_cost_v={{{1,10},{20,25}}}
	},
	emei120={ --�������·�����˫��Ч��,�⻷���ܡ��Ӽ���������ӱ����ܣ����Ӽ��ܡ�����20��������
		fastwalkrun_p={{{1,9},{20,125}},{{1,18},{2,18}}}, --�ƶ��ٶ�����125%
		lifereplenish_v={{{1,1},{20,600}},{{1,18},{2,18}}},--ÿ���������ظ�600
		manareplenish_v={{{1,1},{20,400}},{{1,18},{2,18}}},--ÿ���������ظ�400
		allres_p={{{1,1},{20,80}},{{1,18},{2,18}}},       --���п�������80%
		--lifemax_p={{{1,30},{20,225}},{{1,18*8},{2,18*8}}},--�������ֵ����225%(ȥ����������ֵЧ����ֱ���޸�NPCѪ��)
		--lifemax_yan_p={{{1,30},{20,100}},{{1,18*8},{2,18*8}}},--�������ֵ����100%������
		fasthitrecover_v={{{1,1},{20,30}},{{1,18},{2,18}}},--���˶���ʱ�����30
		fasthitrecover_yan_v={{{1,1},{20,10}},{{1,18},{2,18}}},--���˶���ʱ�����10������
		fatallystrikeres_p={{{1,1},{20,40}},{{1,18},{2,18}}},--����һ���ֿ�������40%
		-- freezetimereduce_p={{{1,1},{20,60}},{{1,18},{2,18}}},--�ٻ�ʱ�����60%
		-- poisontimereduce_p={{{1,1},{20,60}},{{1,18},{2,18}}},--�ж�ʱ�����60%
		-- stuntimereduce_p={{{1,1},{20,60}},{{1,18},{2,18}}},--ѣ��ʱ�����60%
	},
	wudang120={ --�������ٲ�Ⱦ�����Ȿ���ܵ����е����䣬ÿ10��boss���ͷ�һ�Σ�����100%
		skill_cost_v={{{1,15},{20,50},{21,50}}},
		missle_missrate={{{1,0},{15,0},{20,0},{21,0}}},--100%���У�ȥ����״̬
		ignorenegativestate_p={
			{{1,1},{15,1},{20,1},{21,1}},
			{{1,18},{20,18},{21,18}},
		},
		skill_mintimepercastonhorse_v={{{1,10*18},{15,10*18},{20,10*18},{21,10*18}}},
		skill_mintimepercast_v={{{1,10*18},{15,10*18},{20,10*18},{21,10*18}}},
		skill_desc=
			function(level)
				-- return "��ȴʱ�䣺<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercast_v[1]) / 18).."��<color>\n"..--�̶�10����ȴ
				-- "����ʩչ��ȴʱ�䣺<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercastonhorse_v[1]) / 18).."��<color>\n" ..
				-- "��<color=orange>"..floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])).."%<color>�ĸ���<color>�����Χһ����Χ���ѷ���ҵ��쳣״̬\n"..
				-- "��<color=orange>"..floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])).."%<color>�ĸ���<color>ʹ����Ը��ָ���״̬�ͼ������ߣ�����<color=orange>"..
				-- floor(Link(level,SKILLS.wudang120.ignorenegativestate_p[2]) / 18).."��<color>\n"--����X��
				return 
				format("��ȴʱ�䣺<color=orange>%d��<color>\n����ʩչ��ȴʱ�䣺<color=orange>%d��<color>\n��<color=orange>%d%%<color>�ĸ���<color>�����Χһ����Χ���ѷ���ҵ��쳣״̬\n��<color=orange>%d%%<color>�ĸ���<color>ʹ����Ը��ָ���״̬�ͼ������ߣ�����<color=orange>%d��<color>\n",
				floor(Link(level,SKILLS.wudang120.skill_mintimepercast_v[1]) / 18),
				floor(Link(level,SKILLS.wudang120.skill_mintimepercastonhorse_v[1]) / 18),
				floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])),
				floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])),
				floor(Link(level,SKILLS.wudang120.ignorenegativestate_p[2]) / 18))
			end,
	},
	 kunlun120={ --������ѩ����25%�Զ�����5�����������󹥻����ܼӳ�300%������5(����)+30�룬������60���ڲ����ٴη���������ȴʱ�������ӳ���5�����ڲ����ٴδ��������ܱ�֤BOSSˢ�º�ֻ����һ�Σ�
		 autorescueskill={{{1,1407*256 + 1},{20,1407*256 + 20},{21,1407*256 + 21}},{{1,-1},{20,-1}},{{1,20*18*256 + 100},{20,60*18*256 + 100},{21,60*18*256 + 100}}},
		 skill_desc=
			 function(level)
				 -- return "��������25%��˲����<color=orange>"..floor(Link(level,SKILLS.kunlun120.autorescueskill[3]) - 20*18*256).."%<color>�ĸ��ʴ�����ѩ��\n"..
				 -- "����<color=orange>"..floor(Link(level,SKILLS.cuiyan120.hide[2]) / 18).."��<color>\n"..
				 -- "���������ܼӳ�<color=orange>"..floor((Link(level,SKILLS.add_skillgong.skill_enhance[1]))).."%<color>������<color=orange>"..
				 -- floor(Link(level,SKILLS.add_skillgong.skill_enhance[2]) / 18).."��<color>\n"..
				 -- "����������<color=orange>"..floor((Link(level,SKILLS.kunlun120.autorescueskill[3]) / (18*256))).."��<color>�ڲ����ٴδ���"
				 return 
				 format("��������25%%��˲����<color=orange>%d%%<color>�ĸ��ʴ�����ѩ��\n����<color=orange>%d��<color>\n����ü��ܼӳ�<color=orange>%d%%<color>������<color=orange>%d��<color>\n����������<color=orange>%d��<color>�ڲ����ٴδ���",
				 floor(Link(level,SKILLS.kunlun120.autorescueskill[3]) - 20*18*256),
				 floor(Link(level,SKILLS.cuiyan120.hide[2]) / 18),
				 floor((Link(level,SKILLS.add_skillgong.skill_enhance[1]))),
				 floor(Link(level,SKILLS.add_skillgong.skill_enhance[2]) / 18),
				 floor((Link(level,SKILLS.kunlun120.autorescueskill[3]) / (18*256))))
			 end,		
	 },
	cuiyan120={ --������ѩ���Ӽ���1��������ѩ��
		hide={{{1,1},{20,1}},{{1,5*18},{20,5*18},{21,5*18}}},--����5�루5*18֡��
		autorescueskill={{{1,1408*256 + 1},{20,1408*256 + 20},{21,1408*256 + 21}},{{1,-1},{20,-1}},{{1,20*18*256 + 100},{20,20*18*256 + 100},{21,20*18*256 + 100}}},
	},
	add_skillgong={ --������ѩ���Ӽ���2���������ܼӳɣ�1��10%��20��400%������35��
		skill_enhance={{{1,10},{20,400},{21,400}},{{1,18*35},{2,18*35}}},
	},
}