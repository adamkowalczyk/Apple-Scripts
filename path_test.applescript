try
	set oldDelims to AppleScript's text item delimiters -- save their current state
	set AppleScript's text item delimiters to {":"} -- declare new delimiters
	
	
	
	
	
	tell application "Finder"
		set selectedFiles to selection as alias list
		log selectedFiles
		set theFile to item 1 of selectedFiles
		log theFile
		set theFilePath to theFile as text
		log theFilePath
		set theFilePathElements to every text item of theFilePath
		log theFilePathElements
	end tell
	set AppleScript's text item delimiters to oldDelims -- restore them
	
on error
	set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
end try