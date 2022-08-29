function recipe_TCPianoS_AD(items, result, player)
	name = "TCPianoS_AD"
	first = string.byte(string.sub(name, -2))
	last = string.byte(string.sub(name, -1))
	body = string.sub(name, 0,-3)
	for i = first, last do
		player:getInventory():AddItem("Tsarcraft." .. body .. string.char(i) .. string.char(last));
	end
end

function recipe_TCPianograndS_AI(items, result, player)
	name = "TCPianograndS_AI"
	first = string.byte(string.sub(name, -2))
	last = string.byte(string.sub(name, -1))
	body = string.sub(name, 0,-3)
	for i = first, last do
		player:getInventory():AddItem("Tsarcraft." .. body .. string.char(i) .. string.char(last));
	end
end

function recipe_TCDrumkitS_AB(items, result, player)
	name = "TCDrumkitS_AB"
	first = string.byte(string.sub(name, -2))
	last = string.byte(string.sub(name, -1))
	body = string.sub(name, 0,-3)
	for i = first, last do
		player:getInventory():AddItem("Tsarcraft." .. body .. string.char(i) .. string.char(last));
	end
end