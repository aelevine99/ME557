;Program written by Al Levine for Boston University ENG-ME557 Additive Manufacturing
;ONLY FOR USE WITH ENDER-3 PRINTERS

;Beginning of Program
M17						; Enable steppers
G90						; Use absolute positioning
M140 S60 				; Set bed temp
M104 S170				; Set extruder temp for bed leveling
M109 R170				; Wait for temp
G28						; Home
;1st Corner
G0 Z5					; Move head up
G0 X25 Y25 Z5			; Move to bottom left corner
G0 Z0					; Move head down
M300 S440 P001			; Play a tone for 1ms
M0 Click to continue	; Pause for tramming
M73 P25					; Set progress to 25 percent
;2nd Corner
G0 Z5					; Move head up
G0 X210 Y25 Z5			; Move to bottom right corner
G0 Z0					; Move head down
M300 S440 P001			; Play a tone for 1ms
M0 Click to continue	; Pause for tramming
M73 P50					; Set progress to 50 percent
;3rd Corner
G0 Z5					; Move head up
G0 X210 Y210 Z5			; Move to top right corner
G0 Z0					; Move head down
M300 S440 P001			; Play a tone for 1ms
M0 Click to continue	; Pause for tramming
M73 P75					; Set progress to 75 percent
;4th Corner
G0 Z5					; Move head up
G0 X25 Y210 Z5			; Move to top left corner
G0 Z0					; Move head down
M300 S440 P001			; Play a tone for 1ms
M0 Click to continue	; Pause for tramming
M73 P100				; Set progress to 100 percent
;Final
G0 X100 Y100 Z15
M106 S0					; Turn-off fan
M104 S0					; Turn-off hotend
M140 S0					; Turn-off bed
;End of Gcode