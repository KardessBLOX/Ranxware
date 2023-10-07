local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Window = OrionLib:MakeWindow({Name = "KardessBLOX Lunar Vape", HidePremium = false, SaveConfig = true, IntroText = "👾Lunar Vape", ConfigFolder = "KardessLunarVape"})

OrionLib:MakeNotification({
	Name = "KardessBLOX Lunar Vape",
	Content = "Selam, Lunar Vape'e erişmek için anahtar sistemini yapmalısın, "..Player.Name.." ",
	Image = "rbxassetid://14612515786",
	Time = 5
})


_G.Key = "KardessLunarVape"
_G.KeyInput = "string"

function MakeScriptHub()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua", true))()
  OrionLib:Destroy()
end

function CorrectKeyNotification()
OrionLib:MakeNotification({
	Name = "KardessBLOX Anahtar",
	Content = "Doğru Anahtar , Lunar Vape yükleniyor.",
	Image = "",
	Time = 5
})
end

function IncorrectKeyNotification()
OrionLib:MakeNotification({
	Name = "KardessBLOX Anahtar",
	Content = "Yanlış anahtar , almak için Anahtar Al'a tıklayın",
	Image = "",
	Time = 5
})
end

local KeySystemTab = Window:MakeTab({
	Name = "Anahtar Sistemi",
	Icon = "rbxassetid://14612515786",
	PremiumOnly = false
})

KeySystemTab:AddTextbox({
	Name = "Anahtarı Gir",
	Default = "",
	TextDisappear = false,
	Callback = function(Value)
		_G.KeyInput = Value
	end	  
})

KeySystemTab:AddButton({
	Name = "Anahtarı Kontrol Et",
	Callback = function()
      	if _G.KeyInput == _G.Key then
        CorrectKeyNotification()
        MakeScriptHub()
      else
        IncorrectKeyNotification()
      end
  	end    
})

KeySystemTab:AddButton({
	Name = "Anahtarı Al",
	Callback = function()
OrionLib:MakeNotification({
	Name = "Kopyalandı.",
	Content = "Bir tane tarayıcıya yapıştırın.",
	Image = "rbxassetid://14958964313",
	Time = 5
})

      setclipboard("https://rekonise.com/lunar-vape-c89nh")
  	end    
})

OrionLib:Init()
