Hooks:PostHook(EnemyManager, 'init', 'init_pd2_tweaks_post', function(self)
    self._MAX_MAGAZINES = 0
    self._MAX_NR_SHIELDS = 0
    self._MAX_NR_CORPSES = 0
end)
