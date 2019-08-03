on run argv
	if (count of argv) > 0 then 
        tell application "System Events"
				tell current desktop

					if (item 1 of argv is "1") then
						
						set picture to "~/Documents/wallpapers/wallhaven-48xmg2.jpg"
					
					else if (item 1 of argv is "2") then

						set picture to "~/Documents/wallpapers/wallhaven-767749.png"

					end if
				end tell

		    end tell
	end if
end run