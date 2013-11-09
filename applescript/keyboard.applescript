-- Configure the keyboard:
-- better repeat rates
-- make the function keys the default

tell application "System Preferences"
	set current pane to pane "com.apple.preference.keyboard"
end tell

tell application "System Events"
	tell tab group 1 of window "Keyboard" of process "System Preferences"
		set value of slider 1 to 6 -- Repeat delay
		set value of slider 2 to 8 -- Repeat rate
		
		set theCheckbox to checkbox "Use all F1, F2, etc. keys as standard function keys"
		tell theCheckbox
			if not (its value as boolean) then click theCheckbox
		end tell
	end tell
end tell
