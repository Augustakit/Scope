require("ADS")

Events:Subscribe('Client:UpdateInput', function()
    -- F1: Original
    --[[if InputManager:WentKeyDown(InputDeviceKeys.IDK_F1) then
        currentThermalStyle = "ORIGINAL"
        ApplyThermalStyle(currentThermalStyle)
    end

    -- F2: Iron Red
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F2) then
        currentThermalStyle = "IRON_RED"
        ApplyThermalStyle(currentThermalStyle)
    end

    -- F3: White Phosphor
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F3) then
        currentThermalStyle = "WHITE_PHOSPHOR"
        ApplyThermalStyle(currentThermalStyle)
    end]]

    --Cycle through with F4 key
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F4) then
        local styles = {"ORIGINAL", "IRON_RED", "WHITE_PHOSPHOR"}
        local idx = 1
        for i, v in ipairs(styles) do
            if v == currentStyle then
                idx = i % #styles + 1
                break
            end
        end
        currentStyle = styles[idx]
        ApplyThermalStyle(currentStyle)
    end


end)