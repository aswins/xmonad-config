-- This is setup for single 1920x1080 monitors. There will be a trayer
-- instance to the extreme right

Config {
    font = "xft:Meslo LG S DZ for Powerline-9",
    additionalFonts = ["xft:FontAwesome-8"],
    bgColor = "#002b36",
    fgColor = "#657b83",
    position = TopW L 92,
    lowerOnStart = False,
    overrideRedirect = True,
    allDesktops = True,
    alpha = 100,
    commands = [
        Run MultiCpu [
            "-t", "<icon=/home/aswin/.xmonad/icons/cpu.xbm/> <total>",
            "-L","30",
            "-H","60",
            "-h","#dc322f",
            "-l","#CEFFAC",
            "-n","#FFFFCC",
            "-w","3"] 10,
        Run BatteryP ["BAT0", "BAT1"] [
            "-t", "<fc=#b58900><acstatus></fc>"
            , "-L", "20"
            , "-H", "85"
            , "-l", "#dc322f"
            , "-n", "#b58900"
            , "-h", "#b58900"
            , "--" -- battery specific options
            -- discharging status
            , "-o"  , "<fn=1>\xf242</fn> <left>% (<timeleft>)"
            -- AC "on" status
            , "-O"  , "<fn=1>\xf1e6</fn> <left>%"
            -- charged status
            , "-i"  , "<fn=1>\xf1e6</fn> <left>%"
            , "--off-icon-pattern", "<fn=1>\xf1e6</fn>"
            , "--on-icon-pattern", "<fn=1>\xf1e6</fn>"
            ] 10,
        Run Memory ["-t","<icon=/home/aswin/.xmonad/icons/mem.xbm/> <usedratio>",
            "-p", "2",
            "-H","4096",
            "-L","2048",
            "-h","#dc322f",
            "-l","#CEFFAC",
            "-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%",
            "-H","1024",
            "-L","512",
            "-h","#FFB6B0",
            "-l","#CEFFAC",
            "-n","#FFFFCC"] 10,
        Run Wireless "wlp4s0"
            [ "-a", "l"
            , "-x", "-"
            , "-t", "<fc=#6c71c4><fn=1>\xf1eb</fn><quality></fc>"
            , "-L", "50"
            , "-H", "75"
            -- , "-l", "#dc322f" -- red
            , "-l", "#6c71c4" -- violet
            , "-n", "#6c71c4" -- violet
            , "-h", "#6c71c4" -- violet
            ] 100,
        Run Volume "default" "Master"
            [ "-t", "<status>", "--"
            , "--on", "<fc=#859900><fn=1>\xf028</fn> <volume>%</fc>"
            , "--onc", "#859900"
            , "--off", "<fc=#dc322f><fn=1>\xf026</fn> MUTE</fc>"
            , "--offc", "#dc322f"
            ] 1,
        Run Network "wlp4s0" ["-t","<fn=1>\xf063</fn> <rx> <fn=1>\xf062</fn> <tx>",
            "-H","1000",
            "-L","100",
            "-h","red",
            "-l","green",
            "-n","blue"] 10,
        Run Date "<fc=#268bd2><fn=1>\xf073</fn> %a %_d %b </fc><fc=#2AA198><fn=1></fn> %H:%M</fc>" "date" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% } { %multicpu%   %memory%   %swap%  <action=`/home/aswin/.xmonad/bin/display-battery` button=1> %battery% </action> %wlp4s0wi% %wlp4s0% %default:Master%  <fc=#FFFFCC>%date% </fc>"
}
