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
1. poppedChoice = string.gsub(choice, Indiced, " ") Does not save each of the letters as their own separate instance, but rather every instance of a vowel as one single instance. AKA Hello World would have 1 o and 1 e by that standard.
2. the fReverser() function doesn't reverse shit. Fix it.
3. string.insert() function works circumstantially. Update it.
4. Make the script shorter. It is too inefficient for something this simple.
---]]