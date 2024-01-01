# Hammerspoon

To run a scipt in hammerspoon.

Open config -> type code in init.lua -> Reload config

## Hello World

```lua
hs.hotkey.bind({"cmd","alt"}, "W", 
function()
 hs.alert.show("Hello,World")
end
)
```

- What happens if I make an error?
Lua compiler checks in and error gets displayed on console.

- What if I make keybindings conflicting in macOS?
It overrides macOS binding. Its quite a powerful software.

```lua
hs.hotkey.bind({"cmd","ctrl"}, "q", 
function()
 hs.alert.show("Hello,World!!")
end
)
```

## Spoons

Later

## Tiling windows

```lua
--resize current window to left half of screeen
hs.hotkey.bind({"cmd", "shift"}, "left", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y
    f.w = max.w/2
    f.h = max.h
    win:setFrame(f)
  end)

--resize current window to left half of screeen
  hs.hotkey.bind({"cmd", "shift"}, "right", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
  end)

  --resize current window to left half of screeen
hs.hotkey.bind({"cmd", "shift"}, "down", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()
  
    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
  end)

  --move window between screens
hs.hotkey.bind({'cmd', 'shift'}, 'up', function()
    local win = hs.window.focusedWindow()
    local screen = win:screen()
    win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
  end)
```
