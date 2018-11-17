
MESSAGES= "V× c¨n b¶n [%s] cña b¹n qu¸ thÊp, [%s] h¹n chÕ t¨ng cÊp.";

function main()
	local perSkills={{392,"Thóc Ph­îc Chó "},{174,"Ki B¸n phï "},{393,"B¾c Minh §¸o H¶i"},{175,"Khi Hµn Ng¹o TuyÕt"},{90,"Mª Tung ¶o ¶nh"}}
	local mainSkill = {394,"Tóy Tiªn T¸ Cèt"}
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
