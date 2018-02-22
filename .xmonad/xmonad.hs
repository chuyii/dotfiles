import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.ManageDocks

import XMonad.Hooks.EwmhDesktops

import XMonad.Layout
import XMonad.Layout.Gaps
import XMonad.Layout.ToggleLayouts
import XMonad.Layout.Spacing
import XMonad.Layout.TwoPane
import XMonad.Layout.Simplest
import XMonad.Layout.ResizableTile
import XMonad.Layout.NoBorders
import XMonad.Layout.PerWorkspace

myTerminal   = "xterm"
myModMask    = mod4Mask
myBar        = "xmobar"
myPP = xmobarPP
  { ppOrder           = \(ws:l:t:_)  -> [ws,t]
  , ppCurrent         = xmobarColor "#ff005f"    "black" . \s -> "●"
  , ppUrgent          = xmobarColor "#666666"    "black" . \s -> "●"
  , ppVisible         = xmobarColor "#ff005f"    "black" . \s -> "⦿"
  , ppHidden          = xmobarColor "#666666"    "black" . \s -> "●"
  , ppHiddenNoWindows = xmobarColor "#666666"    "black" . \s -> "○"
  , ppTitle           = xmobarColor "#ff005f"    "black" . shorten 50
  , ppWsSep           = ""
  , ppSep             = "  "
  }
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

gapwidth = 4
gwU = 2
gwD = 1
gwL = 10
gwR = 10

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig

myConfig = defaultConfig
  { terminal           = myTerminal
  , focusedBorderColor = "white"
  , focusFollowsMouse  = False
  , modMask            = myModMask
  , handleEventHook    = fullscreenEventHook
  , layoutHook         = avoidStruts ( toggleLayouts (noBorders Full)
                         $ myLayout
                         )
  } `additionalKeys`
  [ ((0, 0x1008ff13), spawn "amixer -D pulse set Master 5%+")
  , ((0, 0x1008ff11), spawn "amixer -D pulse set Master 5%-")
  , ((0, 0x1008ff12), spawn "amixer -D pulse set Master toggle")
  , ((0, 0x1008ff02), spawn "xbacklight + 10")
  , ((0, 0x1008ff03), spawn "xbacklight - 10")
  ]

myLayout = spacing gapwidth $ gaps [(U, gwU),(D, gwD),(L, gwL),(R, gwR)]
           $ (ResizableTall 1 (1/205) (120/205) [])
             ||| (TwoPane (1/205) (120/205))
             ||| Simplest
