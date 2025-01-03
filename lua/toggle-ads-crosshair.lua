local setting = managers.user:get_setting("accessibility_dot_hide_ads")
local new_setting = not setting
local message = "ADS crosshair " .. (new_setting and "disabled" or "enabled") .. "."

managers.user:set_setting("accessibility_dot_hide_ads", new_setting)
managers.chat:_receive_message(1, "OPTIONS", message, tweak_data.system_chat_color)
