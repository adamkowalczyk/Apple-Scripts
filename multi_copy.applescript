-- copies selected files to (new) folders, siblings to the parent folder
-- accepts a comma separated list of parent folder names

display dialog "Please enter country codes to copy to. (comma separated)" default answer ""
set userInput to text returned of result
-- split input using standard delimeters
set userInputArray to words of userInput


tell application "Finder"
	repeat with theFile in selection as list
		
		set theParentFolder to container of theFile
		set the theGrandParentFolder to container of theParentFolder as text
		
		-- make new sibling folder paths
		repeat with theWord in userInputArray
			
			set theNewFolder to theGrandParentFolder & theWord
			if not (exists theNewFolder) then
				make new folder at theGrandParentFolder with properties {name:theWord}
			end if
			
			-- copy file to new location, replace if found
			-- (if non replacing, 'without' need to try catch to handle error)
			duplicate theFile as alias to theNewFolder as alias with replacing
			
		end repeat
	end repeat
end tell

