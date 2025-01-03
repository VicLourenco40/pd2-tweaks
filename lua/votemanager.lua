Hooks:PostHook(VoteManager, "_restart_counter", "_restart_counter_pd2_tweaks_post", function(self)
    if not self._stopped then
        self._callback_counter = 0
    end
end)
