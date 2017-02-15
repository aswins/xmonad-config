-- This is setup for single 1920x1080 monitors. There will be a trayer
-- instance to the extreme right

Config {
    font = "xft:Meslo LG S DZ for Powerline-9",
    additionalFonts = ["xft:FontAwesome-8"],
    bgColor = "#282828",
    fgColor = "#ebdbb2",
    position = TopW L 92,
    lowerOnStart = False,
    commands = [
        Run MultiCpu [
            "-t", "Cpu: <total>",
            "-L","30",
            "-H","60",
            "-h","#FFB6B0",
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
        Run Memory ["-t","<usedvbar>",
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
        Run Network "wlp4s0" ["-t","<rx>, <tx>",
            "-H","200",
            "-L","10",
            "-h","#FFB6B0",
            "-l","#CEFFAC",
            "-n","#FFFFCC"] 10,
        Run Date "<fc=#268bd2><fn=1>\xf073</fn> %a %_d %b </fc><fc=#2AA198><fn=1></fn> %H:%M</fc>" "date" 10,
        Run Com "/home/aswin/bin/volume.sh" [] "myVolume" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% } { %multicpu%   %memory%   %swap%   %battery% Vol: %myVolume%  %wlp4s0wi% %wlp4s0%  <fc=#FFFFCC>%date% </fc>"
}
