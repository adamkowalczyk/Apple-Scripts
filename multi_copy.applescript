display dialog "Please enter country codes to copy to. (comma separated)" default answer ""
set userInput to text returned of result
set userInputArray to words of userInput
display dialog userInputArray

tell application "Finder"
	repeat with theFile in selection as list
		--display dialog "beep"
	end repeat
end tell