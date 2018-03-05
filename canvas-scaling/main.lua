-- Scaling a low resolution game to dynamically fill the screen
scale = 1
centerCanvas = 0
canvasWidth = 320
canvasHeight = 240

function love.load()
	image = love.graphics.newImage("assets/images/screen.png")

    --Setup canvas with "nearest neighbor" as the scaling method
    canvas = love.graphics.newCanvas(cavasWidth, canvasHeight)
    canvas:setFilter("nearest", "nearest")
 
    -- Rectangle is drawn to the canvas with the regular alpha blend mode.
    love.graphics.setCanvas(canvas)
        love.graphics.clear()
        love.graphics.setBlendMode("alpha")
        love.graphics.draw(image, 0, 0)
    love.graphics.setCanvas()

    --scale and fill the screen using the contents of the canvas
    scale = math.floor(love.graphics.getHeight()/240)
    centerCanvas = ((love.graphics.getWidth()-(canvasWidth*scale))/2)
end
 
function love.draw()
    love.graphics.draw(canvas, centerCanvas, 0, 0, scale, scale)
end