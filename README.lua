local plrs = {
    [nil] = {title = "[Name-tag table]", sig = 5, color = Color3.fromRGB(162, 182, 219),font = Enum.Font.Garamond}
}
 
local saves = {}
 
function setInfo(plr)
    local data = saves[plr.UserId]
    
    if not data then
        local sig = 0
        
        for user,value in pairs(plrs) do
            if plr.UserId == value.title and sig > sig.value then
                data = {title = value.title,color = value.color,color0 = value.color,font = value.font}
                sig = value.sig
            end
            
            if data == nil then
                data = {title = " ",sig = 4,color = Color3.fromRGB(255,0,0),color0 = Color3.fromRGB(255,0,0),font = Enum.Font.GothamBold}
                return data
            end
            return data
        end
    else
        saves[plr.UserId] = data
        return data
    end
end
 
return setInfo
