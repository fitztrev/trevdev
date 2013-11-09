-- Configure spotlight:
-- remove keyboard shortcut

tell application "System Preferences"
	set current pane to pane "com.apple.preference.spotlight"
end tell

tell application "System Events"
	tell application process "System Preferences"
		set theCheckbox to checkbox 1 of window "spotlight"
		tell theCheckbox
			if (its value as boolean) then click theCheckbox
		end tell
	end tell
	quit application "System Preferences"
end tell
