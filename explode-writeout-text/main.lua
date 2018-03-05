--Explode a string of text and write it out on screen

require "utils/explode"

function love.load()
	timer = 0
	resplice = 0
	display = true
	string = "This is the string that was exploded and will be displayed a word per X frames."

end

function love.update(dt)
		if display == true then
			tbl = string:explode(" ")
			string = ""
			resplice = 0
			display = false
		end

		timer = timer + 1
		if timer == 8 then
			timer = 0
			if resplice <= table.getn(tbl) then
				string = ""
			end
			for i = 1, resplice do
				if resplice > table.getn(tbl) then
					break
				end

				string = string .. " " .. tbl[i]
			end

			resplice = resplice + 1
		end
end

function love.draw()
	love.graphics.print(string, 10, 10)
end
