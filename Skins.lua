--[[

	This file is part of 'Masque: Darion', an add-on for World of Warcraft. For bug reports,
	documentation and license information, please visit https://github.com/SFX-WoW/Masque_Darion.

	* File...: Skins.lua
	* Authors: StormFX, Darsain

	Darion Skins

]]

local Masque = LibStub and LibStub("Masque", true)
if not Masque then return end

local _, Core = ...

----------------------------------------
-- Internal
---

local L = Core.Locale

----------------------------------------
-- Locals
---

local API_VERSION = 110208

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

	-- [ Info ]
	Authors = {"StormFX", "|cff999999Darsain|r"},
	Description = L["A square shadowed skin."],
	Discord = "https://discord.gg/7MTWRgDzz8",
	Version = Version,
	Websites = Websites,

	-- [ UI ]
	Group = "Darion",
	Order = 1,

	-- [ Skin ]
	-- Mask = nil,
	Backdrop = {
		Texture = BASE_PATH.."Backdrop",
		Color = {0.3, 0.3, 0.3, 1},
		Width = 40,
		Height = 40,
	},
	Icon = {
		Backpack = [[Interface\Icons\INV_Misc_Bag_08]],
		Width = 34,
		Height = 34,
	},
	-- Shadow = nil,
	Normal = {
		Texture = BASE_PATH.."Normal",
		Color = {0, 0, 0, 1},
		Width = 40,
		Height = 40,
	},
	-- Disabled = Default.Disabled,
	Pushed = {
		Texture = OVERLAY,
		Width = 40,
		Height = 40,
	},
	Flash = {
		Texture = OVERLAY,
		Width = 40,
		Height = 40,
	},
	Checked = {
		Texture = HIGHLIGHT,
		Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		Width = 40,
		Height = 40,
	},
	SlotHighlight = "Checked",
	Border = {
		Texture = BASE_PATH.."Border",
		Width = 40,
		Height = 40,
	},
	DebuffBorder = "Border",
	EnchantBorder = "Border",
	IconBorder = "Border",
	Gloss = {
		Texture = BASE_PATH.."Gloss",
		Width = 40,
		Height = 40,
	},
	-- NewAction = Default.NewAction,
	-- SpellHighlight = Default.SpellHighlight,
	-- IconOverlay = Default.IconOverlay,
	-- IconOverlay2 = Default.IconOverlay2,
	-- NewItem = Default.NewItem,
	-- QuestBorder = Default.QuestBorder,
	-- UpgradeIcon = Default.UpgradeIcon,
	-- ContextOverlay = Default.ContextOverlay,
	-- SearchOverlay = Default.SearchOverlay,
	-- JunkIcon = Default.JunkIcon,
	Duration = {
		OffsetY = -2,
	},
	Name = {
		OffsetY = 3,
	},
	Highlight = {
		Texture = HIGHLIGHT,
		Width = 40,
		Height = 40,
	},
	-- [ TextOverlayContainer (Retail) ]
	Count = {
		OffsetX = -2,
		OffsetY = 2,
	},
	HotKey = {
		OffsetX = -2,
		OffsetY = -2,
	},
	-- [ AutoCastShine (Classic) ]
	AutoCastable = {
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
		Width = 34,
		Height = 34,
		OffsetX = 0.5,
		OffsetY = -0.5,
	},
	AutoCastShine = {
		Width = 26,
		Height = 26,
		OffsetX = 1,
		OffsetY = -1,
	},
	-- [ AutoCastOverlay (Retail) ]
	-- AutoCast_Frame = Default.AutoCast_Frame,
	AutoCast_Shine = {
		Atlas = "UI-HUD-ActionBar-PetAutoCast-Ants",
		Width = 54,
		Height = 54,
	},
	AutoCast_Mask = {
		Texture = [[Interface\AddOns\Masque\Textures\Modern\AutoCast-Mask]],
		Width = 34,
		Height = 34,
	},
	-- AutoCast_Corners = Default.AutoCast_Corners,
	-- [ Cooldowns ]
	Cooldown = {
		Texture = [[Interface\AddOns\Masque\Textures\Modern\Mask]],
		EdgeTexture = [[Interface\AddOns\Masque\Textures\Modern\Edge]],
		Width = 34,
		Height = 34,
		Anchor = "Icon",
	},
	CooldownLoC = "Cooldown",
	ChargeCooldown = "Cooldown",
	-- [ SpellAlerts ]
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
})

----------------------------------------
-- Darion Clean
---

Masque:AddSkin("Darion Clean", {
	-- API_VERSION = Template.API_VERSION,
	-- Shape = Template.Shape,
	Template = "Darion",

	-- [ Info ]
	Description = L["A square shadowed skin with an icon frame."],

	-- [ UI ]
	Order = 2,
	Title = "Clean",

	-- [ Skin ]
	Normal = {
		Texture = CLEAN_PATH.."Normal",
		Color = {0.2, 0.2, 0.2, 1},
		Width = 40,
		Height = 40,
	},
	Gloss = {
		Texture = CLEAN_PATH.."Gloss",
		Width = 40,
		Height = 40,
	},
})
