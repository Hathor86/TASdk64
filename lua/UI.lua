local Addr = {}

local grenade = 0

Addr["grenade"] = 0x7FCC46

function UI()
	
	grenade = memory.readbyte(Addr["grenade"])
	
	gui.drawText(0, 60, string.format("Grenade count: %d", grenade))
	
end

while true do
	
	UI()
	
	emu.frameadvance()
end