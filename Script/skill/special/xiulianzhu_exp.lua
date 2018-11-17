function GetSkillLevelData(levelname, data, level)

if (levelname == "exp_enhance1_p") then
	return Param2String(300,64800,0)
end;
if (levelname == "lucky_v") then
	return Param2String(30,64800,0)
end;

str1 = ""
return str1
end;

function Param2String(Param1, Param2, Param3)
return Param1..","..Param2..","..Param3
end;
