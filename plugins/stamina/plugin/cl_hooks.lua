--[[
	HL1 RP was developed by Schwarz Kruppzo, if you
    have any questions, please send a message to
    http://steamcommunity.com/id/schwarzkruppzo/.
--]]

function cwStamina:GetBars(bars)
	local stamina = Clockwork.Client:GetSharedVar("Stamina");

	if (!self.stamina) then
		self.stamina = stamina;
	else
		self.stamina = math.Approach(self.stamina, stamina, 1);
	end;

	if (self.stamina < 95) then
		bars:Add("STAMINA", Color(142, 168, 78, 255), L("BarStamina"), self.stamina, 100, self.stamina < 10, 3);
	end;
end;
