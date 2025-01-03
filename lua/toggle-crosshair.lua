local setting = managers.user:get_setting("accessibility_dot")
local new_setting = setting == "off" and "white" or "off"
local message = "Crosshair " .. (new_setting == "off" and "disabled" or "enabled") .. "."

managers.user:set_setting("accessibility_dot", new_setting)
managers.chat:_receive_message(1, "OPTIONS", message, tweak_data.system_chat_color)
