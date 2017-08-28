local ChatHUD = EasyChat.ChatHUD

ChatHUD.AddTag("color",function(r,g,b)
    local r = r and tonumber(r) or 0
    local g = g and tonumber(g) or 0
    local b = b and tonumber(b) or 0

    ChatHUD.InsertColorChange(r,g,b,255)
end)

ChatHUD.AddTag("font",function(font)
    if not font then return end

    ChatHUD.InsertFontChange(font,ChatHUD.CurrentSize)
end)

ChatHUD.AddTag("size",function(size)
    local size = size and tonumber(size) or 1

    size = math.Clamp(size,-5,5)
    local mat = Matrix()
    mat:Scale(Vector(1,1,1)*size)
    ChatHUD.PushMatrix(mat)
end)