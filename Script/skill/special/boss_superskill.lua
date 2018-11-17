--越南版十大门派黄金BOSS技能调整
--Creat by LLX 2013-5-12
--Edit  by LLX 2013-6-14
-- a=普点*被动技能普比
-- b=普点*（1+技能普比）*（1+加成）
-- c=技能伤害*（1+加成）
-- d=额外伤害
-- 最终伤害=a+b+c+d

-- 被攻击方为白虎一套锤天
-- 数字为实际伤害
-- 超级亢龙有悔 15957
-- 超级碧海潮生 17948
-- 超级棒打恶狗 22385
-- 超级剑飞惊天 8949+9597+9365=27911
-- 超级乱还击  8040 （裸体 46382）
-- 超级烈火情天 18700


Include("\\script\\skill\\head.lua")
SKILLS={
	boss_duanhun={ --超级断魂刺_BOSS专用，CD20秒
		physicsenhance_p={{{1,25},{20,50000},{21,50000}}},--普攻伤害50000%
		physicsdamage_v={--150000普伤
			[1]={{1,100},{20,150000}},
			[3]={{1,100},{20,150000}}
		},
		seriesdamage_p={{{1,1},{20,80},{21,80}}},--五行相克
		stun_p={{{1,100},{20,100}},{{1,5},{20,36}}},--攻击致昏对手几率
		skill_param1_v={{{1,4},{5,12},{20,24},{28,31},{31,31}}},
		skill_param2_v={{{1,18},{20,1},{21,1}}},
		deadlystrike_p={{{1,4},{20,80}}},--攻击会心一击率
		missle_speed_v={{{1,22},{20,30},{21,32},{22,32}}},
		skill_attackradius={{{1,22*16},{20,30*16},{21,30*16}}},--技能攻击范围
		skill_cost_v={{{1,10},{20,20}}}--生命消耗
	},
	dachengrulaizhou={ --BOSS专用超级大乘如来咒，反弹诅咒80%，触发55级狮子吼100%眩晕1秒
		poisondamagereturn_p={{{1,5}, {15,40}, {20,45}, {21,45}},{{1,-1}, {2,-1}}},--反弹毒伤百分比
		returnskill_p={{{1,5},{15,60},{20,80},{21,80}},{{1,-1},{2,-1}}},--反弹诅咒80%
		autoreplyskill={{{1,20 * 256 + 55},{20,20 * 256 + 55},{21,20*256 + 55}},{{1,-1},{2,-1}},{{1,10*18*256 + 1},{19,4*18*256 + 3},{20,5*18*256 + 3},{21,5*18*256 + 3}}},--3%概率释放55级狮子吼
	},
		liuxing={ --流星乱环击，CD20秒，400码内秒杀伤害
		seriesdamage_p={{{1,5},{20,80}}},--五行相克30%
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
	liuxing_ji={ --流星乱环击子技能
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
	luanhuan_ji={ --超级乱环击，400码范围高伤害，CD20秒
		firedamage_v={--80000火伤
			[1]={{1,100},{20,80000}},
			[3]={{1,100},{20,80000}}
		},
		poisondamage_v={--3000毒伤/次
			[1]={{1,20},{20,3000},{21,3000}},
			[2]={{1,50},{20,250},{21,250}},
			[3]={{1,10},{20,50},{21,50}}
		},
		physicsdamage_v={--50000普伤
			[1]={{1,100},{20,50000}},
			[3]={{1,100},{20,50000}}
		},
		colddamage_v={--80000冰伤
			[1]={{1,100},{20,80000},{21,80000}},
			[2]={{1,1},{20,18}},
			[3]={{1,100},{20,80000},{21,80000}}
		},
		lightingdamage_v={--80000雷伤
			[1]={{1,100},{20,80000},{20,80000}},
			[3]={{1,100},{20,80000},{20,80000}}
		},
		stun_p={{{1,1},{20,20}},{{1,1},{20,20}}},
		skill_cost_v={{{1,60},{20,120}}}
	},
	jianzhong_gu={ --超级无形蛊BOSS用，套用剑冢23号无形蛊代码，伤害光环，范围600码，每半秒100点毒伤
		fastwalkrun_p={{{1,-10},{20,-50},{21,-50}},{{1,18*2},{20,18*2}}},--减速50%
		colddamage_v={--冰伤害1级1-1点，20级100-100点
			[1]={{1,1},{20,100}},
			[3]={{1,1},{20,100}}
		},
		poisondamage_v={{{1,1},{20,100}},{{1,120},{20,120}},{{1,10},{20,10}}},--毒伤害，每秒120次
	},
	kanglong_youhui={ --超级亢龙有悔，高伤害,CD20秒
		seriesdamage_p={{{1,10},{20,80},{21,80}}},--五行相克80%
		firedamage_v={--火攻伤害提升到200000
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
	liehuo_qingtian={ --超级烈火情天，伤害增加，CD20秒
		seriesdamage_p={{{1,5},{20,80}}},--五行相克80%
		physicsenhance_p={{{1,15},{20,20000},{21,20000}}},--普攻伤害75提升到20000%
		firedamage_v={
			[1]={{1,8},{20,150000}},--火攻伤害提升到150000-150000
			[3]={{1,8},{20,150000}}
		},
		missle_speed_v={{{1,24},{20,28}}},
		skill_attackradius={{{1,384},{20,448}}},
		skill_cost_v={{{1,25},{20,25}}}
	},
	qixin_fu={ --超级弃心符，400码范围（missles表中，设置碰撞范围值为8，lifeTime值设为3）100%眩晕
		stun_p={{{1,100},{20,100}},{{1,5},{20,36}}},
		skill_cost_v={{{1,100},{20,100}}}
	},
	luohan_zhen={ --超级罗汉阵NPC共享，反伤50%，BOSS累加15%
		addphysicsdamage_p={{{1,11},{20,135},{21,135}},{{1,18},{2,18}},{{1,6},{2,6}}},--增加普攻伤害20级135%
		meleedamagereturn_p={{{1,15},{19,50},{20,65},{21,65}},{{1,18},{2,18}}},--近身反伤1级15%，19级50%,20级65%
		rangedamagereturn_p={{{1,15},{19,50},{20,65},{21,65}},{{1,18},{2,18}}},--远程反伤1级15%，19级50%,20级65%
		adddefense_v={{{1,40},{20,800},{21,800}},{{1,18},{2,18}}},--闪避率20级增加800点
	},
	-- wudu120={ --超级吸星魇,20级时命中目标有10%的几率使玩家失去所有内力，持续6秒，最小间隔10秒
		-- autoattackskill={{{1,719*256 + 1},{20,719*256 + 20},{21,719*256 + 21}},{{1,-1},{20,-1}},{{1,10*18*256 + 2},{5,10*18*256 + 4},{10,10*18*256 + 6},{15,10*18*256 + 8},{20,10*18*256 + 10},{21,10*18*256 + 10}}},
		-- skill_desc=
			-- function(level)
				-- return "命中目标时有<color=orange>"..floor(Link(level,SKILLS.wudu120.autoattackskill[3]) - 10*18*256).."%<color>的概率使其在受到毒伤害\n"..
				-- "的同时，以<color=orange>"..floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[1])).."%<color>的比例损失内力，"..
				-- "持续<color=orange>"..floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[2]) / 18).."秒<color>\n"..
				-- "该效果触发后<color=orange>"..floor((Link(level,SKILLS.wudu120.autoattackskill[3]) / (18*256))).."秒<color>内不会再次触发"
			-- end,
	-- },
	wudu120={ --超级吸星魇,20级时命中目标有10%的几率使玩家失去所有内力，持续6秒，最小间隔10秒
		autoattackskill={{{1,719*256 + 1},{20,719*256 + 20},{21,719*256 + 21}},{{1,-1},{20,-1}},{{1,10*18*256 + 2},{5,10*18*256 + 4},{10,10*18*256 + 6},{15,10*18*256 + 8},{20,10*18*256 + 10},{21,10*18*256 + 10}}},
		skill_desc=
			function(level)
				return format("命中目标时有<color=orange>%d%%<color>的概率使其在受到毒伤害\n的同时，以<color=orange>%d%%<color>的比例损失内力，持续<color=orange>%d秒<color>\n该效果触发后<color=orange>%d秒<color>内不会再次触发",
				floor(Link(level,SKILLS.wudu120.autoattackskill[3]) - 10*18*256),
				floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[1])),
				floor(Link(level,SKILLS.wudu120zuzhou.poison2decmana_p[2]) / 18),
				floor((Link(level,SKILLS.wudu120.autoattackskill[3]) / (18*256))))
			end,
	},
	wudu120zuzhou={ --超级吸星魇子技能，诅咒.100%使玩家的内力全部消失，20级持续6秒
		poison2decmana_p={{{1,100},{15,100},{20,100},{21,100}},{{1,3*18},{15,5*18},{20,6*18},{21,6*18}}},
	},
	bihai_chaosheng={ --超级碧海潮生，高伤害CD20秒
		seriesdamage_p={{{1,10},{20,80},{21,80}}},--五行相克80%
		physicsdamage_v={
			[1]={{1,200},{20,50000}},--普攻伤害提升到50000%
			[3]={{1,200},{20,50000}},
		},
		colddamage_v={
			[1]={{1,43},{20,200000}},--冰攻伤害提升到200000-200000
			[3]={{1,43},{20,200000}}
		},
		skill_cost_v={{{1,65},{20,65}}}
	},
	bangda_egou={ --超级棒打恶狗，高伤害CD20秒
		physicsenhance_p={{{1,10},{20,50000}}},--普攻提升到50000%
		seriesdamage_p={{{1,10},{20,50},{21,50}}},
		firedamage_v={
			[1]={{1,70},{20,150000}},--火攻提升到150000-200000
			[3]={{1,70},{20,200000}}
		},
		missle_speed_v={{{1,28},{20,32}}},
		skill_attackradius={{{1,448},{20,512}}},
		skill_cost_v={{{1,28},{20,48}}}
	},
	tianren120={ --超级魔音噬魄，600的范围内会把所有的玩家(50个)造成混乱，CD20秒
		skill_cost_v={{{1,25},{20,80},{21,80}}},
		skill_mintimepercastonhorse_v={{{1,45*18},{15,25*18},{20,20*18},{21,20*18}}},
		skill_mintimepercast_v={{{1,45*18},{15,25*18},{20,20*18},{21,20*18}}},
		skill_desc=
			function(level)
				-- return "冷却时间：<color=orange>"..floor(Link(level,SKILLS.tianren120.skill_mintimepercast_v[1]) / 18).."秒<color>\n"..
				-- "骑马施展冷却时间：<color=orange>"..floor(Link(level,SKILLS.tianren120.skill_mintimepercastonhorse_v[1]) / 18).."秒<color>\n"..
				-- "以<color=orange>"..floor(100 -Link(level,SKILLS.quntisuijizoudong.missle_missrate[1])).."%<color>的概率使自身一定范围内最多"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.missle_hitcount[1])).."个敌人恐惧<color=orange>"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.randmove[2]) / 18).."秒<color>\n"..
				-- "死亡后有<color=orange>"..floor(Link(level,SKILLS.tianren120.autodeathskill[3])).."%<color>的概率使自身一定范围内最多"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.missle_hitcount[1])).."个敌人恐惧<color=orange>"..
				-- floor(Link(level,SKILLS.quntisuijizoudong.randmove[2]) / 18).."秒<color>\n"..
				-- "恐惧导致随机走动及攻击操作无效\n"
				return 
				format("冷却时间：<color=orange>%d秒<color>\n骑马施展冷却时间：<color=orange>%d秒<color>\n以<color=orange>%d%%<color>的概率使自身一定范围内最多%d个敌人恐惧<color=orange>%d秒<color>\n",			
				floor(Link(level,SKILLS.tianren120.skill_mintimepercast_v[1]) / 18),
				floor(Link(level,SKILLS.tianren120.skill_mintimepercastonhorse_v[1]) / 18),
				floor(100 -Link(level,SKILLS.quntisuijizoudong.missle_missrate[1])),
				floor(Link(level,SKILLS.quntisuijizoudong.missle_hitcount[1])),
				floor(Link(level,SKILLS.quntisuijizoudong.randmove[2]) / 18))
			end,
	},
	quntisuijizoudong={ --群体随机走动
		randmove={{{1,1},{20,1}},{{1,1*18},{15,2.5*18},{20,3*18},{21,3*18}}},--20级恐惧3秒
		missle_missrate={{{1,65},{15,20},{20,0},{21,0}}},--命中率20级100%
		missle_hitcount={{{1,50},{20,50}}},--范围内50个敌人混乱
	},
	jianfei_jingtian={ --超级剑飞惊天，半径比正常的增加2倍，子弹数量增加，高伤害，CD20秒
		seriesdamage_p={{{1,5},{20,30}}},
		physicsenhance_p={{{1,20},{20,20000}}},--20级普攻伤害提升到20000%
		lightingdamage_v={
			[1]={{1,10},{20,80000}},--20级雷伤下限从24提升为80000
			[3]={{1,10},{20,100000}}--20级雷伤上限从225提升为100000
		},
		skill_attackradius={{{1,384},{20,500}}},--20级射程提高到500
		skill_cost_v={{{1,10},{20,25}}}
	},
	emei120={ --超级闭月拂尘，双倍效果,光环技能。子技能属性添加本技能，无子技能。都按20级数据算
		fastwalkrun_p={{{1,9},{20,125}},{{1,18},{2,18}}}, --移动速度增加125%
		lifereplenish_v={{{1,1},{20,600}},{{1,18},{2,18}}},--每半秒生命回复600
		manareplenish_v={{{1,1},{20,400}},{{1,18},{2,18}}},--每半秒内力回复400
		allres_p={{{1,1},{20,80}},{{1,18},{2,18}}},       --所有抗性增加80%
		--lifemax_p={{{1,30},{20,225}},{{1,18*8},{2,18*8}}},--生命最大值增加225%(去掉增加生命值效果，直接修改NPC血量)
		--lifemax_yan_p={{{1,30},{20,100}},{{1,18*8},{2,18*8}}},--生命最大值增加100%（阳）
		fasthitrecover_v={{{1,1},{20,30}},{{1,18},{2,18}}},--受伤动作时间减少30
		fasthitrecover_yan_v={{{1,1},{20,10}},{{1,18},{2,18}}},--受伤动作时间减少10（阳）
		fatallystrikeres_p={{{1,1},{20,40}},{{1,18},{2,18}}},--致命一击抵抗力增加40%
		-- freezetimereduce_p={{{1,1},{20,60}},{{1,18},{2,18}}},--迟缓时间减少60%
		-- poisontimereduce_p={{{1,1},{20,60}},{{1,18},{2,18}}},--中毒时间减少60%
		-- stuntimereduce_p={{{1,1},{20,60}},{{1,18},{2,18}}},--眩晕时间减少60%
	},
	wudang120={ --超级出淤不染，化解本身受到所有的诅咒，每10秒boss会释放一次，概率100%
		skill_cost_v={{{1,15},{20,50},{21,50}}},
		missle_missrate={{{1,0},{15,0},{20,0},{21,0}}},--100%命中，去负面状态
		ignorenegativestate_p={
			{{1,1},{15,1},{20,1},{21,1}},
			{{1,18},{20,18},{21,18}},
		},
		skill_mintimepercastonhorse_v={{{1,10*18},{15,10*18},{20,10*18},{21,10*18}}},
		skill_mintimepercast_v={{{1,10*18},{15,10*18},{20,10*18},{21,10*18}}},
		skill_desc=
			function(level)
				-- return "冷却时间：<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercast_v[1]) / 18).."秒<color>\n"..--固定10秒冷却
				-- "骑马施展冷却时间：<color=orange>"..floor(Link(level,SKILLS.wudang120.skill_mintimepercastonhorse_v[1]) / 18).."秒<color>\n" ..
				-- "有<color=orange>"..floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])).."%<color>的概率<color>清除周围一定范围内友方玩家的异常状态\n"..
				-- "有<color=orange>"..floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])).."%<color>的概率<color>使自身对各种负面状态和技能免疫，持续<color=orange>"..
				-- floor(Link(level,SKILLS.wudang120.ignorenegativestate_p[2]) / 18).."秒<color>\n"--免疫X秒
				return 
				format("冷却时间：<color=orange>%d秒<color>\n骑马施展冷却时间：<color=orange>%d秒<color>\n有<color=orange>%d%%<color>的概率<color>清除周围一定范围内友方玩家的异常状态\n有<color=orange>%d%%<color>的概率<color>使自身对各种负面状态和技能免疫，持续<color=orange>%d秒<color>\n",
				floor(Link(level,SKILLS.wudang120.skill_mintimepercast_v[1]) / 18),
				floor(Link(level,SKILLS.wudang120.skill_mintimepercastonhorse_v[1]) / 18),
				floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])),
				floor(100 - Link(level,SKILLS.wudang120.missle_missrate[1])),
				floor(Link(level,SKILLS.wudang120.ignorenegativestate_p[2]) / 18))
			end,
	},
	 kunlun120={ --特殊御雪隐，25%自动触发5秒隐身，破隐后攻击技能加成300%，持续5(隐身)+30秒，发动后60秒内不会再次发动（把冷却时间大幅度延长如5分钟内不会再次触发基本能保证BOSS刷新后只触发一次）
		 autorescueskill={{{1,1407*256 + 1},{20,1407*256 + 20},{21,1407*256 + 21}},{{1,-1},{20,-1}},{{1,20*18*256 + 100},{20,60*18*256 + 100},{21,60*18*256 + 100}}},
		 skill_desc=
			 function(level)
				 -- return "生命低于25%的瞬间有<color=orange>"..floor(Link(level,SKILLS.kunlun120.autorescueskill[3]) - 20*18*256).."%<color>的概率触发御雪隐\n"..
				 -- "隐身<color=orange>"..floor(Link(level,SKILLS.cuiyan120.hide[2]) / 18).."秒<color>\n"..
				 -- "并提升技能加成<color=orange>"..floor((Link(level,SKILLS.add_skillgong.skill_enhance[1]))).."%<color>，持续<color=orange>"..
				 -- floor(Link(level,SKILLS.add_skillgong.skill_enhance[2]) / 18).."秒<color>\n"..
				 -- "真气发出后<color=orange>"..floor((Link(level,SKILLS.kunlun120.autorescueskill[3]) / (18*256))).."秒<color>内不会再次触发"
				 return 
				 format("生命低于25%%的瞬间有<color=orange>%d%%<color>的概率触发御雪隐\n隐身<color=orange>%d秒<color>\n并获得技能加成<color=orange>%d%%<color>，持续<color=orange>%d秒<color>\n真气发出后<color=orange>%d秒<color>内不会再次触发",
				 floor(Link(level,SKILLS.kunlun120.autorescueskill[3]) - 20*18*256),
				 floor(Link(level,SKILLS.cuiyan120.hide[2]) / 18),
				 floor((Link(level,SKILLS.add_skillgong.skill_enhance[1]))),
				 floor(Link(level,SKILLS.add_skillgong.skill_enhance[2]) / 18),
				 floor((Link(level,SKILLS.kunlun120.autorescueskill[3]) / (18*256))))
			 end,		
	 },
	cuiyan120={ --特殊御雪隐子技能1，五秒御雪隐
		hide={{{1,1},{20,1}},{{1,5*18},{20,5*18},{21,5*18}}},--隐身5秒（5*18帧）
		autorescueskill={{{1,1408*256 + 1},{20,1408*256 + 20},{21,1408*256 + 21}},{{1,-1},{20,-1}},{{1,20*18*256 + 100},{20,20*18*256 + 100},{21,20*18*256 + 100}}},
	},
	add_skillgong={ --特殊御雪隐子技能2，攻击技能加成，1级10%，20级400%，持续35秒
		skill_enhance={{{1,10},{20,400},{21,400}},{{1,18*35},{2,18*35}}},
	},
}