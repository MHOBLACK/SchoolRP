-- Theme colors --
local colors = {}
colors.HUDBgBlack = Color(50, 50, 50, 250)
colors.HealthBar = Color(255, 0, 0, 255)


-- Disable DefaultHUD --
function HideDefaultHUD(name)

    local defaultHUD = {
        "CHudHealth", 
        "CHudBattery", 
        "CHudZoom", 
        "CHudAmmo",
        "CHudCrosshair",
    }

    for key, value in pairs(defaultHUD) do

        if name == value then
            return false
        end

    end

end

hook.Add("HUDShouldDraw", "HideDefaultHUD", HideDefaultHUD)

-- Draw HUD -- 
function DrawHUD()

	local ply = LocalPlayer()

	-- For Admin --
	-- draw.SimpleText("Width : " .. ScrW() .. "px", "Default", 10, 10, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	-- draw.SimpleText("Height : " .. ScrH() .. "px", "Default", 10, 40, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)

	-- Info --
	draw.SimpleText(ply:Name(), "HudDefault", 25, ScrH() - 75, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
	draw.SimpleText("Student", "HudHintTextSmall", 25, ScrH() - 50, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_TOP)
end

hook.Add("HUDPaint", "DrawHUD", DrawHUD)