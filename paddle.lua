Paddle = Class{}


--Paddle Initialisation state
function Paddle:init(x, y, width, height)
    self.x = x
    self.y = y
    self.width = width
    self.height = height
    self.dx = 0

end


--Paddle Update
function Paddle:update(dt)

    if self.dx < 0 then
        self.x = math.max(0, self.x + self.dx*dt)
    else
        self.x = math.min(VIRTUAL_WIDTH - self.width, self.x + self.dx * dt)
    end
end


--Paddle Render
function Paddle:render()
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end

