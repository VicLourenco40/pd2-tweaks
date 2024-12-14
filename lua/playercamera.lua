Hooks:PostHook(PlayerCamera, "setup_viewport", "setup_viewport_pd2_tweaks_post", function(self)
    if not _G.IS_VR then
        self._shaker:stop(self._shakers.breathing)
    end

    self._shaker:stop(self._shakers.headbob)
end)

Hooks:OverrideFunction(PlayerCamera, "set_shaker_parameter", function() end)

Hooks:OverrideFunction(PlayerCamera, "play_shaker", function() end)
