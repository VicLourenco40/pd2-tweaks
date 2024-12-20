Hooks:PreHook(MenuOptionInitiator, "modify_adv_video", "modify_adv_video_pd2_tweaks_pre", function(self, node)
    local fov_multiplier = node:item("fov_multiplier")

    if fov_multiplier then
        fov_multiplier._max = 2
        fov_multiplier._step = 0.05
        fov_multiplier._show_value = true
        fov_multiplier._show_slider_text = true
        fov_multiplier._decimal_count = 2
    end
end)
