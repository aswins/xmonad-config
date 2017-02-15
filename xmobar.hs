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
        Run MultiCpu ["-t","Cpu: <total0> <total1> <total2> <total3>","-L","30","-H","60","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC","-w","3"] 10,
        Run BatteryP ["BAT0", "BAT1"] [
	"-t", "<acstatus>: <left>% - <timeleft>",
	"--",
	"-O", "AC",
	"-O", "Bat",
	"-h", "green",
	"-l", "red"
	] 10,

        Run Memory ["-t","Mem: <usedratio>%","-H","8192","-L","4096","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Swap ["-t","Swap: <usedratio>%","-H","1024","-L","512","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Network "wlp4s0" ["-t","Net: <rx>, <tx>","-H","200","-L","10","-h","#FFB6B0","-l","#CEFFAC","-n","#FFFFCC"] 10,
        Run Date "%a %b %_d %l:%M" "date" 10,
        Run Com "/home/aswin/bin/volume.sh" [] "myVolume" 10,
        Run StdinReader
    ],
    sepChar = "%",
    alignSep = "}{",
    template = "%StdinReader% } { %multicpu%   %memory%   %swap%   %battery% Vol: %myVolume%  %wlp4s0%   <fc=#FFFFCC>%date% </fc>"
}
