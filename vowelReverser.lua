choice = "Hello world!"
tVowels = {"a","e","i","o","u","A","E","I","O","U"}
tReadVowels = {}
tPositions = {}

function string.insert(position, string1, string2)
  return string1:sub(1, position-1) .. string2 .. string1:sub(position)
end

for num0 = 1, #choice do
    local Indiced = string.sub(choice, num0, num0)
    for num1 = 1, #tVowels do
        if Indiced == tVowels[num1] then
            table.insert(tReadVowels, Indiced)
            table.insert(tPositions, num1)
            poppedChoice = string.gsub(choice, Indiced, " ")
        end
    end
	print(poppedChoice)
end

function fReverser()
	local newChoice = poppedChoice
    for num3 = #tPositions, 1, -1 do
		if tReadVowels[tPositions[num3]] then
			string.insert(tPositions[num3], newChoice, tReadVowels[tPositions[num3]])
		end
	end
	print(tostring(choice).." | "..tostring(poppedChoice).." | "..tostring(newChoice).." | "..tostring(#tPositions)..","..tostring(tReadVowels[tPositions[0]]))
end

fReverser()

--[[
KNOWN BUGS:
1. poppedChoice = string.gsub(choice, Indiced, " ") Does not save each of the letters as their own separate instance, but rather every instance of a vowel as one single instance. AKA Hello World would have 1 o and 1 e by that standard.
2. the fReverser() function doesn't reverse shit. Fix it.
3. string.insert() function works circumstantially. Update it.
---]]