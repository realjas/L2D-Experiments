function love.conf(t)
	t.title         = "Image Buffer"
	t.version       = "0.10.1"

	t.window.width  = 1280
	t.window.height = 960

	t.window.fullscreen = true         -- Enable fullscreen (boolean)
	t.window.fullscreentype = "desktop" -- Choose between "desktop" fullscreen or "exclusive" fullscreen mode (string)
	t.window.vsync = true               -- Enable vertical sync (boolean)
	t.window.msaa = 0 
end
