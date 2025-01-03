Hooks:PostHook(IngameWaitingForPlayersState, "update", "update_pd2_tweaks_post", function(self)
    if self._skip_promt_shown and not self._skipped then
        local btn_skip_press = self._controller:get_input_bool("confirm")

        if btn_skip_press then
            managers.hud:set_blackscreen_skip_circle(1, 1)
            managers.hud:blackscreen_skip_circle_done()
            self:_skip()
        end
    end
end)
