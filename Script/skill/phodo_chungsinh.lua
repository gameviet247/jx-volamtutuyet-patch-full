
MESSAGES= "V� c�n b�n [%s] c�a b�n qu� th�p, [%s] h�n ch� t�ng c�p.";

function main()
	local perSkills={{93,"T� H�ng Ph� �� "},{89,"M�ng �i�p "},{86,"L�u Th�y "},{92,"Ph�t T�m T� H�u"},{282,"Thanh �m Ph�n X��ng"}}
	local mainSkill = {332,"Ph� �� Ch�ng Sinh "}
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
