display dialog "Please enter country codes to copy to. (comma separated)" default answer ""
set userInput to text returned of result
-- split input using standard delimeters
set userInputArray to words of userInput


tell application "Finder"
	repeat with theFile in selection as list
		
		-- get the path
		set theFilePath to theFile as text
		display dialog theFilePath
		
		-- get the parent folder -works!
		set theParentFolder to container of theFile
		set theParentFolderPath to theParentFolder as text
		display dialog "parent folder: " & theParentFolderPath
		
		
		repeat with theWord in userInputArray
			set theNewPath to theParentFolderPath & theWord
			display dialog "new folder: " & theNewPath
		end repeat
		
		
	end repeat
end tell

