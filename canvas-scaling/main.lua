-- Image Buffer/RenderToTexture Experiment
scale = 1
centerCanvas = 0
canvasWidth = 320
canvasHeight = 240

function love.load()
	tiles = love.graphics.newImage("assets/images/screen.png")

    canvas = love.graphics.newCanvas(cavasWidth, canvasHeight)
    canvas:setFilter("nearest", "nearest")
 
    -- Rectangle is drawn to the canvas with the regular alpha blend mode.
    love.graphics.setCanvas(canvas)
        love.graphics.clear()
        love.graphics.setBlendMode("alpha")
        love.graphics.draw(tiles, 0, 0)
    love.graphics.setCanvas()

    scale = math.floor(love.graphics.getHeight()/240)
    centerCanvas = ((love.graphics.getWidth()-(canvasWidth*scale))/2)
end
 
function love.draw()
	--love.graphics.draw(tiles, 0, 0, 0, 10, 10)
    love.graphics.draw(canvas, centerCanvas, 0, 0, scale, scale)
end