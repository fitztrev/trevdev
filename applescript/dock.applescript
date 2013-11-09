-- Configure the dock:
-- automatically hide
-- magnify on hover

tell application "System Events"
	tell dock preferences
		set properties to {autohide:true, dock size:0.25, magnification:true, magnification size:1.0}
	end tell
end tell
