-- Configure the dock:
-- automatically hide
-- magnify on hover

tell application "System Preferences"
	set current pane to pane "com.apple.preference.dock"
end tell

tell application "System Events"
	tell dock preferences
		set properties to {autohide:true, dock size:0.5, magnification:true, magnification size:1.0}
	end tell

	tell application process "System Preferences"
		set theCheckbox to checkbox 2 of window "dock"
		tell theCheckbox
			-- Have to uncheck, then check it for some reason
			-- otherwise it just toggles it
			if (its value as boolean) then click theCheckbox
			click theCheckbox
		end tell
	end tell
	quit application "System Preferences"
end tell
