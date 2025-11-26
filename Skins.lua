--[[

	This file is part of 'Masque: Darion', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_Darion.

	* File...: Skins.lua
	* Authors: StormFX, Darsain

	Darion Skins

]]

local Masque = LibStub("Masque", true)

if not Masque then return end

----------------------------------------
-- Internal
---

local _, Core = ...
local L = Core.Locale

----------------------------------------
-- Locals
---

local API_VERSION = 110207

-- Skin Info
local Version = "@project-version@"
local Websites = {
	"https://github.com/SFX-WoW/Masque_Darion",
	"https://www.curseforge.com/wow/addons/masque-darion",
	"https://addons.wago.io/addons/masque-darion",
	"https://www.wowinterface.com/downloads/info26992",
}

local BASE_PATH = [[Interface\AddOns\Masque_Darion\Textures\Base\]]
local CLEAN_PATH = [[Interface\AddOns\Masque_Darion\Textures\Clean\]]

local OVERLAY = BASE_PATH.."Overlay"
local HIGHLIGHT = BASE_PATH.."Highlight"

----------------------------------------
-- Darion
---

Masque:AddSkin("Darion", {
	API_VERSION = API_VERSION,
	Shape = "Square",

	-- Info
	Authors = {"StormFX", "|cff999999Darsain|r"},
	Description = L["A square shadowed skin."],
	Version = Version,
	Websites = Websites,

	-- Skin
	-- Mask = nil,
	Backdrop = {
		Width = 40,
		Height = 40,
		Color = {0.3, 0.3, 0.3, 1},
		Texture = BASE_PATH.."Backdrop",
	},
	Icon = {
		Width = 34,
		Height = 34,
	},
	SlotIcon = "Icon",
	Cooldown = {
		Width = 34,
		Height = 34,
	},
	Normal = {
		Width = 40,
		Height = 40,
		Color = {0, 0, 0, 1},
		Texture = BASE_PATH.."Normal",
	},
	Pushed = {
		Width = 40,
		Height = 40,
		Color = {1, 1, 1, 1},
		Texture = OVERLAY,
	},
	Flash = {
		Width = 40,
		Height = 40,
		Color = {1, 1, 1, 1},
		Texture = OVERLAY,
	},
	Checked = {
		Width = 40,
		Height = 40,
		BlendMode = "ADD",
		Color = {1, 1, 1, 1},
		Texture = HIGHLIGHT,
	},
	SlotHighlight = "Checked",
	Border = {
		Width = 40,
		Height = 40,
		BlendMode = "BLEND",
		Texture = BASE_PATH.."Border",
	},
	DebuffBorder = "Border",
	EnchantBorder = "Border",
	IconBorder = "Border",
	Gloss = {
		Width = 40,
		Height = 40,
		Texture = BASE_PATH.."Gloss",
	},
	Highlight = {
		Width = 40,
		Height = 40,
		BlendMode = "ADD",
		Texture = HIGHLIGHT,
	},
	AutoCastable = {
		Width = 34,
		Height = 34,
		OffsetX = 0.5,
		OffsetY = -0.5,
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
	},
	AutoCast = {
		Width = 26,
		Height = 26,
		OffsetX = 1,
		OffsetY = -1,
	},
	SpellAlert = {
		Height = 36,
		Width = 36,
		AltGlow = {
			Height = 44,
			Width = 44,
		},
		Classic = {
			Height = 30,
			Width = 30,
		},
		Modern = {
			Height = 30,
			Width = 30,
		},
		["Modern-Lite"] = {
			Height = 31,
			Width = 31,
		},
	},
	AssistedCombatHighlight = {
		Width = 44,
		Height = 44,
	},
	Count = {
		Width = 32,
		Height = 10,
		OffsetX = -4,
		OffsetY = 5,
	},
	HotKey = {
		Width = 32,
		Height = 10,
		OffsetX = 4,
		OffsetY = -6,
	},
	Duration = {
		Width = 32,
		Height = 10,
		OffsetY = -2,
	},
	Name = {
		Width = 32,
		Height = 10,
		OffsetX = 0,
		OffsetY = 5,
	},
})

----------------------------------------
-- Darion Clean
---

Masque:AddSkin("Darion Clean", {
	Template = "Darion",

	Description = L["A square shadowed skin with an icon frame."],

	Normal = {
		Width = 40,
		Height = 40,
		Color = {0.2, 0.2, 0.2, 1},
		Texture = CLEAN_PATH.."Normal",
	},
	Gloss = {
		Width = 40,
		Height = 40,
		Texture = CLEAN_PATH.."Gloss",
	},
})
