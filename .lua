local notify = {}
local saver = Instance.new("Folder",game.CoreGui)
saver.Name = "Sounds"
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
function PlayNotifySound()
    task.spawn(function()
        Instance.new("Sound",saver).Name = "notif"
        saver.notif.SoundId = "rbxassetid://4590657391"
        saver.notif.Volume = 10
        saver.notif:Play()
    end)
end
function notify.NewNotify(text,time)
Library:Notify(text,time)
PlayNotifySound()
end
return notify
