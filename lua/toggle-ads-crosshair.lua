local setting = managers.user:get_setting("accessibility_dot_hide_ads")
local message = "ADS crosshair " .. (setting and "enabled" or "disabled") .. "."

managers.user:set_setting("accessibility_dot_hide_ads", not setting)
managers.chat:_receive_message(1, "OPTIONS", message, tweak_data.system_chat_color)
