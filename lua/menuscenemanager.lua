Hooks:PostHook(MenuSceneManager, "setup_camera", "setup_camera_pd2_tweaks_post", function(self)
    self._shaker:stop(1)
end)
