Hooks:PostHook(HUDManager, "_create_accessibility", "_create_accessibility_pd2_tweaks_post", function(self, hud)
    local accessibility_dot = hud.panel:child("accessibility_dot")
    local crosshair_color = managers.user:get_setting("accessibility_dot")
    local crosshair_panel = Overlay:newgui():create_screen_workspace():panel()
    local crosshair = crosshair_panel:bitmap({
        texture = "guis/textures/pd2/crosshair_dot",
        name = "accessibility_dot",
        w = 4,
        h = 4,
        layer = 0
    })
    self._crosshair = crosshair

    crosshair:set_center(crosshair_panel:w() / 2, crosshair_panel:h() / 2)
    crosshair:set_color(self:get_dot_color(crosshair_color))
    crosshair:set_visible(self._accessibility_dot_enabled)

    accessibility_dot:set_visible(false)
end)

Hooks:PostHook(HUDManager, "set_accessibility_dot_visible", "set_accessibility_dot_visible_pd2_tweaks_post", function(self, visible, color_name)
    local accessibility_dot = self:script(PlayerBase.PLAYER_INFO_HUD_PD2).panel:child("accessibility_dot")
    local crosshair = self._crosshair
    local visible = self._accessibility_dot_enabled and visible

    if crosshair then
        crosshair:set_visible(visible)

        if color_name then
            crosshair:set_color(self:get_dot_color(color_name))
        end
    end

    if accessibility_dot then
        accessibility_dot:set_visible(false)
    end
end)
