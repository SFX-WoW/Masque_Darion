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
		-- TexCoords = {0, 1, 0, 1},
		Color = {0.3, 0.3, 0.3, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "BACKGROUND",
		-- DrawLevel = -1,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- UseColor = nil,
		-- SetAllPoints = nil,
	},
	Icon = {
		Texture = [[Interface\Icons\INV_Misc_Bag_08]], -- SlotIcon
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1}, -- SlotIcon
		-- BlendMode = "BLEND", -- SlotIcon
		Width = 34,
		Height = 34,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SlotIcon = "Icon",
	-- Shadow = nil,
	Normal = {
		Texture = BASE_PATH.."Normal",
		-- EmptyTexture = BASE_PATH.."Normal",
		-- TexCoords = {0, 1, 0, 1},
		-- EmptyCoords = {0, 1, 0, 1},
		Color = {0, 0, 0, 1},
		-- EmptyColor = {0, 0, 0, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "ARTWORK",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseStates = true,
	},
	-- Disabled = Default.Disabled,
	Pushed = {
		Texture = OVERLAY,
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		-- DrawLayer = "ARTWORK",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseColor = nil,
	},
	Flash = {
		Texture = OVERLAY,
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		-- DrawLayer = "ARTWORK",
		-- DrawLevel = 1,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseColor = nil,
	},
	Checked = {
		Texture = HIGHLIGHT,
		-- TexCoords = {0, 1, 0, 1},
		Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		-- DrawLayer = "OVERLAY",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	SlotHighlight = "Checked",
	Border = {
		Texture = BASE_PATH.."Border",
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "BLEND",
		-- DrawLayer = "OVERLAY",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	DebuffBorder = "Border",
	EnchantBorder = "Border",
	IconBorder = "Border",
	Gloss = {
		Texture = BASE_PATH.."Gloss",
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "OVERLAY",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	-- NewAction = Default.NewAction,
	-- SpellHighlight = Default.SpellHighlight,
	-- UpgradeIcon = Default.UpgradeIcon,
	-- IconOverlay = Default.IconOverlay,
	-- IconOverlay2 = Default.IconOverlay2,
	-- NewItem = Default.NewItem,
	-- QuestBorder = Default.QuestBorder,
	-- ContextOverlay = Default.ContextOverlay,
	-- SearchOverlay = Default.SearchOverlay,
	-- JunkIcon = Default.JunkIcon,
	Name = {
		-- JustifyH = "CENTER",
		-- JustifyV = "BOTTOM",
		-- DrawLayer = "OVERLAY",
		-- Width = 36,
		-- Height = 0,
		-- Point = "BOTTOM",
		-- RelPoint = "BOTTOM",
		-- OffsetX = 0,
		OffsetY = 3,
	},
	Duration = {
		-- JustifyH = "CENTER",
		-- JustifyV = "TOP",
		-- DrawLayer = "OVERLAY",
		-- Width = 36,
		-- Height = 0,
		-- Point = "TOP",
		-- RelPoint = "BOTTOM",
		-- OffsetX = 0,
		OffsetY = -2,
	},
	Highlight = {
		Texture = HIGHLIGHT,
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		BlendMode = "ADD",
		-- DrawLayer = "HIGHLIGHT",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseColor = nil,
	},
	-- [ TextOverlayContainer (Retail) ]
	HotKey = {
		-- JustifyH = "RIGHT",
		-- JustifyV = "TOP",
		-- DrawLayer = "OVERLAY",
		-- Width = 32,
		-- Height = 10,
		-- Point = "TOPRIGHT",
		-- RelPoint = "TOPRIGHT",
		OffsetX = -2,
		OffsetY = -2,
	},
	Count = {
		-- JustifyH = "RIGHT",
		-- JustifyV = "BOTTOM",
		-- DrawLayer = "OVERLAY",
		-- Width = 0,
		-- Height = 0,
		-- Point = "BOTTOMRIGHT",
		-- RelPoint = "BOTTOMRIGHT",
		OffsetX = -2,
		OffsetY = 2,
	},
	-- [ AutoCastShine (Classic) ]
	AutoCastable = {
		Texture = [[Interface\Buttons\UI-AutoCastableOverlay]],
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "OVERLAY",
		-- DrawLevel = 1,
		Width = 34,
		Height = 34,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		OffsetX = 0.5,
		OffsetY = -0.5,
		-- SetAllPoints = nil,
	},
	AutoCastShine = {
		Width = 26,
		Height = 26,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		OffsetX = 1,
		OffsetY = -1,
		-- SetAllPoints = nil,
	},
	-- [ AutoCastOverlay (Retail) ]
	-- AutoCast_Frame = Default.AutoCast_Frame,
	AutoCast_Shine = {
		Atlas = "UI-HUD-ActionBar-PetAutoCast-Ants",
		-- UseAtlasSize = false,
		-- Color = {1, 1, 1, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "OVERLAY",
		-- DrawLevel = 0,
		Width = 54,
		Height = 54,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	AutoCast_Mask = {
		-- Atlas = "UI-HUD-ActionBar-PetAutoCast-Mask",
		-- UseAtlasSize = false,
		Texture = [[Interface\AddOns\Masque\Textures\Modern\AutoCast-Mask]],
		-- TexCoords = {0, 1, 0, 1},
		Width = 34,
		Height = 34,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	-- AutoCast_Corners = Default.AutoCast_Corners,
	-- [ Cooldowns ]
	Cooldown = {
		Texture = [[Interface\AddOns\Masque\Textures\Modern\Mask]],
		EdgeTexture = [[Interface\AddOns\Masque\Textures\Modern\Edge]],
		-- PulseTexture = [[Interface\Cooldown\star4]],
		-- Color = {0, 0, 0, 0.8},
		Width = 34,
		Height = 34,
		Anchor = "Icon",
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
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
	-- Authors = Template.Authors,
	Description = L["A square shadowed skin with an icon frame."],
	-- Discord = Template.Discord,
	-- Version = Template.Version,
	-- Websites = Template.Websites,

	-- [ UI ]
	-- Group = Template.Group,
	Order = 2,
	Title = "Clean",

	-- [ Skin ]
	-- Mask = Template.Mask,
	-- Backdrop = Template.Backdrop,
	-- Icon = Template.Icon,
	-- SlotIcon = Template.SlotIcon,
	-- Shadow = Template.Shadow,
	Normal = {
		Texture = CLEAN_PATH.."Normal",
		-- EmptyTexture = BASE_PATH.."Normal",
		-- TexCoords = {0, 1, 0, 1},
		-- EmptyCoords = {0, 1, 0, 1},
		Color = {0.2, 0.2, 0.2, 1},
		-- EmptyColor = {0, 0, 0, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "ARTWORK",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
		-- UseStates = true,
	},
	-- Disabled = Template.Disabled,
	-- Pushed = Template.Pushed,
	-- Flash = Template.Flash,
	-- Checked = Template.Checked,
	-- SlotHighlight = Template.SlotHighlight,
	-- Border = Template.Border,
	-- DebuffBorder = Template.DebuffBorder,
	-- EnchantBorder = Template.EnchantBorder,
	-- IconBorder = Template.IconBorder,
	Gloss = {
		Texture = CLEAN_PATH.."Gloss",
		-- TexCoords = {0, 1, 0, 1},
		-- Color = {1, 1, 1, 1},
		-- BlendMode = "BLEND",
		-- DrawLayer = "OVERLAY",
		-- DrawLevel = 0,
		Width = 40,
		Height = 40,
		-- Point = "CENTER",
		-- RelPoint = "CENTER",
		-- OffsetX = 0,
		-- OffsetY = 0,
		-- SetAllPoints = nil,
	},
	-- NewAction = Template.NewAction,
	-- SpellHighlight = Template.SpellHighlight,
	-- UpgradeIcon = Template.UpgradeIcon,
	-- IconOverlay = Template.IconOverlay,
	-- IconOverlay2 = Template.IconOverlay2,
	-- NewItem = Template.NewItem,
	-- QuestBorder = Template.QuestBorder,
	-- ContextOverlay = Template.ContextOverlay,
	-- SearchOverlay = Template.SearchOverlay,
	-- JunkIcon = Template.JunkIcon,
	-- Name = Template.Name,
	-- Duration = Template.Duration,
	-- Highlight = Template.Highlight,
	-- HotKey = Template.HotKey,
	-- Count = Template.Count,
	-- AutoCastable = Template.AutoCastable,
	-- AutoCastShine = Template.AutoCastShine,
	-- AutoCast_Frame = Template.AutoCast_Frame,
	-- AutoCast_Mask = Template.AutoCast_Mask,
	-- AutoCast_Shine = Template.AutoCast_Shine,
	-- AutoCast_Corners = Template.AutoCast_Corners,
	-- Cooldown = Template.Cooldown,
	-- ChargeCooldown = Template.ChargeCooldown,
	-- SpellAlert = Template.SpellAlert,
	-- AssistedCombatHighlight = Template.AssistedCombatHighlight,
})
