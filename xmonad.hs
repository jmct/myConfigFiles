import XMonad
import XMonad.StackSet
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Actions.ShowText
import Data.Default (def)
import System.IO

main = do
    --xmproc <- spawnPipe "/usr/bin/xmobar /home/jmct/.xmobarrc"
    xmonad $ defaultConfig
        { layoutHook = avoidStruts $ layoutHook defaultConfig
        -- , logHook = dynamicLogWithPP xmobarPP
        --             { ppOutput = hPutStrLn xmproc
        --             , ppTitle = xmobarColor "grey" "" . shorten 50
        --             }
        -- , handleEventHook = docksEventHook <+> handleEventHook defaultConfig
        , modMask = mod4Mask
        , handleEventHook = handleEventHook defaultConfig <+> handleTimerEvent
        , terminal = "urxvt -e zsh"
        } `additionalKeys` myKeyBindings

myKeyBindings = [((mod4Mask, xK_p), spawn "dmenu_run")
                ,((mod4Mask, xK_Right), getScreenWS >>= \ws -> flashText def 1 ws)]

getScreenWS :: X String
getScreenWS = do
    xstate <- get
    let Workspace ws _ _ = workspace $ current $ windowset xstate
    return $ show ws
