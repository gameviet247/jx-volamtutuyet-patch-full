
MESSAGES= "V× c¨n b¶n [%s] cña b¹n qu¸ thÊp, [%s] h¹n chÕ t¨ng cÊp.";

function main()
	local perSkills={{67,"Cöu Thiªn Cuång L«i "},{70,"XÝch DiÖm Thùc Thiªn"},{64,"B¨ng Lam HuyÒn Tinh"},{356,"Xuyªn Y Ph¸ Gi¸p "},{72,"Xuyªn T©m §éc ThÝch"}}
	local mainSkill = {390,"§o¹n C©n Hñ Cèt "}
	local mainlevel = GetMagicLevel(mainSkill[1]);
	if(mainlevel < 0) then
	return end;
	if(mainlevel >= 16) then
	IncSkill(mainSkill[1],1)
	return end;
	local Level	=	{
		GetMagicLevel(perSkills[1][1]),
		GetMagicLevel(perSkills[2][1]),
		GetMagicLevel(perSkills[3][1]),
		GetMagicLevel(perSkills[4][1]),
		GetMagicLevel(perSkills[5][1]) 
		}
	local nNeedLv = mainlevel + 5;
	for i=1,getn(perSkills) do
		if (Level[i] < nNeedLv) then
			Msg2Player(format(MESSAGES,perSkills[i][2],mainSkill[2]))
		return end
	end
	IncSkill(mainSkill[1],1)
end
