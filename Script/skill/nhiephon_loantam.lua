
MESSAGES= "V� c�n b�n [%s] c�a b�n qu� th�p, [%s] h�n ch� t�ng c�p.";

function main()
	local perSkills={{136,"H�a Ph�n Li�n Hoa"},{137,"�o �nh Phi H� "},{140,"Phi H�ng V� T�ch "},{364,"Bi T� Thanh Phong "},{143,"L�ch Ma �o�t H�n"}}
	local mainSkill = {391,"Nhi�p H�n Lo�n T�m "}
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
