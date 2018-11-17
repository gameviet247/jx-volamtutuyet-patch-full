-- 越南免费版新PK药技能脚本
-- 作者：llx
-- 时间：2013.09.11  
function GetSkillLevelData(levelname, data, level)
	if (levelname == "fastwalkrun_p") then--移动速度提升20% （流云散）
		return Getfastwalkrun_p()
	end;
	
	if (levelname == "lifemax_yan_v") then--生命值上限提升500（阳）(护心丹)
		return Getlifemax_yan_v()
	end;
	
	if (levelname == "manamax_yan_v") then--内力值上限提升500（阳）(行气散)
		return Getmanamax_yan_v()
	end;	
	
	if (levelname == "adddefense_v") then--闪避增加500点（护气丹）
		return Getadddefense_v()
	end;
	
	if (levelname == "attackratingenhance_v") then--命中增加500点（逍遥散）
		return Getattackratingenhance_v()
	end;
	
	if (levelname == "allres_yan_p") then--全抗提升20%（阳）(护神丹)
		return Getallres_yan_p()
	end;
	
	if (levelname == "attackspeed_yan_v") then--外功攻击速度（阳）提升50% （疾风丹（外））
		return Getattackspeed_yan_v()
	end;
	
	if (levelname == "castspeed_v") then--内功攻击速度提升10%（疾风丹（内））
		return Getcastspeed_v()
	end;
	
	if (levelname == "castspeed_yan_v") then--内功攻击速度（阳）提升10%（疾风丹（内））
		return Getcastspeed_yan_v()
	end;
	
	if (levelname == "addphysicsdamage_v") then--外功攻击力提升100（聚元散（外））
		return Getaddphysicsdamage_v()
	end;
	
	if (levelname == "addcoldmagic_v") then--内功冰攻提升1000（聚元散（内））
		return Getaddcoldmagic_v()
	end;
	if (levelname == "addfiremagic_v") then--内功火攻提升1000（聚元散（内））
		return Getaddfiremagic_v()
	end;
	if (levelname == "addlightingmagic_v") then--内功雷攻提升1000（聚元散（内））
		return Getaddlightingmagic_v()
	end;
	if (levelname == "addpoisonmagic_v") then--内功毒攻提升200（聚元散（内））
		return Getaddpoisonmagic_v()
	end;
	
	if (levelname == "sorbdamage_yan_p") then--抵消伤害50（阳）（凝神散）
		return Getsorbdamage_yan_p()
	end;
	
	if (levelname == "block_rate") then--格挡概率增加2% （护甲丹）
		return Getblock_rate()
	end;
	
	return ""
end;

function Getfastwalkrun_p()
	return Param2String(20,10800,0)
end;

function Getlifemax_yan_v()
	return Param2String(500,10800,0)
end;

function Getmanamax_yan_v()
	return Param2String(500,10800,0)
end;

function Getadddefense_v()
	return Param2String(500,10800,0)
end;

function Getallres_yan_p()
	return Param2String(20,10800,0)
end;

function Getattackratingenhance_v()
	return Param2String(500,10800,0)
end;

function Getattackspeed_yan_v()
	return Param2String(50,10800,0)
end;

function Getcastspeed_v()
	return Param2String(10,10800,0)
end;

function Getcastspeed_yan_v()
	return Param2String(10,10800,0)
end;

function Getaddphysicsdamage_v()
	return Param2String(100,10800,0)
end;


function Getaddcoldmagic_v()
	return Param2String(1000,10800,0)
end;

function Getaddfiremagic_v()
	return Param2String(1000,10800,0)
end;

function Getaddlightingmagic_v()
	return Param2String(1000,10800,0)
end;

function Getaddpoisonmagic_v()
	return Param2String(200,10800,0)
end;

function Getsorbdamage_yan_p()
	return Param2String(50,10800,0)
end;

function Getblock_rate()
	return Param2String(2,10800,0)
end;








function Param2String(Param1, Param2, Param3)
	return Param1..","..Param2..","..Param3
end;
