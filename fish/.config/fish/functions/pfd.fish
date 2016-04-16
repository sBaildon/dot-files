# Return the path of the frontmost Finder window

function pfd -d "Return the path of the frontmost Finder window"
	if uname | grep Darwin > /dev/null
		osascript 2>/dev/null -e '
			tell application "Finder"
				return POSIX path of (target of window 1 as alias)
			end tell
		'
	end
end
