
MESSAGES= "V× c¨n b¶n [%s] cña b¹n qu¸ thÊp, [%s] h¹n chÕ t¨ng cÊp.";

function main()
	local perSkills={{136,"Háa PhÇn Liªn Hoa"},{137,"¶o ¶nh Phi Hå "},{140,"Phi Hång V« TÝch "},{364,"Bi T« Thanh Phong "},{143,"LÞch Ma §o¹t Hån"}}
	local mainSkill = {391,"NhiÕp Hån Lo¹n T©m "}
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
