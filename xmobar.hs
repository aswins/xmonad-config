-- This is setup for single 1920x1080 monitors. There will be a trayer
-- instance to the extreme right

Config {
    font = "xft:Meslo LG S DZ for Powerline-9",
    additionalFonts = ["xft:FontAwesome-8"],
    bgColor = "#282a36",
    fgColor = "#f8f8f2",
    position = Static { xpos = 0, ypos = 0, width = 1820, height = 16 },
    lowerOnStart = False,
    commands = [
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "wlp7s0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run Com "/home/aswin/bin/volume.sh" [] "myVolume" 10,
        Run Com "/home/aswin/bin/current_track.sh" [] "current_track" 10,
        Run CommandReader "/home/aswin/projects/python/pymodoro/pymodoro.py" "pomodoro",
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% }<fn=1> </fn> %current_track% {%pomodoro%  %multicpu%   %memory%   %swap%  Vol: %myVolume% %wlp7s0%   <fc=#FFFFCC>%date% </fc>"
}
