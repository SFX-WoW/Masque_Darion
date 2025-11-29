--[[

	This file is part of 'Masque: Darion', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_Darion.

	* File...: Locales.lua
	* Author.: StormFX

]]

local _, Core = ...

----------------------------------------
-- Locals
---

local Locale = GetLocale()
local L = {}

----------------------------------------
-- Core
---

Core.Locale = setmetatable(L, {
	__index = function(self, k)
		self[k] = k
		return k
	end
})

----------------------------------------
-- Localization
---

if Locale == "enGB" or Locale == "enUS" then
	L["A square shadowed skin with an icon frame."] = "A square shadowed skin with an icon frame."
	L["A square shadowed skin."] = "A square shadowed skin."
	return
--elseif Locale == "deDE" then
--elseif Locale == "esES" or Locale == "esMX" then
--elseif Locale == "frFR" then
--elseif Locale == "itIT" then
--elseif Locale == "koKR" then
--elseif Locale == "ptBR" then
elseif Locale == "ruRU" then
	L["A square shadowed skin with an icon frame."] = "Квадратный затененный скин с рамкой значка."
	L["A square shadowed skin."] = "Квадратный затененный скин."
--elseif Locale == "zhCN" then
-- elseif Locale == "zhTW" then
end
