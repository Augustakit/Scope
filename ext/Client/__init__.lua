require("ADS")

Events:Subscribe('Client:UpdateInput', function()
    -- F1: 原始
    --[[if InputManager:WentKeyDown(InputDeviceKeys.IDK_F1) then
        currentThermalStyle = "ORIGINAL"
        ApplyThermalStyle(currentThermalStyle)
    end

    -- F2: 铁红色
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F2) then
        currentThermalStyle = "IRON_RED"
        ApplyThermalStyle(currentThermalStyle)
    end

    -- F3: 白磷管
    if InputManager:WentKeyDown(InputDeviceKeys.IDK_F3) then
        currentThermalStyle = "WHITE_PHOSPHOR"
        ApplyThermalStyle(currentThermalStyle)
    end]]

    --按F4键位循环
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


