-- indexOf!
on list_position(this_item, this_list)
	repeat with i from 1 to the count of this_list
		if item i of this_list is this_item then return i
	end repeat
	return 0
end list_position



display dialog "enter country code" default answer ""
set theCountryCode to text returned of result

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
		set theCCIndex to my list_position(theCountryCode, theFilePathElements)
		log theCCIndex as text
		
	end tell
	set AppleScript's text item delimiters to oldDelims -- restore them
	
on error
	set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
end try

