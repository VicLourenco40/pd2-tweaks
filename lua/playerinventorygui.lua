Hooks:OverrideFunction(PlayerInventoryGui, "_update_info_infamy", function(self)
    local rank = managers.infamy:points()
    local text_string = managers.localization:to_upper_text("menu_infamy_rank", {
        rank = tostring(managers.experience:current_rank())
    }) .. "\n"

    text_string = text_string .. "\n" .. managers.localization:to_upper_text("menu_infamy_total_xp", {
        xpboost = string.format("%0.1f", (managers.player:get_infamy_exp_multiplier() - 1) * 100)
    }) .. "\n\n" .. managers.localization:text("menu_infamy_help")

    self:set_info_text(text_string)
end)

Hooks:PreHook(PlayerInventoryGui, "create_box", "create_box_pd2_tweaks_pre", function(self, params)
    if params.name == "infamy" then
        params.alpha = 1
        params.clbks = {
            down = false,
            up = false,
            right = false,
            left = callback(self, self, "open_infamy_menu")
        }
    end
end)
