on run argv
	if (count of argv) > 0 then 
		tell application "System Events"

		    tell appearance preferences

			set dark mode to item 1 of argv

		    end tell

		end tell
	end if
end run