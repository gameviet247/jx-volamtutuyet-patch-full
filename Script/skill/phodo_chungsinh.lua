
MESSAGES= "V× c¨n b¶n [%s] cña b¹n qu¸ thÊp, [%s] h¹n chÕ t¨ng cÊp.";

function main()
	local perSkills={{93,"Tõ Hµng Phæ §é "},{89,"Méng §iÖp "},{86,"L­u Thñy "},{92,"PhËt T©m Tõ H÷u"},{282,"Thanh ¢m Ph¹n X­íng"}}
	local mainSkill = {332,"Phæ §é Chóng Sinh "}
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
