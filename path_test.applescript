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
		set theFilePathElementsLength to length of theFilePathElements
		log theFilePathElementsLength
		set theSubPath to items (theCCIndex + 1) thru (theFilePathElementsLength - 1) of theFilePathElements
		log theSubPath
		set theBasePath to items 1 thru (theCCIndex - 1) of theFilePathElements
		log theBasePath
		set theNewPath to theBasePath & "de" & theSubPath
		log theNewPath
		set theNewPathLength to length of theNewPath
		set theNewParentPath to items 1 thru (theNewPathLength - 1) of theNewPath as text
		set theNewFolderName to item (theNewPathLength) of theNewPath as text
		log theNewParentPath
		log theNewFolderName
		--need to check if exists first?
		make new folder at theNewParentPath with properties {name:theNewFolderName}
		--set theNewPathAlias to theNewPath as text
		--log theNewPathAlias
		-- doesn't work..  make a folder?
		--duplicate theFile as alias to theNewPathAlias as alias
		
	end tell
	set AppleScript's text item delimiters to oldDelims -- restore them
	
on error
	set AppleScript's text item delimiters to oldDelims -- restore them in case something went wrong
end try

