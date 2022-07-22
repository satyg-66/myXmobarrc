--
-- Config made by Jonas "Satyg" Ingemarsson - based on research and sample configs on internet.
-- Github: https://github.com/satyg-66
--
-- My colors are based on Dracula theme
-- *iconRoot is set for future purpose where I will add a logo, and the directory needs to be created manually. (Hence, it need to be xpm format)
--
--
--


Config { font               = "xft:Ubuntu:weight=bold:pixelsize=11:antialias=true:hinting=true"
       , additionalFonts    = ["xft:Mononoki Nerd Font:pixelsize=11:antialias=true:hinting=true"
                              , "xft:FontAwesome:pixelsize=13"
                              ]
       , bgColor            = "#282a36"
       , fgColor            = "#f8f8f2"
       , position           = Top
       , lowerOnStart       = True
       , iconRoot           = "$HOME/.xmonad/xpm/" -- default: "."
       , commands           = [ Run Date "<fn=1>\xf133 </fn>  %d %B [%H:%M] " "date" 10
                              , Run Network "enp0s3" ["-t", "<fn=1>\xf0aa </fn>  <rx>kb  <fn=1> \xf0ab </fn>  <tx>kb"] 20
                              , Run Cpu ["-t", "<fn=1>\xf108 </fn>  cpu: (<total>%)", "-H","50","--high","red"] 20
                              , Run Memory ["-t", "<fn=1>\xf233 </fn>  mem: <used>M (<usedratio>%)"] 20
                              , Run DiskU [("/", "<fn=1>\xf0c7 </fn>  hdd: <free> free")] [] 60
                              ]
       , sepChar            = "%"
       , alignSep           = "}{"
       , template           = "}{ <fc=#44475a> | </fc><fc=#6272a4> %disku% </fc><fc=#44475a> | </fc><fc=#6272a4> %memory% </fc><fc=#44475a> | </fc><fc=#6272a4> %cpu% </fc><fc=#44475a> | </fc><fc=#ff79c6> %enp0s3% </fc><fc=#44475a> | </fc><fc=#ffb86c> %date% </fc>"
       }
