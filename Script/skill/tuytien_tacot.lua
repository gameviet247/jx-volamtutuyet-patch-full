
MESSAGES= "V� c�n b�n [%s] c�a b�n qu� th�p, [%s] h�n ch� t�ng c�p.";

function main()
	local perSkills={{392,"Th�c Ph��c Ch� "},{174,"Ki B�n ph� "},{393,"B�c Minh ��o H�i"},{175,"Khi H�n Ng�o Tuy�t"},{90,"M� Tung �o �nh"}}
	local mainSkill = {394,"T�y Ti�n T� C�t"}
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
