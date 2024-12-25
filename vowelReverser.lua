choice = "Hello world!"
tVowels = {"a","e","i","o","u","A","E","I","O","U"}
tStringIndiced = {}
tReadVowels = {}
tPositions = {}
--[[
function string.insert(position, string1, string2)
	return string1:sub(1, position-1) .. string2 .. string1:sub(position)
end
--]]

function string.rinsert(position, sourceString, replacementString)
	local subString = string.sub(sourceString, position, position)
	local modifiedSource = string.gsub(subString, substring, replacementString)
	return modifiedSource
end
function fReverser()
	local Indiced = string.sub(choice, num0, num0)
	for num0 = 1, #choice do
		table.insert(tStringIndiced, Indiced)
	end
	for num1 = #tStringIndiced, 1, -1 do
		for num2 = 1, #tVowels do
			if tStringIndiced[num1] == tVowels[num2] then
				table.insert(tPositions, num1)
				table.insert(tReadVowels, tStringIndiced[num1])
			end
		end
	end
end

fReverser()

--[[
KNOWN BUGS:
None to speak of right now
---]]